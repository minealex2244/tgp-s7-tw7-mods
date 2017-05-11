.class public Lcom/android/launcher3/home/HomeController;
.super Lcom/android/launcher3/common/stage/Stage;
.source "HomeController.java"

# interfaces
.implements Lcom/android/launcher3/common/base/controller/ControllerBase;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;
.implements Lcom/android/launcher3/LauncherModel$OnBadgeBindingCompletedLisnter;
.implements Lcom/android/launcher3/common/multiselect/MultiSelectManager$MultiSelectListener;
.implements Lcom/android/launcher3/folder/folderlock/FolderLock$FolderLockActionCallback;
.implements Lcom/android/launcher3/LauncherModel$OnRefreshLiveIconListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/home/HomeController$DialerChangeObserver;,
        Lcom/android/launcher3/home/HomeController$State;,
        Lcom/android/launcher3/home/HomeController$PendingAddArguments;
    }
.end annotation


# static fields
.field private static final BOUNCE_ANIMATION_DURATION:I = 0xc8

.field private static final BOUNCE_ANIMATION_TENSION:F = 1.3f

.field private static final ENTER_RESIZE_STATE_DELAY:I = 0xc8

.field private static final EXIT_DRAG_STATE_DELAY:I = 0x64

.field private static final EXIT_SCREEN_GRID_STATE_DELAY:I = 0xc8

.field private static final FIND_OPEN_FOLDER_DELAY:I = 0x12c

.field private static final MAP_NO_RECURSE:Z = false

.field private static final MAP_RECURSE:Z = true

.field private static final NEW_APPS_ANIMATION_INACTIVE_TIMEOUT_SECONDS:I = 0x5

.field private static final ON_ACTIVITY_RESULT_ANIMATION_DELAY:I = 0x1f4

.field private static final OPEN_FOLDER_DELAY:I = 0x1f4

.field private static final REQUEST_BIND_APPWIDGET:I = 0xb

.field static final REQUEST_CREATE_APPWIDGET:I = 0x5

.field static final REQUEST_CREATE_SHORTCUT:I = 0x1

.field static final REQUEST_PICK_APPWIDGET:I = 0x9

.field static final REQUEST_PICK_WALLPAPER:I = 0xa

.field static final REQUEST_RECONFIGURE_APPWIDGET:I = 0xc

.field private static final RUNTIME_HOME_STATE_CURRENT_SCREEN:Ljava/lang/String; = "launcher.current_screen"

.field private static final RUNTIME_HOME_STATE_PENDING_CELL_X:Ljava/lang/String; = "launcher.add_cell_x"

.field private static final RUNTIME_HOME_STATE_PENDING_CELL_Y:Ljava/lang/String; = "launcher.add_cell_y"

.field private static final RUNTIME_HOME_STATE_PENDING_COMPONENT:Ljava/lang/String; = "launcher.add_component"

.field private static final RUNTIME_HOME_STATE_PENDING_CONTAINER:Ljava/lang/String; = "launcher.add_container"

.field private static final RUNTIME_HOME_STATE_PENDING_SCREEN:Ljava/lang/String; = "launcher.add_screen"

.field private static final RUNTIME_HOME_STATE_PENDING_SPAN_X:Ljava/lang/String; = "launcher.add_span_x"

.field private static final RUNTIME_HOME_STATE_PENDING_SPAN_Y:Ljava/lang/String; = "launcher.add_span_y"

.field private static final RUNTIME_HOME_STATE_PENDING_WIDGET_ID:Ljava/lang/String; = "launcher.add_widget_id"

.field private static final RUNTIME_HOME_STATE_PENDING_WIDGET_INFO:Ljava/lang/String; = "launcher.add_widget_info"

.field private static final TAG:Ljava/lang/String; = "Launcher.HomeController"

.field private static sPendingAddItem:Lcom/android/launcher3/home/HomeController$PendingAddArguments;

.field static sSingleInstanceAppWidgetList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field static sSingleInstanceAppWidgetPackageList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mAppWidgetHost:Lcom/android/launcher3/home/LauncherAppWidgetHost;

.field mAppWidgetManager:Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;

.field private mBounceAnimation:Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;

.field private mCaptureListener:Lcom/android/launcher3/util/capture/CapturePreview$CaptureListener;

.field private mDialerChangeObserver:Lcom/android/launcher3/home/HomeController$DialerChangeObserver;

.field private mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

.field private mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

.field private mDropTargetBar:Lcom/android/launcher3/home/DropTargetBar;

.field private mEdgeLight:Lcom/android/launcher3/home/EdgeLight;

.field private mEnabledCustomLayoutAnimation:Z

.field private mExitDragStateHandler:Landroid/os/Handler;

.field private mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

.field private mFestivalPageController:Lcom/android/launcher3/home/FestivalPageController;

.field private mFindAppPositionHandler:Landroid/os/Handler;

.field private mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

.field private mHomeAnimation:Lcom/android/launcher3/home/HomeTransitionAnimation;

.field private mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

.field private mHomeCapturePreview:Lcom/android/launcher3/util/capture/CapturePreview;

.field private mHomeContainer:Lcom/android/launcher3/home/HomeContainer;

.field private mHomeDefaultIconClick:Z

.field private mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

.field private mHomePageReorder:Z

.field private mHotseat:Lcom/android/launcher3/home/Hotseat;

.field private mHotseatMoveRange:I

.field private mIsStartedTrayEventSetY:Z

.field private mMoveToAppsApproachingEnd:I

.field private mMoveToAppsApproachingStart:I

.field private mMoveToAppsPanelHeight:I

.field private mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

.field private mOverviewPanel:Lcom/android/launcher3/home/OverviewPanel;

.field private mPageIndicatorView:Landroid/view/View;

.field private mPageSnapMovingRatioOnHome:F

.field private mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

.field private mPendingAddWidgetId:I

.field private mPendingAddWidgetInfo:Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

.field private mRestoring:Z

.field private mScreenGridHelper:Lcom/android/launcher3/home/ScreenGridHelper;

.field private mScreenGridPanel:Lcom/android/launcher3/home/ScreenGridPanel;

.field private mState:Lcom/android/launcher3/home/HomeController$State;

.field private mSwipeAffordance:Lcom/android/launcher3/home/SwipeAffordance;

.field private mTmpAddItemCellCoordinates:[I

.field private mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

.field private mWaitingForResult:Z

.field private mWorkspace:Lcom/android/launcher3/home/Workspace;

.field private mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 215
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher3/home/HomeController;->sSingleInstanceAppWidgetList:Ljava/util/HashMap;

    .line 217
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher3/home/HomeController;->sSingleInstanceAppWidgetPackageList:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 123
    invoke-direct {p0}, Lcom/android/launcher3/common/stage/Stage;-><init>()V

    .line 160
    new-instance v0, Lcom/android/launcher3/home/HomeController$State;

    invoke-direct {v0, v2}, Lcom/android/launcher3/home/HomeController$State;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    .line 189
    new-instance v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-direct {v0}, Lcom/android/launcher3/common/base/item/ItemInfo;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 191
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddWidgetId:I

    .line 192
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher3/home/HomeController;->mTmpAddItemCellCoordinates:[I

    .line 195
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/home/HomeController;->mExitDragStateHandler:Landroid/os/Handler;

    .line 196
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/home/HomeController;->mFindAppPositionHandler:Landroid/os/Handler;

    .line 211
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/home/HomeController;->mDialerChangeObserver:Lcom/android/launcher3/home/HomeController$DialerChangeObserver;

    .line 223
    iput-boolean v2, p0, Lcom/android/launcher3/home/HomeController;->mEnabledCustomLayoutAnimation:Z

    .line 225
    iput-boolean v1, p0, Lcom/android/launcher3/home/HomeController;->mIsStartedTrayEventSetY:Z

    .line 228
    iput-boolean v1, p0, Lcom/android/launcher3/home/HomeController;->mHomePageReorder:Z

    .line 229
    iput-boolean v1, p0, Lcom/android/launcher3/home/HomeController;->mHomeDefaultIconClick:Z

    .line 4146
    new-instance v0, Lcom/android/launcher3/home/HomeController$32;

    invoke-direct {v0, p0}, Lcom/android/launcher3/home/HomeController$32;-><init>(Lcom/android/launcher3/home/HomeController;)V

    iput-object v0, p0, Lcom/android/launcher3/home/HomeController;->mCaptureListener:Lcom/android/launcher3/util/capture/CapturePreview$CaptureListener;

    return-void
.end method

.method static synthetic access$1000(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/home/LauncherAppWidgetHost;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeController;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mAppWidgetHost:Lcom/android/launcher3/home/LauncherAppWidgetHost;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/Launcher;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeController;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/Launcher;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeController;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/Launcher;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeController;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/home/Hotseat;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeController;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/common/stage/StageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeController;

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/common/stage/StageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeController;

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/common/stage/StageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeController;

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/Launcher;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeController;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/launcher3/home/HomeController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeController;

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeController;->changeDialerApp()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/home/HomeContainer;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeController;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mHomeContainer:Lcom/android/launcher3/home/HomeContainer;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/Launcher;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeController;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/Launcher;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeController;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/Launcher;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeController;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/home/HomeController$State;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeController;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/home/Workspace;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeController;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/common/view/DragLayer;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeController;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/common/base/item/ItemInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeController;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/launcher3/home/HomeController;IJJLandroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;
    .locals 2
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeController;
    .param p1, "x1"    # I
    .param p2, "x2"    # J
    .param p4, "x3"    # J
    .param p6, "x4"    # Landroid/appwidget/AppWidgetHostView;
    .param p7, "x5"    # Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    .prologue
    .line 123
    invoke-direct/range {p0 .. p7}, Lcom/android/launcher3/home/HomeController;->completeAddAppWidget(IJJLandroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/common/drag/DragManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeController;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    return-object v0
.end method

.method private addAppWidgetFromDrop(Lcom/android/launcher3/widget/PendingAddWidgetInfo;JJ[I[I)V
    .locals 14
    .param p1, "info"    # Lcom/android/launcher3/widget/PendingAddWidgetInfo;
    .param p2, "container"    # J
    .param p4, "screenId"    # J
    .param p6, "cell"    # [I
    .param p7, "span"    # [I

    .prologue
    .line 1958
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->resetAddInfo()V

    .line 1959
    iget-object v4, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    move-wide/from16 v0, p2

    iput-wide v0, p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->container:J

    move-wide/from16 v0, p2

    iput-wide v0, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    .line 1960
    iget-object v4, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    move-wide/from16 v0, p4

    iput-wide v0, p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->screenId:J

    move-wide/from16 v0, p4

    iput-wide v0, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    .line 1961
    iget-object v4, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->dropPos:[I

    .line 1962
    iget-object v4, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget v5, p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->minSpanX:I

    iput v5, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->minSpanX:I

    .line 1963
    iget-object v4, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget v5, p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->minSpanY:I

    iput v5, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->minSpanY:I

    .line 1965
    if-eqz p6, :cond_0

    .line 1966
    iget-object v4, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    const/4 v5, 0x0

    aget v5, p6, v5

    iput v5, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    .line 1967
    iget-object v4, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    const/4 v5, 0x1

    aget v5, p6, v5

    iput v5, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    .line 1969
    :cond_0
    if-eqz p7, :cond_1

    .line 1970
    iget-object v4, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    const/4 v5, 0x0

    aget v5, p7, v5

    iput v5, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    .line 1971
    iget-object v4, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    const/4 v5, 0x1

    aget v5, p7, v5

    iput v5, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    .line 1974
    :cond_1
    iget-object v10, p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->boundWidget:Landroid/appwidget/AppWidgetHostView;

    .line 1976
    .local v10, "hostView":Landroid/appwidget/AppWidgetHostView;
    if-eqz v10, :cond_2

    .line 1977
    invoke-virtual {v10}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetId()I

    move-result v2

    .line 1978
    .local v2, "appWidgetId":I
    iget-object v4, p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->info:Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    invoke-virtual {p0, v2, p1, v10, v4}, Lcom/android/launcher3/home/HomeController;->addAppWidgetImpl(ILcom/android/launcher3/common/base/item/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;)V

    .line 1981
    const/4 v4, 0x0

    iput-object v4, p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->boundWidget:Landroid/appwidget/AppWidgetHostView;

    .line 2008
    :goto_0
    return-void

    .line 1985
    .end local v2    # "appWidgetId":I
    :cond_2
    iget-object v4, p0, Lcom/android/launcher3/home/HomeController;->mAppWidgetHost:Lcom/android/launcher3/home/LauncherAppWidgetHost;

    invoke-virtual {v4}, Lcom/android/launcher3/home/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result v2

    .line 1986
    .restart local v2    # "appWidgetId":I
    iget-object v12, p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->bindOptions:Landroid/os/Bundle;

    .line 1988
    .local v12, "options":Landroid/os/Bundle;
    iget-object v4, p0, Lcom/android/launcher3/home/HomeController;->mAppWidgetManager:Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;

    iget-object v5, p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->info:Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    invoke-virtual {v4, v2, v5, v12}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->bindAppWidgetIdIfAllowed(ILandroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Z

    move-result v13

    .line 1990
    .local v13, "success":Z
    if-eqz v13, :cond_3

    .line 1991
    const/4 v4, 0x0

    iget-object v5, p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->info:Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    invoke-virtual {p0, v2, p1, v4, v5}, Lcom/android/launcher3/home/HomeController;->addAppWidgetImpl(ILcom/android/launcher3/common/base/item/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;)V

    .line 2005
    :goto_1
    iget-object v4, p0, Lcom/android/launcher3/home/HomeController;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    invoke-virtual {v4}, Lcom/android/launcher3/home/HomeLoader;->getItemPositionHelper()Lcom/android/launcher3/home/HomeItemPositionHelper;

    move-result-object v3

    .line 2006
    .local v3, "positionHelper":Lcom/android/launcher3/home/HomeItemPositionHelper;
    const/4 v4, 0x0

    aget v6, p6, v4

    const/4 v4, 0x1

    aget v7, p6, v4

    const/4 v4, 0x0

    aget v8, p7, v4

    const/4 v4, 0x1

    aget v9, p7, v4

    move-wide/from16 v4, p4

    invoke-virtual/range {v3 .. v9}, Lcom/android/launcher3/home/HomeItemPositionHelper;->addToPreservedPosition(JIIII)V

    goto :goto_0

    .line 1993
    .end local v3    # "positionHelper":Lcom/android/launcher3/home/HomeItemPositionHelper;
    :cond_3
    iget-object v4, p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->info:Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    iput-object v4, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddWidgetInfo:Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    .line 1994
    new-instance v11, Landroid/content/Intent;

    const-string v4, "android.appwidget.action.APPWIDGET_BIND"

    invoke-direct {v11, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1995
    .local v11, "intent":Landroid/content/Intent;
    const-string v4, "appWidgetId"

    invoke-virtual {v11, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1996
    const-string v4, "appWidgetProvider"

    iget-object v5, p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v11, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1997
    iget-object v4, p0, Lcom/android/launcher3/home/HomeController;->mAppWidgetManager:Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;

    iget-object v5, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddWidgetInfo:Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->getUser(Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;)Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v4

    const-string v5, "appWidgetProviderProfile"

    .line 1998
    invoke-virtual {v4, v11, v5}, Lcom/android/launcher3/common/compat/UserHandleCompat;->addToIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2001
    iget-object v4, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    const/16 v5, 0xb

    invoke-static {v4, v11, v5}, Lcom/android/launcher3/Utilities;->startActivityForResultSafely(Landroid/app/Activity;Landroid/content/Intent;I)V

    goto :goto_1
.end method

.method private changeDialerApp()V
    .locals 14

    .prologue
    const/4 v3, 0x1

    const/4 v10, 0x0

    .line 3891
    const/4 v5, 0x0

    .line 3893
    .local v5, "findHotseatItem":Z
    iget-object v11, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v11}, Lcom/android/launcher3/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 3895
    .local v4, "context":Landroid/content/Context;
    iget-object v11, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v11}, Lcom/android/launcher3/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "skt_phone20_settings"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-ne v11, v3, :cond_3

    .line 3896
    const-string v11, "Launcher.HomeController"

    const-string v12, "OEM -> T phone app"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3897
    new-instance v0, Landroid/content/ComponentName;

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->getCustomerDialerPackageName()Ljava/lang/String;

    move-result-object v11

    .line 3898
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->getCustomerDialerClassName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v0, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3899
    .local v0, "addToHotseatCN":Landroid/content/ComponentName;
    new-instance v1, Landroid/content/ComponentName;

    invoke-static {v4}, Lcom/android/launcher3/LauncherFeature;->getOemDialerPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    .line 3900
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->getOemDialerClassName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v1, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3910
    .local v1, "addToWorkspaceCN":Landroid/content/ComponentName;
    :goto_0
    iget-object v11, p0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v11}, Lcom/android/launcher3/home/Hotseat;->getLayout()Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildrenAllItems()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 3911
    .local v7, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    instance-of v12, v7, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v12, :cond_0

    move-object v6, v7

    .line 3914
    check-cast v6, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 3915
    .local v6, "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-virtual {v6}, Lcom/android/launcher3/common/base/item/IconInfo;->getIntent()Landroid/content/Intent;

    move-result-object v12

    if-eqz v12, :cond_0

    invoke-virtual {v6}, Lcom/android/launcher3/common/base/item/IconInfo;->getIntent()Landroid/content/Intent;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    if-eqz v12, :cond_0

    .line 3916
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v12

    .line 3917
    invoke-virtual {v6}, Lcom/android/launcher3/common/base/item/IconInfo;->getIntent()Landroid/content/Intent;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v13

    .line 3916
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 3918
    invoke-direct {p0, v6, v0}, Lcom/android/launcher3/home/HomeController;->changeItemInfo(Lcom/android/launcher3/common/base/item/IconInfo;Landroid/content/ComponentName;)V

    .line 3919
    const/4 v5, 0x1

    .line 3924
    .end local v6    # "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v7    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_1
    if-eqz v5, :cond_8

    .line 3926
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v11

    if-nez v11, :cond_4

    .line 3928
    .local v3, "checkOnlyDefaultPage":Z
    :goto_1
    iget-object v10, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v10}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v9

    .line 3930
    .local v9, "screenCount":I
    const/4 v8, 0x0

    .local v8, "screen":I
    :goto_2
    if-ge v8, v9, :cond_7

    .line 3931
    iget-object v10, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    .line 3932
    invoke-virtual {v10, v8}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v10}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v2

    .line 3933
    .local v2, "cellLayoutChildren":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    if-eqz v3, :cond_5

    iget-object v10, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v10}, Lcom/android/launcher3/home/Workspace;->getDefaultPage()I

    move-result v10

    if-eq v8, v10, :cond_5

    .line 3930
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 3902
    .end local v0    # "addToHotseatCN":Landroid/content/ComponentName;
    .end local v1    # "addToWorkspaceCN":Landroid/content/ComponentName;
    .end local v2    # "cellLayoutChildren":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    .end local v3    # "checkOnlyDefaultPage":Z
    .end local v8    # "screen":I
    .end local v9    # "screenCount":I
    :cond_3
    const-string v11, "Launcher.HomeController"

    const-string v12, "T -> OEM phone app"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3903
    new-instance v0, Landroid/content/ComponentName;

    invoke-static {v4}, Lcom/android/launcher3/LauncherFeature;->getOemDialerPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    .line 3904
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->getOemDialerClassName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v0, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3905
    .restart local v0    # "addToHotseatCN":Landroid/content/ComponentName;
    new-instance v1, Landroid/content/ComponentName;

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->getCustomerDialerPackageName()Ljava/lang/String;

    move-result-object v11

    .line 3906
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->getCustomerDialerClassName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v1, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v1    # "addToWorkspaceCN":Landroid/content/ComponentName;
    goto/16 :goto_0

    :cond_4
    move v3, v10

    .line 3926
    goto :goto_1

    .line 3936
    .restart local v2    # "cellLayoutChildren":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    .restart local v3    # "checkOnlyDefaultPage":Z
    .restart local v8    # "screen":I
    .restart local v9    # "screenCount":I
    :cond_5
    invoke-virtual {v2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildrenAllItems()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 3937
    .restart local v7    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    instance-of v11, v7, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v11, :cond_6

    move-object v6, v7

    .line 3940
    check-cast v6, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 3941
    .restart local v6    # "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-virtual {v6}, Lcom/android/launcher3/common/base/item/IconInfo;->getIntent()Landroid/content/Intent;

    move-result-object v11

    if-eqz v11, :cond_6

    invoke-virtual {v6}, Lcom/android/launcher3/common/base/item/IconInfo;->getIntent()Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    if-eqz v11, :cond_6

    .line 3942
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v11

    .line 3943
    invoke-virtual {v6}, Lcom/android/launcher3/common/base/item/IconInfo;->getIntent()Landroid/content/Intent;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v12

    .line 3942
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 3944
    invoke-direct {p0, v6, v1}, Lcom/android/launcher3/home/HomeController;->changeItemInfo(Lcom/android/launcher3/common/base/item/IconInfo;Landroid/content/ComponentName;)V

    .line 3952
    .end local v2    # "cellLayoutChildren":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    .end local v3    # "checkOnlyDefaultPage":Z
    .end local v6    # "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v7    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v8    # "screen":I
    .end local v9    # "screenCount":I
    :cond_7
    :goto_3
    return-void

    .line 3950
    :cond_8
    const-string v10, "Launcher.HomeController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " are not in the hotseat"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private changeItemInfo(Lcom/android/launcher3/common/base/item/IconInfo;Landroid/content/ComponentName;)V
    .locals 6
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/IconInfo;
    .param p2, "changeCN"    # Landroid/content/ComponentName;

    .prologue
    .line 3955
    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/HomeController;->getViewForTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    .line 3956
    .local v2, "view":Landroid/view/View;
    instance-of v3, v2, Lcom/android/launcher3/common/view/IconView;

    if-nez v3, :cond_0

    .line 3972
    :goto_0
    return-void

    .line 3960
    :cond_0
    iget-object v3, p1, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v3, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3961
    iput-object p2, p1, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    .line 3962
    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    iget-object v4, p1, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v3, p2, v4}, Lcom/android/launcher3/home/HomeLoader;->getBadgeCount(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)I

    move-result v3

    iput v3, p1, Lcom/android/launcher3/common/base/item/IconInfo;->mBadgeCount:I

    .line 3963
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/common/model/IconCache;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/launcher3/common/base/item/IconInfo;->updateIcon(Lcom/android/launcher3/common/model/IconCache;)V

    move-object v0, v2

    .line 3965
    check-cast v0, Lcom/android/launcher3/common/view/IconView;

    .line 3966
    .local v0, "iconView":Lcom/android/launcher3/common/view/IconView;
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/common/model/IconCache;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Lcom/android/launcher3/common/view/IconView;->applyFromShortcutInfo(Lcom/android/launcher3/common/base/item/IconInfo;Lcom/android/launcher3/common/model/IconCache;)V

    .line 3968
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 3969
    .local v1, "values":Landroid/content/ContentValues;
    const-string v3, "intent"

    iget-object v4, p1, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3970
    const-string v3, "title"

    iget-object v4, p1, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3971
    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    invoke-virtual {v3, v1, p1}, Lcom/android/launcher3/common/model/FavoritesUpdater;->updateItem(Landroid/content/ContentValues;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_0
.end method

.method private completeAddAppWidget(IJJLandroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;
    .locals 18
    .param p1, "appWidgetId"    # I
    .param p2, "container"    # J
    .param p4, "screenId"    # J
    .param p6, "hostView"    # Landroid/appwidget/AppWidgetHostView;
    .param p7, "appWidgetInfo"    # Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    .prologue
    .line 1807
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1808
    .local v14, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    if-nez p7, :cond_0

    .line 1809
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HomeController;->mAppWidgetManager:Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;

    .line 1810
    move/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v4

    .line 1809
    invoke-static {v2, v4}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    move-result-object p7

    .line 1813
    :cond_0
    move-object/from16 v0, p7

    iget-boolean v2, v0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->isCustomWidget:Z

    if-eqz v2, :cond_1

    .line 1814
    const/16 p1, -0x64

    .line 1818
    :cond_1
    new-instance v3, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    move-object/from16 v0, p7

    iget-object v2, v0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move/from16 v0, p1

    invoke-direct {v3, v0, v2}, Lcom/android/launcher3/home/LauncherAppWidgetInfo;-><init>(ILandroid/content/ComponentName;)V

    .line 1819
    .local v3, "launcherInfo":Lcom/android/launcher3/home/LauncherAppWidgetInfo;
    iget v2, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    iput v2, v3, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->spanX:I

    .line 1820
    iget v2, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    iput v2, v3, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->spanY:I

    .line 1821
    iget v2, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->minSpanX:I

    iput v2, v3, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->minSpanX:I

    .line 1822
    iget v2, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->minSpanY:I

    iput v2, v3, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->minSpanY:I

    .line 1823
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mAppWidgetManager:Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->getUser(Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;)Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v2

    iput-object v2, v3, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 1825
    iget v8, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    iget v9, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    move-object/from16 v2, p0

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    invoke-virtual/range {v2 .. v9}, Lcom/android/launcher3/home/HomeController;->addItemToDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJII)J

    .line 1827
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher3/home/HomeController;->mRestoring:Z

    if-nez v2, :cond_2

    .line 1828
    if-nez p6, :cond_4

    .line 1830
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mAppWidgetHost:Lcom/android/launcher3/home/LauncherAppWidgetHost;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    move/from16 v0, p1

    move-object/from16 v1, p7

    invoke-virtual {v2, v4, v0, v1}, Lcom/android/launcher3/home/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v2

    iput-object v2, v3, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 1836
    :goto_0
    iget-object v2, v3, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v2, v3}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    .line 1837
    iget-object v2, v3, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/appwidget/AppWidgetHostView;->setVisibility(I)V

    .line 1838
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->notifyWidgetSizeChanged(Lcom/android/launcher3/Launcher;)V

    .line 1840
    iget-object v5, v3, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    iget v10, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    iget v11, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    iget v12, v3, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->spanX:I

    iget v13, v3, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->spanY:I

    move-object/from16 v4, p0

    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    invoke-virtual/range {v4 .. v13}, Lcom/android/launcher3/home/HomeController;->addInScreen(Landroid/view/View;JJIIII)V

    .line 1843
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    iget-object v4, v3, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v0, p7

    invoke-virtual {v2, v4, v0}, Lcom/android/launcher3/home/HomeBindController;->addWidgetToAutoAdvanceIfNeeded(Landroid/view/View;Landroid/appwidget/AppWidgetProviderInfo;)V

    .line 1845
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/home/HomeController;->resetAddInfo()V

    .line 1847
    iget-object v2, v3, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 1849
    .local v7, "packageName":Ljava/lang/String;
    sget-object v2, Lcom/android/launcher3/home/HomeController;->sSingleInstanceAppWidgetList:Ljava/util/HashMap;

    iget-object v4, v3, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1850
    sget-object v2, Lcom/android/launcher3/home/HomeController;->sSingleInstanceAppWidgetList:Ljava/util/HashMap;

    iget-object v4, v3, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    .line 1851
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/util/LongSparseArray;

    .line 1852
    .local v16, "userMap":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v2}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-result-object v2

    iget-object v4, v3, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v2, v4}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/common/compat/UserHandleCompat;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    .line 1853
    .local v15, "profileId":Ljava/lang/Long;
    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1860
    .end local v15    # "profileId":Ljava/lang/Long;
    .end local v16    # "userMap":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    :cond_3
    :goto_1
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v5

    const-string v6, "WGAD"

    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 1862
    iget-object v2, v3, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    return-object v2

    .line 1834
    .end local v7    # "packageName":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p6

    iput-object v0, v3, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    goto/16 :goto_0

    .line 1854
    .restart local v7    # "packageName":Ljava/lang/String;
    :cond_5
    sget-object v2, Lcom/android/launcher3/home/HomeController;->sSingleInstanceAppWidgetPackageList:Ljava/util/HashMap;

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1855
    sget-object v2, Lcom/android/launcher3/home/HomeController;->sSingleInstanceAppWidgetPackageList:Ljava/util/HashMap;

    .line 1856
    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/util/LongSparseArray;

    .line 1857
    .restart local v16    # "userMap":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v2}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-result-object v2

    iget-object v4, v3, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v2, v4}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/common/compat/UserHandleCompat;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    .line 1858
    .restart local v15    # "profileId":Ljava/lang/Long;
    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_1
.end method

.method private completeAddShortcut(Landroid/content/Intent;JJII)V
    .locals 30
    .param p1, "data"    # Landroid/content/Intent;
    .param p2, "container"    # J
    .param p4, "screenId"    # J
    .param p6, "cellX"    # I
    .param p7, "cellY"    # I

    .prologue
    .line 1738
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/home/HomeController;->mTmpAddItemCellCoordinates:[I

    .line 1739
    .local v11, "cellXY":[I
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v0, v7, Lcom/android/launcher3/common/base/item/ItemInfo;->dropPos:[I

    move-object/from16 v27, v0

    .line 1740
    .local v27, "touchXY":[I
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move-wide/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/launcher3/home/HomeController;->getCellLayout(JJ)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v6

    .line 1742
    .local v6, "layout":Lcom/android/launcher3/common/base/view/CellLayout;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p1

    invoke-static {v7, v0}, Lcom/android/launcher3/home/InstallShortcutReceiver;->fromShortcutIntent(Landroid/content/Context;Landroid/content/Intent;)Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v13

    .line 1743
    .local v13, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v7, v7, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    if-nez v7, :cond_1

    .line 1802
    :cond_0
    :goto_0
    return-void

    .line 1746
    :cond_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v8, v13, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v9, v9, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    .line 1747
    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 1746
    invoke-static {v7, v8, v9}, Lcom/android/launcher3/Utilities;->hasPermissionForActivity(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1749
    const-string v7, "Launcher.HomeController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Ignoring malicious intent "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v13, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1752
    :cond_2
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/HomeController;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    invoke-virtual {v7, v13}, Lcom/android/launcher3/home/HomeBindController;->createShortcut(Lcom/android/launcher3/common/base/item/IconInfo;)Landroid/view/View;

    move-result-object v28

    .line 1756
    .local v28, "view":Landroid/view/View;
    if-ltz p6, :cond_5

    if-ltz p7, :cond_5

    .line 1757
    const/4 v7, 0x0

    aput p6, v11, v7

    .line 1758
    const/4 v7, 0x1

    aput p7, v11, v7

    .line 1759
    const/16 v25, 0x1

    .line 1761
    .local v25, "foundCellSpan":Z
    instance-of v7, v6, Lcom/android/launcher3/home/HotseatCellLayout;

    if-eqz v7, :cond_4

    .line 1762
    new-instance v24, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    invoke-direct/range {v24 .. v24}, Lcom/android/launcher3/common/drag/DropTarget$DragObject;-><init>()V

    .line 1763
    .local v24, "dragObject":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    move-object/from16 v0, v24

    iput-object v13, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    .line 1765
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v7}, Lcom/android/launcher3/home/Hotseat;->getDragController()Lcom/android/launcher3/home/HotseatDragController;

    move-result-object v7

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v7, v11, v0, v1}, Lcom/android/launcher3/home/HotseatDragController;->createUserFolderIfNecessary([ILandroid/view/View;Lcom/android/launcher3/common/drag/DropTarget$DragObject;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1769
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v7}, Lcom/android/launcher3/home/Hotseat;->getDragController()Lcom/android/launcher3/home/HotseatDragController;

    move-result-object v7

    move-object/from16 v0, v24

    invoke-virtual {v7, v11, v0}, Lcom/android/launcher3/home/HotseatDragController;->addToExistingFolderIfNecessary([ILcom/android/launcher3/common/drag/DropTarget$DragObject;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1792
    .end local v24    # "dragObject":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    :cond_3
    :goto_1
    if-nez v25, :cond_8

    .line 1793
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/home/HomeController;->showOutOfSpaceMessage()V

    goto :goto_0

    .line 1773
    :cond_4
    new-instance v24, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    invoke-direct/range {v24 .. v24}, Lcom/android/launcher3/common/drag/DropTarget$DragObject;-><init>()V

    .line 1774
    .restart local v24    # "dragObject":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    move-object/from16 v0, v24

    iput-object v13, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    .line 1776
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v7}, Lcom/android/launcher3/home/Workspace;->getDragController()Lcom/android/launcher3/home/WorkspaceDragController;

    move-result-object v7

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v7, v11, v0, v1}, Lcom/android/launcher3/home/WorkspaceDragController;->createUserFolderIfNecessary([ILandroid/view/View;Lcom/android/launcher3/common/drag/DropTarget$DragObject;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1780
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v7}, Lcom/android/launcher3/home/Workspace;->getDragController()Lcom/android/launcher3/home/WorkspaceDragController;

    move-result-object v7

    move-object/from16 v0, v24

    invoke-virtual {v7, v11, v0}, Lcom/android/launcher3/home/WorkspaceDragController;->addToExistingFolderIfNecessary([ILcom/android/launcher3/common/drag/DropTarget$DragObject;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto/16 :goto_0

    .line 1784
    .end local v24    # "dragObject":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .end local v25    # "foundCellSpan":Z
    :cond_5
    if-eqz v27, :cond_7

    .line 1786
    const/4 v7, 0x0

    aget v7, v27, v7

    const/4 v8, 0x1

    aget v8, v27, v8

    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-virtual/range {v6 .. v11}, Lcom/android/launcher3/common/base/view/CellLayout;->findNearestVacantArea(IIII[I)[I

    move-result-object v26

    .line 1787
    .local v26, "result":[I
    if-eqz v26, :cond_6

    const/16 v25, 0x1

    .line 1788
    .restart local v25    # "foundCellSpan":Z
    :goto_2
    goto :goto_1

    .line 1787
    .end local v25    # "foundCellSpan":Z
    :cond_6
    const/16 v25, 0x0

    goto :goto_2

    .line 1789
    .end local v26    # "result":[I
    :cond_7
    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-virtual {v6, v11, v7, v8}, Lcom/android/launcher3/common/base/view/CellLayout;->findCellForSpan([III)Z

    move-result v25

    .restart local v25    # "foundCellSpan":Z
    goto :goto_1

    .line 1797
    :cond_8
    const/4 v7, 0x0

    aget v18, v11, v7

    const/4 v7, 0x1

    aget v19, v11, v7

    move-object/from16 v12, p0

    move-wide/from16 v14, p2

    move-wide/from16 v16, p4

    invoke-virtual/range {v12 .. v19}, Lcom/android/launcher3/home/HomeController;->addItemToDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJII)J

    .line 1799
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/launcher3/home/HomeController;->mRestoring:Z

    if-nez v7, :cond_0

    .line 1800
    const/4 v7, 0x0

    aget v20, v11, v7

    const/4 v7, 0x1

    aget v21, v11, v7

    const/16 v22, 0x1

    const/16 v23, 0x1

    move-object/from16 v14, p0

    move-object/from16 v15, v28

    move-wide/from16 v16, p2

    move-wide/from16 v18, p4

    invoke-virtual/range {v14 .. v23}, Lcom/android/launcher3/home/HomeController;->addInScreen(Landroid/view/View;JJIIII)V

    goto/16 :goto_0
.end method

.method private completeRestoreAppWidget(I)V
    .locals 4
    .param p1, "appWidgetId"    # I

    .prologue
    .line 2019
    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/HomeController;->getWidgetForAppWidgetId(I)Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    move-result-object v1

    .line 2020
    .local v1, "view":Lcom/android/launcher3/home/LauncherAppWidgetHostView;
    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/android/launcher3/home/PendingAppWidgetHostView;

    if-nez v2, :cond_1

    .line 2021
    :cond_0
    const-string v2, "Launcher.HomeController"

    const-string v3, "Widget update called, when the widget no longer exists."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2030
    :goto_0
    return-void

    .line 2025
    :cond_1
    invoke-virtual {v1}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    .line 2026
    .local v0, "info":Lcom/android/launcher3/home/LauncherAppWidgetInfo;
    const/4 v2, 0x0

    iput v2, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->restoreStatus:I

    .line 2028
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->reinflateWidgetsIfNecessary()V

    .line 2029
    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/HomeController;->updateItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_0
.end method

.method private completeTwoStageWidgetDrop(II)V
    .locals 12
    .param p1, "resultCode"    # I
    .param p2, "appWidgetId"    # I

    .prologue
    .line 1699
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v10, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-virtual {v0, v10, v11}, Lcom/android/launcher3/home/Workspace;->getScreenWithId(J)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v2

    .line 1700
    .local v2, "cellLayout":Lcom/android/launcher3/common/base/view/CellLayout;
    const/4 v4, 0x0

    .line 1701
    .local v4, "onCompleteRunnable":Ljava/lang/Runnable;
    const/4 v5, 0x0

    .line 1703
    .local v5, "animationType":I
    const/4 v6, 0x0

    .line 1704
    .local v6, "boundWidget":Landroid/appwidget/AppWidgetHostView;
    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    .line 1705
    const/4 v5, 0x3

    .line 1706
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mAppWidgetHost:Lcom/android/launcher3/home/LauncherAppWidgetHost;

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddWidgetInfo:Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    invoke-virtual {v0, v1, p2, v3}, Lcom/android/launcher3/home/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v8

    .line 1708
    .local v8, "hostView":Landroid/appwidget/AppWidgetHostView;
    move-object v6, v8

    .line 1709
    new-instance v4, Lcom/android/launcher3/home/HomeController$7;

    .end local v4    # "onCompleteRunnable":Ljava/lang/Runnable;
    invoke-direct {v4, p0, p2, v8, v2}, Lcom/android/launcher3/home/HomeController$7;-><init>(Lcom/android/launcher3/home/HomeController;ILandroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/common/base/view/CellLayout;)V

    .line 1726
    .end local v8    # "hostView":Landroid/appwidget/AppWidgetHostView;
    .restart local v4    # "onCompleteRunnable":Ljava/lang/Runnable;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/view/DragLayer;->getAnimatedView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1727
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->getDragController()Lcom/android/launcher3/home/WorkspaceDragController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 1728
    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/common/view/DragLayer;->getAnimatedView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/drag/DragView;

    const/4 v7, 0x1

    .line 1727
    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/home/WorkspaceDragController;->animateWidgetDrop(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/drag/DragView;Ljava/lang/Runnable;ILandroid/view/View;Z)V

    .line 1734
    :cond_1
    :goto_1
    return-void

    .line 1721
    :cond_2
    if-nez p1, :cond_0

    .line 1722
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mAppWidgetHost:Lcom/android/launcher3/home/LauncherAppWidgetHost;

    invoke-virtual {v0, p2}, Lcom/android/launcher3/home/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    .line 1723
    const/4 v5, 0x4

    goto :goto_0

    .line 1730
    :cond_3
    if-eqz v4, :cond_1

    .line 1732
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    goto :goto_1
.end method

.method private createFolder()V
    .locals 18

    .prologue
    .line 3670
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/home/HomeController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v13}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->getCheckedAppsViewList()Ljava/util/ArrayList;

    move-result-object v2

    .line 3671
    .local v2, "appsViewList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_0

    .line 3672
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/launcher3/home/HomeController;->getTargetView(Ljava/util/ArrayList;)Landroid/view/View;

    move-result-object v10

    .line 3673
    .local v10, "targetView":Landroid/view/View;
    if-nez v10, :cond_1

    .line 3674
    const-string v13, "Launcher.HomeController"

    const-string v14, "onClickCreateFolder : targetView is null"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3734
    .end local v10    # "targetView":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 3677
    .restart local v10    # "targetView":Landroid/view/View;
    :cond_1
    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 3678
    .local v9, "targetItem":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    invoke-interface {v13}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 3680
    .local v8, "targetCellLayout":Lcom/android/launcher3/common/base/view/CellLayout;
    if-eqz v9, :cond_9

    .line 3681
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v13}, Lcom/android/launcher3/Launcher;->isFolderStage()Z

    move-result v13

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v13}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0b0026

    .line 3682
    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 3684
    .local v3, "delayToOpenFolder":I
    :goto_1
    iget-wide v14, v9, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    const-wide/16 v16, -0x65

    cmp-long v13, v14, v16

    if-nez v13, :cond_3

    const/4 v5, 0x1

    .line 3685
    .local v5, "isHotseat":Z
    :goto_2
    if-eqz v5, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v13}, Lcom/android/launcher3/home/Workspace;->getNextPage()I

    move-result v11

    .line 3689
    .local v11, "toPage":I
    :goto_3
    if-eqz v5, :cond_5

    .line 3690
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v13, v10}, Lcom/android/launcher3/home/Hotseat;->setTargetView(Landroid/view/View;)V

    .line 3694
    :goto_4
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/launcher3/home/HomeController;->removeCheckedAppView(Ljava/util/ArrayList;)V

    .line 3697
    if-eqz v5, :cond_6

    .line 3698
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v13}, Lcom/android/launcher3/home/Hotseat;->getDragController()Lcom/android/launcher3/home/HotseatDragController;

    move-result-object v13

    invoke-virtual {v13, v8, v9}, Lcom/android/launcher3/home/HotseatDragController;->addFolder(Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/base/item/IconInfo;)Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v4

    .line 3704
    .local v4, "folder":Lcom/android/launcher3/folder/view/FolderIconView;
    :goto_5
    const/4 v13, 0x4

    invoke-virtual {v4, v13}, Lcom/android/launcher3/folder/view/FolderIconView;->setVisibility(I)V

    .line 3706
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 3707
    .local v7, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    .line 3708
    .local v12, "view":Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 3709
    .local v6, "item":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 3682
    .end local v3    # "delayToOpenFolder":I
    .end local v4    # "folder":Lcom/android/launcher3/folder/view/FolderIconView;
    .end local v5    # "isHotseat":Z
    .end local v6    # "item":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v7    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    .end local v11    # "toPage":I
    .end local v12    # "view":Landroid/view/View;
    :cond_2
    const/16 v3, 0x1f4

    goto :goto_1

    .line 3684
    .restart local v3    # "delayToOpenFolder":I
    :cond_3
    const/4 v5, 0x0

    goto :goto_2

    .line 3685
    .restart local v5    # "isHotseat":Z
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-wide v14, v9, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    .line 3686
    invoke-virtual {v13, v14, v15}, Lcom/android/launcher3/home/Workspace;->getPageIndexForScreenId(J)I

    move-result v11

    goto :goto_3

    .line 3692
    .restart local v11    # "toPage":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v13, v10}, Lcom/android/launcher3/home/Workspace;->setTargetView(Landroid/view/View;)V

    goto :goto_4

    .line 3700
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v13}, Lcom/android/launcher3/home/Workspace;->getDragController()Lcom/android/launcher3/home/WorkspaceDragController;

    move-result-object v13

    invoke-virtual {v13, v8, v9}, Lcom/android/launcher3/home/WorkspaceDragController;->addFolder(Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/base/item/IconInfo;)Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v4

    .restart local v4    # "folder":Lcom/android/launcher3/folder/view/FolderIconView;
    goto :goto_5

    .line 3711
    .restart local v7    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    :cond_7
    invoke-virtual {v4, v7}, Lcom/android/launcher3/folder/view/FolderIconView;->addItems(Ljava/util/ArrayList;)V

    .line 3713
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v13}, Lcom/android/launcher3/home/Workspace;->getNextPage()I

    move-result v13

    if-eq v11, v13, :cond_8

    .line 3714
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v13, v11}, Lcom/android/launcher3/home/Workspace;->snapToPage(I)V

    .line 3717
    :cond_8
    new-instance v13, Landroid/os/Handler;

    invoke-direct {v13}, Landroid/os/Handler;-><init>()V

    new-instance v14, Lcom/android/launcher3/home/HomeController$29;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v4}, Lcom/android/launcher3/home/HomeController$29;-><init>(Lcom/android/launcher3/home/HomeController;Lcom/android/launcher3/folder/view/FolderIconView;)V

    int-to-long v0, v3

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v13, v14, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 3731
    .end local v3    # "delayToOpenFolder":I
    .end local v4    # "folder":Lcom/android/launcher3/folder/view/FolderIconView;
    .end local v5    # "isHotseat":Z
    .end local v7    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    .end local v11    # "toPage":I
    :cond_9
    const-string v13, "Launcher.HomeController"

    const-string v14, "onClickCreateFolder : app info is null"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private ensurePendingDropLayoutExists(J)J
    .locals 3
    .param p1, "screenId"    # J

    .prologue
    .line 1687
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1, p1, p2}, Lcom/android/launcher3/home/Workspace;->getScreenWithId(J)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    .line 1688
    .local v0, "dropLayout":Lcom/android/launcher3/common/base/view/CellLayout;
    if-nez v0, :cond_0

    .line 1691
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->addExtraEmptyScreen()Z

    .line 1692
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->commitExtraEmptyScreen()J

    move-result-wide p1

    .line 1694
    .end local p1    # "screenId":J
    :cond_0
    return-wide p1
.end method

.method private enterNormalState(ZLjava/lang/Runnable;Z)V
    .locals 7
    .param p1, "animated"    # Z
    .param p2, "onCompleteRunnable"    # Ljava/lang/Runnable;
    .param p3, "forced"    # Z

    .prologue
    const/4 v6, 0x1

    .line 923
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->isHomeStage()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    # invokes: Lcom/android/launcher3/home/HomeController$State;->equal(I)Z
    invoke-static {v2, v6}, Lcom/android/launcher3/home/HomeController$State;->access$000(Lcom/android/launcher3/home/HomeController$State;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 948
    :cond_0
    :goto_0
    return-void

    .line 927
    :cond_1
    new-instance v0, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v0}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    .line 928
    .local v0, "data":Lcom/android/launcher3/common/stage/StageEntry;
    iput-boolean p1, v0, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    .line 929
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    # invokes: Lcom/android/launcher3/home/HomeController$State;->get()I
    invoke-static {v2}, Lcom/android/launcher3/home/HomeController$State;->access$200(Lcom/android/launcher3/home/HomeController$State;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/launcher3/common/stage/StageEntry;->setInternalStateFrom(I)V

    .line 930
    invoke-virtual {v0, v6}, Lcom/android/launcher3/common/stage/StageEntry;->setInternalStateTo(I)V

    .line 931
    invoke-virtual {v0, p2}, Lcom/android/launcher3/common/stage/StageEntry;->addOnCompleteRunnableCallBack(Ljava/lang/Runnable;)V

    .line 932
    if-nez p3, :cond_2

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->isHomeStage()Z

    move-result v2

    if-nez v2, :cond_2

    .line 933
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 934
    .local v1, "res":Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v2

    const v3, 0x7f08017f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0800ea

    .line 935
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "2"

    .line 934
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/launcher3/common/stage/StageManager;->finishAllStage(Lcom/android/launcher3/common/stage/StageEntry;)V

    .line 942
    .end local v1    # "res":Landroid/content/res/Resources;
    :goto_1
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    invoke-virtual {v2, v6}, Lcom/android/launcher3/home/HomeBindController;->setUserPresent(Z)V

    .line 943
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeBindController;->updateAutoAdvanceState()V

    .line 945
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportQuickOption()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/common/drag/DragManager;->isQuickOptionShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 946
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/common/drag/DragManager;->enableQuickOptionView()V

    goto :goto_0

    .line 938
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Lcom/android/launcher3/common/stage/StageManager;->switchInternalState(Lcom/android/launcher3/common/stage/Stage;Lcom/android/launcher3/common/stage/StageEntry;)V

    goto :goto_1
.end method

.method private exitScreenGridStateDelayed(I)V
    .locals 4
    .param p1, "delay"    # I

    .prologue
    .line 3851
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    const/4 v1, 0x5

    # invokes: Lcom/android/launcher3/home/HomeController$State;->equal(I)Z
    invoke-static {v0, v1}, Lcom/android/launcher3/home/HomeController$State;->access$000(Lcom/android/launcher3/home/HomeController$State;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3871
    :goto_0
    return-void

    .line 3855
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/launcher3/home/HomeController$30;

    invoke-direct {v1, p0}, Lcom/android/launcher3/home/HomeController$30;-><init>(Lcom/android/launcher3/home/HomeController;)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private findAppInFolder(Landroid/view/View;Landroid/content/ComponentName;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 4311
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/folder/FolderInfo;

    .line 4312
    .local v1, "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    const/4 v3, 0x0

    .line 4313
    .local v3, "needToScrollPage":Z
    iget-wide v4, v1, Lcom/android/launcher3/folder/FolderInfo;->container:J

    const-wide/16 v6, -0x64

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    .line 4314
    invoke-virtual {v4}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v4

    iget-object v5, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-wide v6, v1, Lcom/android/launcher3/folder/FolderInfo;->screenId:J

    invoke-virtual {v5, v6, v7}, Lcom/android/launcher3/home/Workspace;->getPageIndexForScreenId(J)I

    move-result v5

    if-eq v4, v5, :cond_0

    .line 4315
    const/4 v3, 0x1

    .line 4316
    iget-object v4, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-wide v6, v1, Lcom/android/launcher3/folder/FolderInfo;->screenId:J

    invoke-virtual {v4, v6, v7}, Lcom/android/launcher3/home/Workspace;->snapToScreenId(J)V

    .line 4318
    :cond_0
    iget-object v4, v1, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 4319
    .local v2, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-virtual {v2}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4320
    new-instance v0, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v0}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    .line 4321
    .local v0, "data":Lcom/android/launcher3/common/stage/StageEntry;
    const-string v4, "KEY_FOLDER_ICON_VIEW"

    invoke-virtual {v0, v4, p1}, Lcom/android/launcher3/common/stage/StageEntry;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4322
    const-string v4, "KEY_FOLDER_ICON_APPSEARCHED"

    invoke-virtual {v0, v4, v2}, Lcom/android/launcher3/common/stage/StageEntry;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4323
    iget-object v7, p0, Lcom/android/launcher3/home/HomeController;->mFindAppPositionHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/launcher3/home/HomeController$33;

    invoke-direct {v8, p0, v0}, Lcom/android/launcher3/home/HomeController$33;-><init>(Lcom/android/launcher3/home/HomeController;Lcom/android/launcher3/common/stage/StageEntry;)V

    if-eqz v3, :cond_2

    const-wide/16 v4, 0x3b6

    :goto_1
    invoke-virtual {v7, v8, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    const-wide/16 v4, 0x12c

    goto :goto_1

    .line 4332
    .end local v0    # "data":Lcom/android/launcher3/common/stage/StageEntry;
    .end local v2    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_3
    return-void
.end method

.method private findSearchedApp(Landroid/content/ComponentName;)V
    .locals 6
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 4290
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v2, p1}, Lcom/android/launcher3/home/Workspace;->getIconView(Landroid/content/ComponentName;)Landroid/view/View;

    move-result-object v1

    .line 4291
    .local v1, "view":Landroid/view/View;
    if-nez v1, :cond_0

    .line 4292
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v2, p1}, Lcom/android/launcher3/home/Hotseat;->getIconView(Landroid/content/ComponentName;)Landroid/view/View;

    move-result-object v1

    .line 4295
    :cond_0
    if-nez v1, :cond_2

    .line 4308
    :cond_1
    :goto_0
    return-void

    .line 4299
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v2, :cond_4

    .line 4300
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 4301
    .local v0, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    iget-wide v2, v0, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    const-wide/16 v4, -0x64

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 4302
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-wide v4, v0, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    invoke-virtual {v2, v4, v5}, Lcom/android/launcher3/home/Workspace;->snapToScreenId(J)V

    .line 4304
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/launcher3/home/HomeController;->startBounceAnimationForSearchedApp(Landroid/view/View;)V

    goto :goto_0

    .line 4305
    .end local v0    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v2, :cond_1

    .line 4306
    invoke-direct {p0, v1, p1}, Lcom/android/launcher3/home/HomeController;->findAppInFolder(Landroid/view/View;Landroid/content/ComponentName;)V

    goto :goto_0
.end method

.method private getAdjustedInternalState(I)I
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 793
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    # invokes: Lcom/android/launcher3/home/HomeController$State;->get()I
    invoke-static {v0}, Lcom/android/launcher3/home/HomeController$State;->access$200(Lcom/android/launcher3/home/HomeController$State;)I

    move-result p1

    .end local p1    # "value":I
    :cond_0
    return p1
.end method

.method private getAllCellLayoutChildren()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/view/CellLayoutChildren;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2184
    .local v0, "childrenLayouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/view/CellLayoutChildren;>;"
    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v2

    .line 2185
    .local v2, "screenCount":I
    const/4 v1, 0x0

    .local v1, "screen":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 2186
    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v3, v1}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v3}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2185
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2188
    :cond_0
    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    if-eqz v3, :cond_1

    .line 2189
    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v3}, Lcom/android/launcher3/home/Hotseat;->getLayout()Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2191
    :cond_1
    return-object v0
.end method

.method private getFirstMatch(Lcom/android/launcher3/common/base/item/ItemOperator;)Landroid/view/View;
    .locals 3
    .param p1, "operator"    # Lcom/android/launcher3/common/base/item/ItemOperator;

    .prologue
    const/4 v2, 0x0

    .line 2127
    const/4 v1, 0x1

    new-array v0, v1, [Landroid/view/View;

    .line 2128
    .local v0, "value":[Landroid/view/View;
    new-instance v1, Lcom/android/launcher3/home/HomeController$15;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/launcher3/home/HomeController$15;-><init>(Lcom/android/launcher3/home/HomeController;Lcom/android/launcher3/common/base/item/ItemOperator;[Landroid/view/View;)V

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/home/HomeController;->mapOverItems(ZLcom/android/launcher3/common/base/item/ItemOperator;)V

    .line 2138
    aget-object v1, v0, v2

    return-object v1
.end method

.method private getTargetView(Ljava/util/ArrayList;)Landroid/view/View;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 3737
    .local p1, "appsViewList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/16 v17, 0x1

    .line 3738
    .local v17, "isItemInFolder":Z
    const/4 v5, 0x0

    .line 3739
    .local v5, "targetView":Landroid/view/View;
    const/16 v19, 0x0

    .line 3741
    .local v19, "targetItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v16, v4, -0x1

    .local v16, "i":I
    :goto_0
    if-ltz v16, :cond_0

    .line 3742
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "targetView":Landroid/view/View;
    check-cast v5, Landroid/view/View;

    .line 3743
    .restart local v5    # "targetView":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v19

    .end local v19    # "targetItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    check-cast v19, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 3744
    .restart local v19    # "targetItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/HomeController;->isItemInFolder(Lcom/android/launcher3/common/base/item/ItemInfo;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 3745
    const/16 v17, 0x0

    .line 3750
    :cond_0
    if-eqz v17, :cond_1

    .line 3751
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/HomeController;->removeHomeItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 3753
    const/4 v4, 0x2

    new-array v14, v4, [I

    .line 3754
    .local v14, "cellXY":[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/launcher3/home/HomeController;->findEmptyCell([I)J

    move-result-wide v20

    .line 3756
    .local v20, "screenId":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-wide/from16 v0, v20

    invoke-virtual {v4, v0, v1}, Lcom/android/launcher3/home/Workspace;->getScreenWithId(J)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v15

    .line 3757
    .local v15, "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    const-wide/16 v6, -0x64

    move-object/from16 v0, v19

    iput-wide v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    .line 3759
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HomeController;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    check-cast v19, Lcom/android/launcher3/common/base/item/IconInfo;

    .end local v19    # "targetItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object/from16 v0, v19

    invoke-virtual {v4, v15, v0}, Lcom/android/launcher3/home/HomeBindController;->createShortcut(Landroid/view/ViewGroup;Lcom/android/launcher3/common/base/item/IconInfo;)Landroid/view/View;

    move-result-object v5

    .line 3760
    if-eqz v5, :cond_1

    .line 3761
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 3762
    .local v18, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    const/4 v4, 0x0

    aget v4, v14, v4

    move-object/from16 v0, v18

    iput v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    .line 3763
    const/4 v4, 0x1

    aget v4, v14, v4

    move-object/from16 v0, v18

    iput v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    .line 3764
    move-wide/from16 v0, v20

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    .line 3766
    const-wide/16 v6, -0x64

    move-object/from16 v0, v18

    iget-wide v8, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    move-object/from16 v0, v18

    iget v10, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    move-object/from16 v0, v18

    iget v11, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    move-object/from16 v0, v18

    iget v12, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move-object/from16 v0, v18

    iget v13, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v13}, Lcom/android/launcher3/home/HomeController;->addInScreen(Landroid/view/View;JJIIII)V

    .line 3771
    .end local v14    # "cellXY":[I
    .end local v15    # "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v18    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v20    # "screenId":J
    :cond_1
    return-object v5

    .line 3741
    .restart local v19    # "targetItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_2
    add-int/lit8 v16, v16, -0x1

    goto/16 :goto_0
.end method

.method private getWorkspaceAndHotseatCellLayouts()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/view/CellLayout;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2059
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2060
    .local v0, "layouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/view/CellLayout;>;"
    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v2

    .line 2061
    .local v2, "screenCount":I
    const/4 v1, 0x0

    .local v1, "screen":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 2062
    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v3, v1}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2061
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2065
    :cond_0
    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    if-eqz v3, :cond_1

    .line 2066
    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v3}, Lcom/android/launcher3/home/Hotseat;->getLayout()Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2068
    :cond_1
    return-object v0
.end method

.method private mapOverItems(ZLcom/android/launcher3/common/base/item/ItemOperator;)V
    .locals 12
    .param p1, "recurse"    # Z
    .param p2, "op"    # Lcom/android/launcher3/common/base/item/ItemOperator;

    .prologue
    .line 2148
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeController;->getAllCellLayoutChildren()Ljava/util/ArrayList;

    move-result-object v2

    .line 2149
    .local v2, "containers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/view/CellLayoutChildren;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    .line 2151
    .local v1, "container":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v7

    .line 2152
    .local v7, "itemCount":I
    const/4 v8, 0x0

    .local v8, "itemIdx":I
    :goto_0
    if-ge v8, v7, :cond_0

    .line 2153
    invoke-virtual {v1, v8}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2154
    .local v6, "item":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    instance-of v10, v10, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v10, :cond_4

    .line 2155
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 2156
    .local v5, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    if-eqz p1, :cond_3

    instance-of v10, v5, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v10, :cond_3

    instance-of v10, v6, Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v10, :cond_3

    move-object v3, v6

    .line 2157
    check-cast v3, Lcom/android/launcher3/folder/view/FolderIconView;

    .line 2158
    .local v3, "folder":Lcom/android/launcher3/folder/view/FolderIconView;
    invoke-virtual {v3}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/launcher3/folder/view/FolderView;->getItemsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v4

    .line 2160
    .local v4, "folderChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2161
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    check-cast v5, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 2162
    .restart local v5    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    invoke-interface {p2, v5, v0, v3}, Lcom/android/launcher3/common/base/item/ItemOperator;->evaluate(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 2174
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "container":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    .end local v3    # "folder":Lcom/android/launcher3/folder/view/FolderIconView;
    .end local v4    # "folderChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v5    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v6    # "item":Landroid/view/View;
    .end local v7    # "itemCount":I
    .end local v8    # "itemIdx":I
    :cond_2
    return-void

    .line 2167
    .restart local v1    # "container":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    .restart local v5    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .restart local v6    # "item":Landroid/view/View;
    .restart local v7    # "itemCount":I
    .restart local v8    # "itemIdx":I
    :cond_3
    const/4 v10, 0x0

    invoke-interface {p2, v5, v6, v10}, Lcom/android/launcher3/common/base/item/ItemOperator;->evaluate(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;Landroid/view/View;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 2152
    .end local v5    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method

.method private preparePendingAddArgs(ILandroid/content/Intent;ILcom/android/launcher3/common/base/item/ItemInfo;)Lcom/android/launcher3/home/HomeController$PendingAddArguments;
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "data"    # Landroid/content/Intent;
    .param p3, "appWidgetId"    # I
    .param p4, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 1675
    new-instance v0, Lcom/android/launcher3/home/HomeController$PendingAddArguments;

    invoke-direct {v0}, Lcom/android/launcher3/home/HomeController$PendingAddArguments;-><init>()V

    .line 1676
    .local v0, "args":Lcom/android/launcher3/home/HomeController$PendingAddArguments;
    iput p1, v0, Lcom/android/launcher3/home/HomeController$PendingAddArguments;->requestCode:I

    .line 1677
    iput-object p2, v0, Lcom/android/launcher3/home/HomeController$PendingAddArguments;->intent:Landroid/content/Intent;

    .line 1678
    iget-wide v2, p4, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    iput-wide v2, v0, Lcom/android/launcher3/home/HomeController$PendingAddArguments;->container:J

    .line 1679
    iget-wide v2, p4, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    iput-wide v2, v0, Lcom/android/launcher3/home/HomeController$PendingAddArguments;->screenId:J

    .line 1680
    iget v1, p4, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    iput v1, v0, Lcom/android/launcher3/home/HomeController$PendingAddArguments;->cellX:I

    .line 1681
    iget v1, p4, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    iput v1, v0, Lcom/android/launcher3/home/HomeController$PendingAddArguments;->cellY:I

    .line 1682
    iput p3, v0, Lcom/android/launcher3/home/HomeController$PendingAddArguments;->appWidgetId:I

    .line 1683
    return-object v0
.end method

.method private processShortcutFromDrop(Landroid/content/ComponentName;JJ[I)V
    .locals 4
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "container"    # J
    .param p4, "screenId"    # J
    .param p6, "cell"    # [I

    .prologue
    const/4 v3, 0x1

    .line 1940
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->resetAddInfo()V

    .line 1941
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iput-wide p2, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    .line 1942
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iput-wide p4, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    .line 1943
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->dropPos:[I

    .line 1944
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iput-object p1, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    .line 1946
    if-eqz p6, :cond_0

    .line 1947
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    const/4 v2, 0x0

    aget v2, p6, v2

    iput v2, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    .line 1948
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    aget v2, p6, v3

    iput v2, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    .line 1951
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1952
    .local v0, "createShortcutIntent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1953
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1, v0, v3}, Lcom/android/launcher3/Utilities;->startActivityForResultSafely(Landroid/app/Activity;Landroid/content/Intent;I)V

    .line 1954
    return-void
.end method

.method private removeCheckedAppView(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3819
    .local p1, "appsViewList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 3820
    .local v0, "checkedApp":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 3821
    .local v1, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    if-eqz v1, :cond_0

    .line 3825
    invoke-virtual {p0, v1}, Lcom/android/launcher3/home/HomeController;->removeHomeItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_0

    .line 3827
    .end local v0    # "checkedApp":Landroid/view/View;
    .end local v1    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_1
    return-void
.end method

.method private removeShortcut()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 3625
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    .line 3626
    invoke-virtual {v2}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->getCheckedAppsViewList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3627
    .local v0, "appsViewList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 3628
    new-instance v1, Lcom/android/launcher3/home/HomeController$27;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher3/home/HomeController$27;-><init>(Lcom/android/launcher3/home/HomeController;Ljava/util/ArrayList;)V

    .line 3637
    .local v1, "r":Ljava/lang/Runnable;
    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/home/HomeController;->removeShortcutAnimation(Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    .line 3639
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v3, :cond_0

    .line 3640
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->showToast(I)V

    .line 3643
    .end local v1    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method private removeShortcutAnimation(Ljava/util/ArrayList;Ljava/lang/Runnable;)V
    .locals 11
    .param p2, "r"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "appsViewList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x2

    .line 3646
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 3647
    .local v1, "animatorSet":Landroid/animation/AnimatorSet;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 3648
    .local v3, "v":Landroid/view/View;
    new-array v5, v8, [Landroid/animation/PropertyValuesHolder;

    sget-object v6, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v7, v8, [F

    fill-array-data v7, :array_0

    .line 3649
    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    aput-object v6, v5, v9

    sget-object v6, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v7, v8, [F

    fill-array-data v7, :array_1

    .line 3650
    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    aput-object v6, v5, v10

    .line 3648
    invoke-static {v3, v5}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 3651
    .local v2, "scaleAnimator":Landroid/animation/Animator;
    const/16 v5, 0x22

    invoke-static {v5}, Lcom/android/launcher3/util/ViInterpolator;->getInterploator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3652
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 3654
    new-array v5, v10, [Landroid/animation/PropertyValuesHolder;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v8, [F

    fill-array-data v7, :array_2

    .line 3655
    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    aput-object v6, v5, v9

    .line 3654
    invoke-static {v3, v5}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 3656
    .local v0, "alphaAnimator":Landroid/animation/Animator;
    const/16 v5, 0x1e

    invoke-static {v5}, Lcom/android/launcher3/util/ViInterpolator;->getInterploator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3657
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_0

    .line 3659
    .end local v0    # "alphaAnimator":Landroid/animation/Animator;
    .end local v2    # "scaleAnimator":Landroid/animation/Animator;
    .end local v3    # "v":Landroid/view/View;
    :cond_0
    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 3660
    new-instance v4, Lcom/android/launcher3/home/HomeController$28;

    invoke-direct {v4, p0, p2}, Lcom/android/launcher3/home/HomeController$28;-><init>(Lcom/android/launcher3/home/HomeController;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3666
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 3667
    return-void

    .line 3648
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data

    .line 3649
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data

    .line 3654
    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private startBounceAnimationForSearchedApp(Landroid/view/View;)V
    .locals 1
    .param p1, "bounceView"    # Landroid/view/View;

    .prologue
    .line 4342
    if-nez p1, :cond_1

    .line 4349
    :cond_0
    :goto_0
    return-void

    .line 4345
    :cond_1
    new-instance v0, Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;

    invoke-direct {v0, p1}, Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/launcher3/home/HomeController;->mBounceAnimation:Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;

    .line 4346
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mBounceAnimation:Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;

    if-eqz v0, :cond_0

    .line 4347
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mBounceAnimation:Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;

    invoke-virtual {v0}, Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;->animate()V

    goto :goto_0
.end method

.method private startDragEmptyCell()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1279
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isSwitchingState()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1295
    :cond_0
    :goto_0
    return-void

    .line 1283
    :cond_1
    iget-object v4, p0, Lcom/android/launcher3/home/HomeController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v4}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->getCheckedAppsViewList()Ljava/util/ArrayList;

    move-result-object v0

    .line 1284
    .local v0, "appsViewList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 1285
    invoke-direct {p0, v0}, Lcom/android/launcher3/home/HomeController;->getTargetView(Ljava/util/ArrayList;)Landroid/view/View;

    move-result-object v3

    .line 1286
    .local v3, "target":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 1290
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1291
    .local v2, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    new-instance v1, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    invoke-direct {v1, v3, v2}, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;-><init>(Landroid/view/View;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 1292
    .local v1, "cellInfo":Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;
    invoke-virtual {p0, v5}, Lcom/android/launcher3/home/HomeController;->enterDragState(Z)V

    .line 1293
    const/4 v4, 0x0

    invoke-virtual {p0, v1, v4, v5}, Lcom/android/launcher3/home/HomeController;->startDrag(Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;ZZ)Z

    goto :goto_0
.end method

.method private switchInternalStateChange(II)V
    .locals 9
    .param p1, "fromState"    # I
    .param p2, "toState"    # I

    .prologue
    const/4 v8, 0x2

    const/4 v3, 0x4

    const/4 v2, 0x5

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 3106
    if-ne p1, p2, :cond_1

    .line 3212
    :cond_0
    :goto_0
    return-void

    .line 3110
    :cond_1
    if-eq p1, v7, :cond_2

    if-ne p1, v2, :cond_4

    :cond_2
    if-ne p2, v3, :cond_4

    .line 3111
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    if-eqz v0, :cond_3

    .line 3112
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    if-ne p1, v2, :cond_11

    move v0, v7

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/launcher3/home/ZeroPageController;->createCustomZeroPage(Z)V

    .line 3115
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->createCustomPlusPage()V

    .line 3116
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0, v7, v6}, Lcom/android/launcher3/home/Workspace;->setVisibilityOnCustomLayout(ZZ)V

    .line 3117
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0, v7}, Lcom/android/launcher3/home/Workspace;->showDefaultHomeIcon(Z)V

    .line 3118
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->checkAlignButtonEnabled()V

    .line 3120
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/android/launcher3/util/BlurUtils;->blurByWindowManager(ZLandroid/view/Window;)V

    .line 3123
    :cond_4
    if-ne p1, v3, :cond_7

    if-eq p2, v7, :cond_5

    if-eq p2, v8, :cond_5

    if-ne p2, v2, :cond_7

    .line 3125
    :cond_5
    if-eq p2, v7, :cond_6

    .line 3126
    invoke-virtual {p0, p2}, Lcom/android/launcher3/home/HomeController;->removeCustomPage(I)V

    .line 3129
    :cond_6
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-boolean v0, p0, Lcom/android/launcher3/home/HomeController;->mEnabledCustomLayoutAnimation:Z

    if-eqz v0, :cond_12

    if-ne p2, v7, :cond_12

    move v0, v7

    :goto_2
    invoke-virtual {v1, v6, v6, v0}, Lcom/android/launcher3/home/Workspace;->setVisibilityOnCustomLayout(ZZZ)V

    .line 3131
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-boolean v0, p0, Lcom/android/launcher3/home/HomeController;->mEnabledCustomLayoutAnimation:Z

    if-eqz v0, :cond_13

    if-ne p2, v7, :cond_13

    move v0, v7

    :goto_3
    invoke-virtual {v1, v0}, Lcom/android/launcher3/home/Workspace;->hideDefaultHomeIcon(Z)V

    .line 3135
    :cond_7
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isStartedSwipeAffordanceAnim()Z

    move-result v0

    if-eqz v0, :cond_8

    if-ne p1, v7, :cond_8

    .line 3136
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mSwipeAffordance:Lcom/android/launcher3/home/SwipeAffordance;

    invoke-virtual {v0, v7}, Lcom/android/launcher3/home/SwipeAffordance;->startCancelAnim(Z)V

    .line 3139
    :cond_8
    if-ne p2, v7, :cond_14

    .line 3140
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFestivalPage()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mFestivalPageController:Lcom/android/launcher3/home/FestivalPageController;

    if-eqz v0, :cond_9

    .line 3141
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mFestivalPageController:Lcom/android/launcher3/home/FestivalPageController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/FestivalPageController;->createCustomFestivalPage()V

    .line 3144
    :cond_9
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/android/launcher3/util/BlurUtils;->blurByWindowManager(ZLandroid/view/Window;)V

    .line 3145
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/Workspace;->setCrosshairsVisibilityChilds(I)V

    .line 3147
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    if-eqz v0, :cond_a

    if-eq p1, v3, :cond_a

    .line 3148
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    invoke-virtual {v0, v7, v6}, Lcom/android/launcher3/home/ZeroPageController;->updatePageIndicatorForZeroPage(ZZ)V

    .line 3151
    :cond_a
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mDropTargetBar:Lcom/android/launcher3/home/DropTargetBar;

    if-eqz v0, :cond_b

    .line 3152
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mDropTargetBar:Lcom/android/launcher3/home/DropTargetBar;

    invoke-virtual {v0, v6}, Lcom/android/launcher3/home/DropTargetBar;->setDropTargetBarVisible(Z)V

    .line 3155
    :cond_b
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/home/ExternalRequestQueue;->disableAndFlushExternalRequestQueue(Lcom/android/launcher3/Launcher;)V

    .line 3156
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getTopViewChangedMessageHandler()Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;

    move-result-object v0

    .line 3157
    invoke-virtual {v0, v7}, Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;->sendMessage(I)V

    .line 3164
    :cond_c
    :goto_4
    if-eq p2, v8, :cond_d

    const/4 v0, 0x6

    if-eq p2, v0, :cond_d

    if-ne p2, v2, :cond_f

    .line 3165
    :cond_d
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0, v6}, Lcom/android/launcher3/home/Workspace;->setCrosshairsVisibilityChilds(I)V

    .line 3167
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    if-eqz v0, :cond_e

    .line 3168
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    invoke-virtual {v0, v6, v6}, Lcom/android/launcher3/home/ZeroPageController;->updatePageIndicatorForZeroPage(ZZ)V

    .line 3171
    :cond_e
    if-ne p2, v2, :cond_f

    .line 3172
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mScreenGridPanel:Lcom/android/launcher3/home/ScreenGridPanel;

    if-eqz v0, :cond_f

    .line 3173
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mScreenGridPanel:Lcom/android/launcher3/home/ScreenGridPanel;

    invoke-virtual {v0}, Lcom/android/launcher3/home/ScreenGridPanel;->updateButtonStatus()V

    .line 3175
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mScreenGridPanel:Lcom/android/launcher3/home/ScreenGridPanel;

    invoke-virtual {v0}, Lcom/android/launcher3/home/ScreenGridPanel;->getScreenGridTopConatiner()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 3176
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mScreenGridPanel:Lcom/android/launcher3/home/ScreenGridPanel;

    invoke-virtual {v0}, Lcom/android/launcher3/home/ScreenGridPanel;->getScreenGridTopConatiner()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 3182
    :cond_f
    if-ne p2, v3, :cond_15

    .line 3183
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getTopViewChangedMessageHandler()Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;

    move-result-object v0

    .line 3184
    invoke-virtual {v0, v2}, Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;->sendMessage(I)V

    .line 3185
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->clearFocus()V

    .line 3186
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/Workspace;->setCrosshairsVisibilityChilds(I)V

    .line 3187
    iput-boolean v6, p0, Lcom/android/launcher3/home/HomeController;->mHomeDefaultIconClick:Z

    .line 3188
    iput-boolean v6, p0, Lcom/android/launcher3/home/HomeController;->mHomePageReorder:Z

    .line 3206
    :cond_10
    :goto_5
    if-ne p2, v8, :cond_18

    .line 3207
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->addExtraEmptyScreenOnDrag()V

    .line 3208
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->showHintPages()V

    goto/16 :goto_0

    :cond_11
    move v0, v6

    .line 3112
    goto/16 :goto_1

    :cond_12
    move v0, v6

    .line 3129
    goto/16 :goto_2

    :cond_13
    move v0, v6

    .line 3131
    goto/16 :goto_3

    .line 3159
    :cond_14
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFestivalPage()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mFestivalPageController:Lcom/android/launcher3/home/FestivalPageController;

    if-eqz v0, :cond_c

    .line 3160
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mFestivalPageController:Lcom/android/launcher3/home/FestivalPageController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/FestivalPageController;->removeCustomFestivalPage()V

    goto :goto_4

    .line 3189
    :cond_15
    if-ne p2, v2, :cond_16

    .line 3190
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getTopViewChangedMessageHandler()Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;

    move-result-object v0

    const/16 v1, 0x11

    .line 3191
    invoke-virtual {v0, v1}, Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;->sendMessage(I)V

    goto :goto_5

    .line 3192
    :cond_16
    if-ne p1, v3, :cond_10

    .line 3193
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getTopViewChangedMessageHandler()Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;

    move-result-object v0

    .line 3194
    invoke-virtual {v0, v7}, Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;->sendMessage(I)V

    .line 3195
    iget-boolean v0, p0, Lcom/android/launcher3/home/HomeController;->mHomeDefaultIconClick:Z

    if-eqz v0, :cond_17

    .line 3196
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v1

    const-string v2, "HDIC"

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 3200
    :cond_17
    iget-boolean v0, p0, Lcom/android/launcher3/home/HomeController;->mHomePageReorder:Z

    if-eqz v0, :cond_10

    .line 3201
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v1

    const-string v2, "HPRO"

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    goto :goto_5

    .line 3209
    :cond_18
    if-ne p2, v7, :cond_0

    .line 3210
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->hideHintPages()V

    goto/16 :goto_0
.end method

.method private updateHotseatByMoveToAppsPosition(F)V
    .locals 3
    .param p1, "overlayedRange"    # F

    .prologue
    .line 3403
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    if-eqz v2, :cond_1

    .line 3404
    iget v2, p0, Lcom/android/launcher3/home/HomeController;->mMoveToAppsPanelHeight:I

    if-nez v2, :cond_0

    .line 3405
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-virtual {v2}, Lcom/android/launcher3/common/tray/TrayManager;->getHeightOfTrayForDrag()I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/home/HomeController;->mMoveToAppsPanelHeight:I

    .line 3408
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-virtual {v2}, Lcom/android/launcher3/common/tray/TrayManager;->getHeightOfTrayForDrag()I

    move-result v2

    int-to-float v2, v2

    div-float v0, p1, v2

    .line 3409
    .local v0, "factor":F
    iget v2, p0, Lcom/android/launcher3/home/HomeController;->mHotseatMoveRange:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    neg-float v1, v2

    .line 3410
    .local v1, "hotseatTranslationY":F
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/home/Hotseat;->setTranslationY(F)V

    .line 3412
    .end local v0    # "factor":F
    .end local v1    # "hotseatTranslationY":F
    :cond_1
    return-void
.end method


# virtual methods
.method addAppWidgetImpl(ILcom/android/launcher3/common/base/item/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;)V
    .locals 6
    .param p1, "appWidgetId"    # I
    .param p2, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p3, "boundWidget"    # Landroid/appwidget/AppWidgetHostView;
    .param p4, "appWidgetInfo"    # Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    .prologue
    .line 1877
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/home/HomeController;->addAppWidgetImpl(ILcom/android/launcher3/common/base/item/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;I)V

    .line 1878
    return-void
.end method

.method addAppWidgetImpl(ILcom/android/launcher3/common/base/item/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;I)V
    .locals 13
    .param p1, "appWidgetId"    # I
    .param p2, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p3, "boundWidget"    # Landroid/appwidget/AppWidgetHostView;
    .param p4, "appWidgetInfo"    # Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;
    .param p5, "delay"    # I

    .prologue
    .line 1883
    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v2, :cond_0

    .line 1884
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddWidgetInfo:Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    .line 1885
    iput p1, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddWidgetId:I

    .line 1888
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mAppWidgetManager:Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;

    iget-object v5, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mAppWidgetHost:Lcom/android/launcher3/home/LauncherAppWidgetHost;

    const/4 v7, 0x5

    move-object/from16 v3, p4

    move v4, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->startConfigActivity(Landroid/appwidget/AppWidgetProviderInfo;ILandroid/app/Activity;Landroid/appwidget/AppWidgetHost;I)V

    .line 1917
    :goto_0
    return-void

    .line 1892
    :cond_0
    iget-wide v4, p2, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    iget-wide v6, p2, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    move-object v2, p0

    move v3, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-direct/range {v2 .. v9}, Lcom/android/launcher3/home/HomeController;->completeAddAppWidget(IJJLandroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v10

    .line 1896
    .local v10, "hostView":Landroid/appwidget/AppWidgetHostView;
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-wide v4, p2, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-virtual {v2, v4, v5}, Lcom/android/launcher3/home/Workspace;->getScreenWithId(J)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v11

    .line 1898
    .local v11, "layout":Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-virtual {p0, v10, v11}, Lcom/android/launcher3/home/HomeController;->canEnterResizeMode(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/common/base/view/CellLayout;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1899
    new-instance v12, Lcom/android/launcher3/home/HomeController$8;

    invoke-direct {v12, p0, v10, v11}, Lcom/android/launcher3/home/HomeController$8;-><init>(Lcom/android/launcher3/home/HomeController;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/common/base/view/CellLayout;)V

    .line 1915
    .local v12, "onComplete":Ljava/lang/Runnable;
    :goto_1
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move/from16 v0, p5

    invoke-virtual {v2, v12, v0}, Lcom/android/launcher3/home/Workspace;->removeExtraEmptyScreenDelayed(Ljava/lang/Runnable;I)V

    goto :goto_0

    .line 1906
    .end local v12    # "onComplete":Ljava/lang/Runnable;
    :cond_1
    new-instance v12, Lcom/android/launcher3/home/HomeController$9;

    invoke-direct {v12, p0}, Lcom/android/launcher3/home/HomeController$9;-><init>(Lcom/android/launcher3/home/HomeController;)V

    .restart local v12    # "onComplete":Ljava/lang/Runnable;
    goto :goto_1
.end method

.method addFolderItemsToDb(Ljava/util/ArrayList;J)V
    .locals 4
    .param p2, "container"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 2956
    .local p1, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2962
    :cond_0
    :goto_0
    return-void

    .line 2958
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 2959
    .local v0, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    iput-wide p2, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    goto :goto_1

    .line 2961
    .end local v0    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/common/model/FavoritesUpdater;->addItems(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method addInScreen(Landroid/view/View;JJIIII)V
    .locals 12
    .param p1, "child"    # Landroid/view/View;
    .param p2, "container"    # J
    .param p4, "screenId"    # J
    .param p6, "x"    # I
    .param p7, "y"    # I
    .param p8, "spanX"    # I
    .param p9, "spanY"    # I

    .prologue
    .line 2286
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isWorkspaceLocked()Z

    move-result v10

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v11}, Lcom/android/launcher3/home/HomeController;->addInScreen(Landroid/view/View;JJIIIIZZ)V

    .line 2287
    return-void
.end method

.method addInScreen(Landroid/view/View;JJIIIIZZ)V
    .locals 20
    .param p1, "child"    # Landroid/view/View;
    .param p2, "container"    # J
    .param p4, "screenId"    # J
    .param p6, "x"    # I
    .param p7, "y"    # I
    .param p8, "spanX"    # I
    .param p9, "spanY"    # I
    .param p10, "insert"    # Z
    .param p11, "computeXYFromRank"    # Z

    .prologue
    .line 2291
    const-wide/16 v18, -0x64

    cmp-long v5, p2, v18

    if-nez v5, :cond_1

    .line 2292
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-wide/from16 v0, p4

    invoke-virtual {v5, v0, v1}, Lcom/android/launcher3/home/Workspace;->getScreenWithId(J)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v5

    if-nez v5, :cond_1

    .line 2293
    const-string v5, "Launcher.HomeController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skipping child, screenId "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p4

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " not found"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2295
    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2374
    .end local p1    # "child":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 2299
    .restart local p1    # "child":Landroid/view/View;
    :cond_1
    const-wide/16 v18, -0xc9

    cmp-long v5, p4, v18

    if-nez v5, :cond_2

    .line 2301
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Screen id should not be EXTRA_EMPTY_SCREEN_ID"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2305
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 2306
    .local v14, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    const-wide/16 v18, -0x65

    cmp-long v5, p2, v18

    if-nez v5, :cond_b

    .line 2307
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v5}, Lcom/android/launcher3/home/Hotseat;->getLayout()Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v15

    .line 2308
    .local v15, "layout":Lcom/android/launcher3/common/base/view/CellLayout;
    move-object/from16 v0, p1

    instance-of v5, v0, Lcom/android/launcher3/common/view/IconView;

    if-eqz v5, :cond_3

    move-object/from16 v5, p1

    .line 2309
    check-cast v5, Lcom/android/launcher3/common/view/IconView;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/launcher3/common/view/IconView;->setIconDisplay(I)V

    .line 2311
    :cond_3
    sget-object v5, Lcom/android/launcher3/home/HomeFocusHelper;->HOTSEAT_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 2313
    if-eqz p11, :cond_8

    .line 2314
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    move-wide/from16 v0, p4

    long-to-int v6, v0

    invoke-virtual {v5, v6}, Lcom/android/launcher3/home/Hotseat;->getCellXFromOrder(I)I

    move-result p6

    .line 2315
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    move-wide/from16 v0, p4

    long-to-int v6, v0

    invoke-virtual {v5, v6}, Lcom/android/launcher3/home/Hotseat;->getCellYFromOrder(I)I

    move-result p7

    .line 2316
    move/from16 v0, p6

    iput v0, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    .line 2317
    move/from16 v0, p7

    iput v0, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    move-object v8, v15

    .line 2340
    .end local v15    # "layout":Lcom/android/launcher3/common/base/view/CellLayout;
    .local v8, "layout":Lcom/android/launcher3/common/base/view/CellLayout;
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 2342
    .local v4, "genericLp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v4, :cond_4

    instance-of v5, v4, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    if-nez v5, :cond_d

    .line 2343
    :cond_4
    new-instance v12, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    move/from16 v0, p6

    move/from16 v1, p7

    move/from16 v2, p8

    move/from16 v3, p9

    invoke-direct {v12, v0, v1, v2, v3}, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;-><init>(IIII)V

    .line 2352
    .local v12, "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    :goto_2
    if-gez p8, :cond_5

    if-gez p9, :cond_5

    .line 2353
    const/4 v5, 0x0

    iput-boolean v5, v12, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 2357
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5, v14}, Lcom/android/launcher3/Launcher;->getViewIdForItem(Lcom/android/launcher3/common/base/item/ItemInfo;)I

    move-result v11

    .line 2359
    .local v11, "childId":I
    move-object/from16 v0, p1

    instance-of v5, v0, Lcom/android/launcher3/folder/view/FolderView;

    if-nez v5, :cond_e

    const/4 v13, 0x1

    .line 2360
    .local v13, "markCellsAsOccupied":Z
    :goto_3
    if-eqz p10, :cond_f

    const/4 v10, 0x0

    :goto_4
    move-object/from16 v9, p1

    invoke-virtual/range {v8 .. v13}, Lcom/android/launcher3/common/base/view/CellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/android/launcher3/common/base/view/CellLayout$LayoutParams;Z)Z

    move-result v5

    if-nez v5, :cond_6

    .line 2364
    const-string v5, "Launcher.HomeController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to add to item at ("

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v9, v12, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ","

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v9, v12, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ") to CellLayout"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x1

    invoke-static {v5, v6, v9}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2367
    :cond_6
    move-object/from16 v0, p1

    instance-of v5, v0, Lcom/android/launcher3/folder/view/FolderView;

    if-nez v5, :cond_7

    .line 2368
    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    .line 2369
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 2371
    :cond_7
    move-object/from16 v0, p1

    instance-of v5, v0, Lcom/android/launcher3/common/drag/DropTarget;

    if-eqz v5, :cond_0

    .line 2372
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HomeController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    check-cast p1, Lcom/android/launcher3/common/drag/DropTarget;

    .end local p1    # "child":Landroid/view/View;
    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/android/launcher3/common/drag/DragManager;->addDropTarget(Lcom/android/launcher3/common/drag/DropTarget;)V

    goto/16 :goto_0

    .line 2318
    .end local v4    # "genericLp":Landroid/view/ViewGroup$LayoutParams;
    .end local v8    # "layout":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v11    # "childId":I
    .end local v12    # "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    .end local v13    # "markCellsAsOccupied":Z
    .restart local v15    # "layout":Lcom/android/launcher3/common/base/view/CellLayout;
    .restart local p1    # "child":Landroid/view/View;
    :cond_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HomeController;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    invoke-virtual {v5}, Lcom/android/launcher3/home/HomeBindController;->isWorkspaceLoading()Z

    move-result v5

    if-nez v5, :cond_10

    .line 2319
    instance-of v5, v14, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v5, :cond_9

    .line 2320
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v5

    const-string v6, "HSAD"

    const-string v7, "Folder"

    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 2328
    :goto_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    .line 2329
    .local v16, "res":Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v5

    const v6, 0x7f080190

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v9, 0x7f0800c7

    .line 2330
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2329
    invoke-virtual {v5, v6, v9}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v15

    .line 2331
    .end local v15    # "layout":Lcom/android/launcher3/common/base/view/CellLayout;
    .restart local v8    # "layout":Lcom/android/launcher3/common/base/view/CellLayout;
    goto/16 :goto_1

    .line 2323
    .end local v8    # "layout":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v16    # "res":Landroid/content/res/Resources;
    .restart local v15    # "layout":Lcom/android/launcher3/common/base/view/CellLayout;
    :cond_9
    invoke-virtual {v14}, Lcom/android/launcher3/common/base/item/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 2324
    invoke-virtual {v14}, Lcom/android/launcher3/common/base/item/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 2325
    .local v7, "extra":Ljava/lang/String;
    :goto_6
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v5

    const-string v6, "HSAD"

    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    goto :goto_5

    .line 2324
    .end local v7    # "extra":Ljava/lang/String;
    :cond_a
    const/4 v7, 0x0

    goto :goto_6

    .line 2333
    .end local v15    # "layout":Lcom/android/launcher3/common/base/view/CellLayout;
    :cond_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-wide/from16 v0, p4

    invoke-virtual {v5, v0, v1}, Lcom/android/launcher3/home/Workspace;->getScreenWithId(J)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v8

    .line 2334
    .restart local v8    # "layout":Lcom/android/launcher3/common/base/view/CellLayout;
    move-object/from16 v0, p1

    instance-of v5, v0, Lcom/android/launcher3/common/view/IconView;

    if-eqz v5, :cond_c

    move-object/from16 v5, p1

    .line 2335
    check-cast v5, Lcom/android/launcher3/common/view/IconView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/launcher3/common/view/IconView;->setIconDisplay(I)V

    .line 2337
    :cond_c
    sget-object v5, Lcom/android/launcher3/home/HomeFocusHelper;->WORKSPACE_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    goto/16 :goto_1

    .restart local v4    # "genericLp":Landroid/view/ViewGroup$LayoutParams;
    :cond_d
    move-object v12, v4

    .line 2345
    check-cast v12, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    .line 2346
    .restart local v12    # "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    move/from16 v0, p6

    iput v0, v12, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->tmpCellX:I

    move/from16 v0, p6

    iput v0, v12, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    .line 2347
    move/from16 v0, p7

    iput v0, v12, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->tmpCellY:I

    move/from16 v0, p7

    iput v0, v12, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    .line 2348
    move/from16 v0, p8

    iput v0, v12, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellHSpan:I

    .line 2349
    move/from16 v0, p9

    iput v0, v12, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellVSpan:I

    goto/16 :goto_2

    .line 2359
    .restart local v11    # "childId":I
    :cond_e
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 2360
    .restart local v13    # "markCellsAsOccupied":Z
    :cond_f
    const/4 v10, -0x1

    goto/16 :goto_4

    .end local v4    # "genericLp":Landroid/view/ViewGroup$LayoutParams;
    .end local v8    # "layout":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v11    # "childId":I
    .end local v12    # "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    .end local v13    # "markCellsAsOccupied":Z
    .restart local v15    # "layout":Lcom/android/launcher3/common/base/view/CellLayout;
    :cond_10
    move-object v8, v15

    .end local v15    # "layout":Lcom/android/launcher3/common/base/view/CellLayout;
    .restart local v8    # "layout":Lcom/android/launcher3/common/base/view/CellLayout;
    goto/16 :goto_1
.end method

.method addInScreenFromBind(Landroid/view/View;JJIIII)V
    .locals 12
    .param p1, "child"    # Landroid/view/View;
    .param p2, "container"    # J
    .param p4, "screenId"    # J
    .param p6, "x"    # I
    .param p7, "y"    # I
    .param p8, "spanX"    # I
    .param p9, "spanY"    # I

    .prologue
    .line 2282
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v11}, Lcom/android/launcher3/home/HomeController;->addInScreen(Landroid/view/View;JJIIIIZZ)V

    .line 2283
    return-void
.end method

.method addItemOnHome(Lcom/android/launcher3/common/base/item/ItemInfo;[IJ)V
    .locals 25
    .param p1, "itemInfo"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p2, "targetCell"    # [I
    .param p3, "screenId"    # J

    .prologue
    .line 2895
    const-wide/16 v22, -0x64

    .line 2896
    .local v22, "container":J
    const/4 v2, 0x0

    aget v10, p2, v2

    .line 2897
    .local v10, "cellX":I
    const/4 v2, 0x1

    aget v11, p2, v2

    .line 2898
    .local v11, "cellY":I
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getCloneItemEnabled()Z

    move-result v21

    .line 2899
    .local v21, "cloneable":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-wide/from16 v0, p3

    invoke-virtual {v4, v0, v1}, Lcom/android/launcher3/home/Workspace;->getPageIndexForScreenId(J)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 2902
    .local v3, "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    packed-switch v2, :pswitch_data_0

    .line 2914
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown item type: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2905
    :pswitch_0
    if-eqz v21, :cond_0

    check-cast p1, Lcom/android/launcher3/common/base/item/IconInfo;

    .end local p1    # "itemInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/base/item/IconInfo;->makeCloneInfo()Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object p1

    .line 2906
    .restart local p1    # "itemInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/home/HomeController;->getBindController()Lcom/android/launcher3/home/HomeBindController;

    move-result-object v4

    move-object/from16 v2, p1

    check-cast v2, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v4, v2}, Lcom/android/launcher3/home/HomeBindController;->createShortcut(Lcom/android/launcher3/common/base/item/IconInfo;)Landroid/view/View;

    move-result-object v5

    .line 2917
    .local v5, "view":Landroid/view/View;
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-wide/from16 v0, p3

    invoke-virtual {v4, v0, v1}, Lcom/android/launcher3/home/Workspace;->getPageIndexForScreenId(J)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/launcher3/home/Workspace;->snapToPageImmediately(I)V

    .line 2918
    const-wide/16 v6, -0x64

    const/4 v12, 0x1

    const/4 v13, 0x1

    move-object/from16 v4, p0

    move-wide/from16 v8, p3

    invoke-virtual/range {v4 .. v13}, Lcom/android/launcher3/home/HomeController;->addInScreen(Landroid/view/View;JJIIII)V

    .line 2919
    invoke-virtual {v3}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->measureChild(Landroid/view/View;)V

    .line 2921
    const-wide/16 v14, -0x64

    const/16 v20, -0x1

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-wide/from16 v16, p3

    move/from16 v18, v10

    move/from16 v19, v11

    invoke-virtual/range {v12 .. v20}, Lcom/android/launcher3/home/HomeController;->addOrMoveItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJIII)V

    .line 2922
    if-eqz v21, :cond_1

    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v2, :cond_1

    .line 2923
    new-instance v4, Ljava/util/ArrayList;

    move-object/from16 v2, p1

    check-cast v2, Lcom/android/launcher3/folder/FolderInfo;

    iget-object v2, v2, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6, v7}, Lcom/android/launcher3/home/HomeController;->addFolderItemsToDb(Ljava/util/ArrayList;J)V

    .line 2924
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    if-eqz v2, :cond_1

    move-object/from16 v2, p1

    check-cast v2, Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/FolderInfo;->isLocked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2925
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    check-cast p1, Lcom/android/launcher3/folder/FolderInfo;

    .end local p1    # "itemInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/launcher3/folder/folderlock/FolderLock;->addLockedRecords(Lcom/android/launcher3/folder/FolderInfo;)V

    .line 2928
    :cond_1
    return-void

    .line 2909
    .end local v5    # "view":Landroid/view/View;
    .restart local p1    # "itemInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    :pswitch_1
    if-eqz v21, :cond_2

    check-cast p1, Lcom/android/launcher3/folder/FolderInfo;

    .end local p1    # "itemInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/folder/FolderInfo;->makeCloneInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object p1

    .line 2910
    .restart local p1    # "itemInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v4, p1

    check-cast v4, Lcom/android/launcher3/folder/FolderInfo;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v5, p0

    invoke-static/range {v2 .. v8}, Lcom/android/launcher3/folder/view/FolderIconView;->fromXml(Lcom/android/launcher3/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher3/folder/FolderInfo;Lcom/android/launcher3/common/base/controller/ControllerBase;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;I)Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v5

    .line 2912
    .restart local v5    # "view":Landroid/view/View;
    goto/16 :goto_0

    .line 2902
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public addItemOnNextPageOfDefaultHome(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 4
    .param p1, "itemInfo"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 2888
    const/4 v3, 0x2

    new-array v2, v3, [I

    .line 2889
    .local v2, "targetCell":[I
    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher3/home/Workspace;->getDefaultPage()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/launcher3/home/HomeController;->findEmptyCell([II)J

    move-result-wide v0

    .line 2891
    .local v0, "screenId":J
    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/android/launcher3/home/HomeController;->addItemOnHome(Lcom/android/launcher3/common/base/item/ItemInfo;[IJ)V

    .line 2892
    return-void
.end method

.method public addItemToDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJII)J
    .locals 2
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p2, "container"    # J
    .param p4, "screenId"    # J
    .param p6, "cellX"    # I
    .param p7, "cellY"    # I

    .prologue
    .line 2943
    iput-wide p2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    .line 2944
    iput p6, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    .line 2945
    iput p7, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    .line 2947
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-gez v0, :cond_0

    const-wide/16 v0, -0x65

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    .line 2948
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v0, p6, p7}, Lcom/android/launcher3/home/Hotseat;->getOrderInHotseat(II)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    .line 2952
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/model/FavoritesUpdater;->addItem(Lcom/android/launcher3/common/base/item/ItemInfo;)J

    move-result-wide v0

    return-wide v0

    .line 2950
    :cond_0
    iput-wide p4, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    goto :goto_0
.end method

.method public addItemToDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJI)V
    .locals 0
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p2, "container"    # J
    .param p4, "screenId"    # J
    .param p6, "rank"    # I

    .prologue
    .line 2967
    return-void
.end method

.method public addOrMoveItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJIII)V
    .locals 4
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p2, "container"    # J
    .param p4, "screenId"    # J
    .param p6, "cellX"    # I
    .param p7, "cellY"    # I
    .param p8, "rank"    # I

    .prologue
    const-wide/16 v2, -0x1

    .line 3061
    iget-wide v0, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 3063
    :cond_0
    invoke-virtual/range {p0 .. p7}, Lcom/android/launcher3/home/HomeController;->addItemToDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJII)J

    .line 3068
    :goto_0
    return-void

    .line 3066
    :cond_1
    invoke-virtual/range {p0 .. p7}, Lcom/android/launcher3/home/HomeController;->modifyItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJII)V

    goto :goto_0
.end method

.method public addOrMoveItems(Ljava/util/ArrayList;JJ)V
    .locals 26
    .param p2, "container"    # J
    .param p4, "screenId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;JJ)V"
        }
    .end annotation

    .prologue
    .line 4165
    .local p1, "changedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    move-object/from16 v14, p1

    .line 4166
    .local v14, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 4167
    .local v13, "itemMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;>;"
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_0
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_1

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 4168
    .local v12, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-wide v0, v12, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_0

    .line 4169
    iget-wide v0, v12, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4171
    :cond_0
    iget-wide v0, v12, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/ArrayList;

    .line 4172
    .local v17, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    check-cast v12, Lcom/android/launcher3/common/base/item/IconInfo;

    .end local v12    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4174
    .end local v17    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    :cond_1
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v20

    if-eqz v20, :cond_5

    .line 4175
    const/4 v9, 0x0

    .line 4176
    .local v9, "hasHotseatItems":Z
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_2
    :goto_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_4

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 4177
    .local v12, "item":Lcom/android/launcher3/common/base/item/IconInfo;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/launcher3/home/HomeController;->isItemInFolder(Lcom/android/launcher3/common/base/item/ItemInfo;)Z

    move-result v21

    if-nez v21, :cond_2

    .line 4178
    iget-wide v0, v12, Lcom/android/launcher3/common/base/item/IconInfo;->id:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/home/HomeController;->getHomescreenIconByItemId(J)Landroid/view/View;

    move-result-object v10

    .line 4179
    .local v10, "iconView":Landroid/view/View;
    if-eqz v10, :cond_2

    .line 4181
    iget-wide v0, v12, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    move-wide/from16 v22, v0

    const-wide/16 v24, -0x65

    cmp-long v21, v22, v24

    if-nez v21, :cond_3

    .line 4182
    const/4 v9, 0x1

    .line 4183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher3/home/Hotseat;->getLayout()Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v4

    .line 4187
    .local v4, "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    :goto_2
    invoke-virtual {v4, v10}, Lcom/android/launcher3/common/base/view/CellLayout;->removeView(Landroid/view/View;)V

    goto :goto_1

    .line 4185
    .end local v4    # "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v22, v0

    iget-wide v0, v12, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/home/Workspace;->getPageIndexForScreenId(J)I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/base/view/CellLayout;

    .restart local v4    # "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    goto :goto_2

    .line 4191
    .end local v4    # "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v10    # "iconView":Landroid/view/View;
    .end local v12    # "item":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_4
    if-eqz v9, :cond_5

    .line 4192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher3/home/Hotseat;->getDragController()Lcom/android/launcher3/home/HotseatDragController;

    move-result-object v20

    const/16 v21, 0x0

    const/16 v22, 0x1

    invoke-virtual/range {v20 .. v22}, Lcom/android/launcher3/home/HotseatDragController;->removeEmptyCells(ZZ)V

    .line 4193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/android/launcher3/home/Hotseat;->changeGrid(Z)V

    .line 4197
    .end local v9    # "hasHotseatItems":Z
    :cond_5
    invoke-virtual {v13}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v16

    .line 4198
    .local v16, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 4199
    .local v18, "updateItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 4200
    .local v5, "contentValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_6
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_9

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Long;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 4201
    .local v6, "containerId":J
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    .line 4202
    .local v15, "itemsInContainer":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v20

    if-eqz v20, :cond_7

    cmp-long v20, v6, p2

    if-eqz v20, :cond_7

    const-wide/16 v22, 0x0

    cmp-long v20, v6, v22

    if-lez v20, :cond_7

    .line 4203
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/android/launcher3/home/HomeController;->getHomescreenIconByItemId(J)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/folder/view/FolderIconView;

    .line 4204
    .local v10, "iconView":Lcom/android/launcher3/folder/view/FolderIconView;
    invoke-virtual {v10}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v8

    .line 4205
    .local v8, "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    invoke-virtual {v8, v15}, Lcom/android/launcher3/folder/FolderInfo;->remove(Ljava/util/ArrayList;)V

    .line 4208
    .end local v8    # "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    .end local v10    # "iconView":Lcom/android/launcher3/folder/view/FolderIconView;
    :cond_7
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_3
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_6

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 4209
    .restart local v12    # "item":Lcom/android/launcher3/common/base/item/IconInfo;
    move-object v11, v12

    .line 4210
    .local v11, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    move-wide/from16 v0, p2

    iput-wide v0, v11, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    .line 4211
    move-wide/from16 v0, p4

    iput-wide v0, v11, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    .line 4212
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v22

    if-nez v22, :cond_8

    .line 4215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeController;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Lcom/android/launcher3/common/model/FavoritesUpdater;->addItem(Lcom/android/launcher3/common/base/item/ItemInfo;)J

    .line 4217
    :cond_8
    new-instance v19, Landroid/content/ContentValues;

    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    .line 4218
    .local v19, "values":Landroid/content/ContentValues;
    const-string v22, "container"

    iget-wide v0, v11, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4219
    const-string v22, "rank"

    iget v0, v11, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4220
    const-string v22, "cellX"

    iget v0, v11, Lcom/android/launcher3/common/base/item/IconInfo;->cellX:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4221
    const-string v22, "cellY"

    iget v0, v11, Lcom/android/launcher3/common/base/item/IconInfo;->cellY:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4222
    const-string v22, "screen"

    iget-wide v0, v11, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4223
    const-string v22, "hidden"

    iget v0, v11, Lcom/android/launcher3/common/base/item/IconInfo;->hidden:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4224
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4225
    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 4228
    .end local v6    # "containerId":J
    .end local v11    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v12    # "item":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v15    # "itemsInContainer":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    .end local v19    # "values":Landroid/content/ContentValues;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeController;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v5, v2}, Lcom/android/launcher3/common/model/FavoritesUpdater;->updateItemsInDatabaseHelper(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 4229
    return-void
.end method

.method addPendingItem(Lcom/android/launcher3/common/base/item/PendingAddItemInfo;JJ[III)V
    .locals 8
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/PendingAddItemInfo;
    .param p2, "container"    # J
    .param p4, "screenId"    # J
    .param p6, "cell"    # [I
    .param p7, "spanX"    # I
    .param p8, "spanY"    # I

    .prologue
    .line 1921
    iget v0, p1, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->itemType:I

    packed-switch v0, :pswitch_data_0

    .line 1934
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown item type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->itemType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1924
    :pswitch_1
    const/4 v0, 0x2

    new-array v7, v0, [I

    .line 1925
    .local v7, "span":[I
    const/4 v0, 0x0

    aput p7, v7, v0

    .line 1926
    const/4 v0, 0x1

    aput p8, v7, v0

    move-object v1, p1

    .line 1927
    check-cast v1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/home/HomeController;->addAppWidgetFromDrop(Lcom/android/launcher3/widget/PendingAddWidgetInfo;JJ[I[I)V

    .line 1936
    .end local v7    # "span":[I
    :goto_0
    return-void

    .line 1931
    :pswitch_2
    iget-object v1, p1, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/home/HomeController;->processShortcutFromDrop(Landroid/content/ComponentName;JJ[I)V

    goto :goto_0

    .line 1921
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method applyGridChangeFinally()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 3874
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 3875
    .local v0, "delay":I
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mScreenGridHelper:Lcom/android/launcher3/home/ScreenGridHelper;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/home/ScreenGridHelper;->applyGridChange(I)V

    .line 3876
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->getScreenOrder()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/home/HomeController;->updateWorkspaceScreenOrder(Ljava/util/ArrayList;)V

    .line 3877
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    const/4 v2, 0x1

    invoke-virtual {v1, v3, v2}, Lcom/android/launcher3/home/Hotseat;->changeGrid(ZZ)V

    .line 3879
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/launcher3/home/HomeController$31;

    invoke-direct {v2, p0}, Lcom/android/launcher3/home/HomeController$31;-><init>(Lcom/android/launcher3/home/HomeController;)V

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3886
    invoke-virtual {p0, v3}, Lcom/android/launcher3/home/HomeController;->notifyCapture(Z)V

    .line 3887
    return-void
.end method

.method approachBorderOnDrag(F)V
    .locals 1
    .param p1, "touchY"    # F

    .prologue
    .line 3391
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getCloneItemEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3392
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3400
    :cond_0
    :goto_0
    return-void

    .line 3396
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isHomeStage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v0}, Lcom/android/launcher3/common/drag/DragManager;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 3397
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isRunningAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3398
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher3/common/tray/TrayManager;->approachBorderOnDrag(Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;F)V

    goto :goto_0
.end method

.method autoAlignItems(ZZ)Z
    .locals 1
    .param p1, "isUpward"    # Z
    .param p2, "checkToAlign"    # Z

    .prologue
    .line 3540
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/home/HomeController;->autoAlignItems(ZZI)Z

    move-result v0

    return v0
.end method

.method public autoAlignItems(ZZI)Z
    .locals 8
    .param p1, "isUpward"    # Z
    .param p2, "checkToAlign"    # Z
    .param p3, "pageIndex"    # I

    .prologue
    const/4 v6, 0x0

    .line 3544
    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->isPageMoving()Z

    move-result v1

    if-nez v1, :cond_3

    .line 3545
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1, p3}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/WorkspaceCellLayout;

    .line 3546
    .local v0, "currentPage":Lcom/android/launcher3/home/WorkspaceCellLayout;
    if-eqz v0, :cond_3

    .line 3547
    invoke-static {v0, p1, p2}, Lcom/android/launcher3/home/AutoAlignHelper;->autoAlignItems(Lcom/android/launcher3/common/base/view/CellLayout;ZZ)Z

    move-result v7

    .line 3548
    .local v7, "isAligned":Z
    if-eqz p2, :cond_1

    .line 3562
    .end local v0    # "currentPage":Lcom/android/launcher3/home/WorkspaceCellLayout;
    .end local v7    # "isAligned":Z
    :goto_0
    return v7

    .line 3550
    .restart local v0    # "currentPage":Lcom/android/launcher3/home/WorkspaceCellLayout;
    .restart local v7    # "isAligned":Z
    :cond_1
    if-eqz v7, :cond_3

    .line 3551
    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/HomeController;->updateItemLocationsInDatabase(Lcom/android/launcher3/common/base/view/CellLayout;)V

    .line 3552
    invoke-virtual {v0, p1}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setEnabledOnAlignButton(Z)V

    .line 3554
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/home/Workspace;->getDefaultPage()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 3555
    invoke-virtual {p0, v6}, Lcom/android/launcher3/home/HomeController;->notifyCapture(Z)V

    .line 3558
    :cond_2
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v1

    const-string v2, "ATAN"

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    .end local v0    # "currentPage":Lcom/android/launcher3/home/WorkspaceCellLayout;
    .end local v7    # "isAligned":Z
    :cond_3
    move v7, v6

    .line 3562
    goto :goto_0
.end method

.method public backupOriginalData()V
    .locals 1

    .prologue
    .line 3839
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mScreenGridHelper:Lcom/android/launcher3/home/ScreenGridHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/home/ScreenGridHelper;->backupOriginalData()V

    .line 3840
    return-void
.end method

.method canEnterResizeMode(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/common/base/view/CellLayout;)Z
    .locals 1
    .param p1, "hostView"    # Landroid/appwidget/AppWidgetHostView;
    .param p2, "layout"    # Lcom/android/launcher3/common/base/view/CellLayout;

    .prologue
    .line 1055
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/home/HomeController;->canEnterResizeMode(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/common/base/view/CellLayout;Z)Z

    move-result v0

    return v0
.end method

.method canEnterResizeMode(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/common/base/view/CellLayout;Z)Z
    .locals 10
    .param p1, "hostView"    # Landroid/appwidget/AppWidgetHostView;
    .param p2, "layout"    # Lcom/android/launcher3/common/base/view/CellLayout;
    .param p3, "checkState"    # Z

    .prologue
    .line 1059
    if-eqz p3, :cond_1

    if-eqz p1, :cond_0

    iget-object v7, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    const/4 v8, 0x2

    # invokes: Lcom/android/launcher3/home/HomeController$State;->equal(I)Z
    invoke-static {v7, v8}, Lcom/android/launcher3/home/HomeController$State;->access$000(Lcom/android/launcher3/home/HomeController$State;I)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1060
    :cond_0
    const/4 v7, 0x0

    .line 1104
    :goto_0
    return v7

    .line 1063
    :cond_1
    invoke-virtual {p1}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    .line 1064
    .local v2, "pInfo":Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;
    if-nez v2, :cond_2

    .line 1065
    const/4 v7, 0x0

    goto :goto_0

    .line 1068
    :cond_2
    invoke-virtual {v2}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->getSupportedSpans()Ljava/util/ArrayList;

    move-result-object v7

    if-eqz v7, :cond_6

    invoke-virtual {v2}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->getSupportedSpans()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_6

    .line 1069
    invoke-virtual {v2}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->resizeMode()I

    move-result v3

    .line 1071
    .local v3, "resizeMode":I
    :goto_1
    const/4 v7, 0x1

    if-ne v3, v7, :cond_3

    .line 1072
    invoke-virtual {v2}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->getMinSpanX()I

    move-result v7

    invoke-virtual {p2}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountX()I

    move-result v8

    if-ge v7, v8, :cond_5

    :cond_3
    const/4 v7, 0x2

    if-ne v3, v7, :cond_4

    .line 1074
    invoke-virtual {v2}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->getMinSpanY()I

    move-result v7

    invoke-virtual {p2}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountY()I

    move-result v8

    if-ge v7, v8, :cond_5

    .line 1075
    :cond_4
    invoke-virtual {v2}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->getMinSpanX()I

    move-result v7

    invoke-virtual {p2}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountX()I

    move-result v8

    if-lt v7, v8, :cond_7

    invoke-virtual {v2}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->getMinSpanY()I

    move-result v7

    invoke-virtual {p2}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountY()I

    move-result v8

    if-lt v7, v8, :cond_7

    .line 1076
    :cond_5
    const/4 v7, 0x0

    goto :goto_0

    .line 1069
    .end local v3    # "resizeMode":I
    :cond_6
    iget v3, v2, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->resizeMode:I

    goto :goto_1

    .line 1079
    .restart local v3    # "resizeMode":I
    :cond_7
    if-eqz v3, :cond_d

    .line 1080
    invoke-virtual {v2}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->getSupportedSpans()Ljava/util/ArrayList;

    move-result-object v6

    .line 1081
    .local v6, "supportSpans":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[I>;"
    if-eqz v6, :cond_c

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_c

    .line 1082
    invoke-virtual {v2}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->resizeMode()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_8

    .line 1083
    invoke-virtual {v2}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->resizeMode()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_c

    .line 1084
    :cond_8
    const/4 v5, 0x0

    .line 1085
    .local v5, "supportCount":I
    const/4 v7, 0x2

    new-array v0, v7, [I

    .line 1086
    .local v0, "cellXY":[I
    const/4 v7, 0x0

    invoke-virtual {p2}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountX()I

    move-result v8

    aput v8, v0, v7

    .line 1087
    const/4 v7, 0x1

    invoke-virtual {p2}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountY()I

    move-result v8

    aput v8, v0, v7

    .line 1088
    invoke-virtual {v2}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->resizeMode()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_a

    const/4 v1, 0x0

    .line 1090
    .local v1, "idx":I
    :goto_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_9
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    .line 1091
    .local v4, "span":[I
    aget v8, v4, v1

    aget v9, v0, v1

    if-gt v8, v9, :cond_9

    .line 1092
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1088
    .end local v1    # "idx":I
    .end local v4    # "span":[I
    :cond_a
    const/4 v1, 0x1

    goto :goto_2

    .line 1096
    .restart local v1    # "idx":I
    :cond_b
    const/4 v7, 0x2

    if-ge v5, v7, :cond_c

    .line 1097
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 1101
    .end local v0    # "cellXY":[I
    .end local v1    # "idx":I
    .end local v5    # "supportCount":I
    :cond_c
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 1104
    .end local v6    # "supportSpans":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[I>;"
    :cond_d
    const/4 v7, 0x0

    goto/16 :goto_0
.end method

.method canMoveHometray()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 3364
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->isHomeStage()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    # invokes: Lcom/android/launcher3/home/HomeController$State;->equal(I)Z
    invoke-static {v1, v0}, Lcom/android/launcher3/home/HomeController$State;->access$000(Lcom/android/launcher3/home/HomeController$State;I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mHomeAnimation:Lcom/android/launcher3/home/HomeTransitionAnimation;

    .line 3365
    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeTransitionAnimation;->isRunningOverviewAnimation()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->hasTargetView()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method canRunNewAppsAnimation()Z
    .locals 6

    .prologue
    .line 2214
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/launcher3/home/HomeController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v4}, Lcom/android/launcher3/common/drag/DragManager;->getLastGestureUpTime()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 2215
    .local v0, "diff":J
    const-wide/16 v2, 0x1388

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public cancelGridChange()V
    .locals 1

    .prologue
    .line 3843
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mScreenGridHelper:Lcom/android/launcher3/home/ScreenGridHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/home/ScreenGridHelper;->restoreGridLayout()V

    .line 3844
    return-void
.end method

.method changeGrid(IIZ)V
    .locals 1
    .param p1, "cellX"    # I
    .param p2, "cellY"    # I
    .param p3, "animated"    # Z

    .prologue
    .line 3835
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mScreenGridHelper:Lcom/android/launcher3/home/ScreenGridHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/launcher3/home/ScreenGridHelper;->changeGrid(IIZ)V

    .line 3836
    return-void
.end method

.method public changeHomeScreenMode(Ljava/lang/String;)V
    .locals 6
    .param p1, "pref_key"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 3071
    invoke-static {}, Lcom/android/launcher3/common/model/FavoritesProvider;->getInstance()Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    if-eqz v3, :cond_0

    .line 3072
    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3, p1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 3073
    .local v0, "HomeOnlySettingValue":Z
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v3

    if-ne v0, v3, :cond_1

    .line 3095
    .end local v0    # "HomeOnlySettingValue":Z
    :cond_0
    :goto_0
    return-void

    .line 3076
    .restart local v0    # "HomeOnlySettingValue":Z
    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    invoke-virtual {v3, v5}, Lcom/android/launcher3/home/ZeroPageController;->removeCustomZeroPage(Z)V

    .line 3078
    invoke-static {}, Lcom/android/launcher3/common/model/FavoritesProvider;->getInstance()Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v3

    invoke-virtual {v3, v5, v0}, Lcom/android/launcher3/common/model/FavoritesProvider;->switchTable(IZ)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3080
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/launcher3/LauncherAppState;->writeHomeOnlyModeEnabled(Z)V

    .line 3081
    const/4 v3, 0x2

    new-array v1, v3, [I

    .line 3082
    .local v1, "cellXY":[I
    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v3, v1}, Lcom/android/launcher3/Utilities;->loadCurrentGridSize(Landroid/content/Context;[I)V

    .line 3083
    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v3

    aget v4, v1, v4

    aget v5, v1, v5

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->setCurrentGrid(II)V

    .line 3085
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 3086
    .local v2, "handler":Landroid/os/Handler;
    new-instance v3, Lcom/android/launcher3/home/HomeController$26;

    invoke-direct {v3, p0, v0}, Lcom/android/launcher3/home/HomeController$26;-><init>(Lcom/android/launcher3/home/HomeController;Z)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method checkEdgeLightDisplayAvailability()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 4456
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 4457
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v4

    if-ne v4, p0, :cond_0

    move v0, v2

    .line 4460
    .local v0, "isHomeStage":Z
    :goto_0
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportQuickOption()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/common/drag/DragManager;->isQuickOptionShowing()Z

    move-result v4

    if-eqz v4, :cond_1

    move v1, v2

    .line 4462
    .local v1, "isQuickOptionShowing":Z
    :goto_1
    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 4463
    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->isPaused()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    .line 4464
    invoke-virtual {v4}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    .line 4465
    invoke-virtual {v4}, Lcom/android/launcher3/home/Workspace;->isPageMoving()Z

    move-result v4

    if-nez v4, :cond_2

    if-nez v1, :cond_2

    iget-object v4, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    .line 4467
    # invokes: Lcom/android/launcher3/home/HomeController$State;->equal(I)Z
    invoke-static {v4, v2}, Lcom/android/launcher3/home/HomeController$State;->access$000(Lcom/android/launcher3/home/HomeController$State;I)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/launcher3/home/HomeController;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    .line 4468
    invoke-static {}, Lcom/android/launcher3/home/ZeroPageController;->isMoving()Z

    move-result v4

    if-nez v4, :cond_2

    :goto_2
    return v2

    .end local v0    # "isHomeStage":Z
    .end local v1    # "isQuickOptionShowing":Z
    :cond_0
    move v0, v3

    .line 4457
    goto :goto_0

    .restart local v0    # "isHomeStage":Z
    :cond_1
    move v1, v3

    .line 4460
    goto :goto_1

    .restart local v1    # "isQuickOptionShowing":Z
    :cond_2
    move v2, v3

    .line 4468
    goto :goto_2
.end method

.method clearDropTargets()V
    .locals 2

    .prologue
    .line 2114
    const/4 v0, 0x0

    new-instance v1, Lcom/android/launcher3/home/HomeController$14;

    invoke-direct {v1, p0}, Lcom/android/launcher3/home/HomeController$14;-><init>(Lcom/android/launcher3/home/HomeController;)V

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/home/HomeController;->mapOverItems(ZLcom/android/launcher3/common/base/item/ItemOperator;)V

    .line 2124
    return-void
.end method

.method completeAdd(Lcom/android/launcher3/home/HomeController$PendingAddArguments;)J
    .locals 8
    .param p1, "args"    # Lcom/android/launcher3/home/HomeController$PendingAddArguments;

    .prologue
    const/4 v6, 0x0

    .line 1647
    iget-wide v4, p1, Lcom/android/launcher3/home/HomeController$PendingAddArguments;->screenId:J

    .line 1648
    .local v4, "screenId":J
    iget-wide v0, p1, Lcom/android/launcher3/home/HomeController$PendingAddArguments;->container:J

    const-wide/16 v2, -0x64

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1651
    iget-wide v0, p1, Lcom/android/launcher3/home/HomeController$PendingAddArguments;->screenId:J

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/home/HomeController;->ensurePendingDropLayoutExists(J)J

    move-result-wide v4

    .line 1654
    :cond_0
    iget v0, p1, Lcom/android/launcher3/home/HomeController$PendingAddArguments;->requestCode:I

    sparse-switch v0, :sswitch_data_0

    .line 1669
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->resetAddInfo()V

    .line 1670
    return-wide v4

    .line 1656
    :sswitch_0
    iget-object v1, p1, Lcom/android/launcher3/home/HomeController$PendingAddArguments;->intent:Landroid/content/Intent;

    iget-wide v2, p1, Lcom/android/launcher3/home/HomeController$PendingAddArguments;->container:J

    iget v6, p1, Lcom/android/launcher3/home/HomeController$PendingAddArguments;->cellX:I

    iget v7, p1, Lcom/android/launcher3/home/HomeController$PendingAddArguments;->cellY:I

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/home/HomeController;->completeAddShortcut(Landroid/content/Intent;JJII)V

    goto :goto_0

    .line 1660
    :sswitch_1
    iget v1, p1, Lcom/android/launcher3/home/HomeController$PendingAddArguments;->appWidgetId:I

    iget-wide v2, p1, Lcom/android/launcher3/home/HomeController$PendingAddArguments;->container:J

    move-object v0, p0

    move-object v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/home/HomeController;->completeAddAppWidget(IJJLandroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    goto :goto_0

    .line 1663
    :sswitch_2
    iget v0, p1, Lcom/android/launcher3/home/HomeController$PendingAddArguments;->appWidgetId:I

    invoke-direct {p0, v0}, Lcom/android/launcher3/home/HomeController;->completeRestoreAppWidget(I)V

    goto :goto_0

    .line 1654
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
        0xc -> :sswitch_2
    .end sparse-switch
.end method

.method createAndShowSwipeAffordance()V
    .locals 3

    .prologue
    .line 4358
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->findPageIndicator()Lcom/android/launcher3/common/view/PageIndicator;

    move-result-object v0

    .line 4359
    .local v0, "indicator":Lcom/android/launcher3/common/view/PageIndicator;
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mSwipeAffordance:Lcom/android/launcher3/home/SwipeAffordance;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 4360
    invoke-static {v1}, Lcom/android/launcher3/home/SwipeAffordance;->needToCreateAffordance(Lcom/android/launcher3/Launcher;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 4362
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v2, 0x7f0f0081

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/home/SwipeAffordance;

    iput-object v1, p0, Lcom/android/launcher3/home/HomeController;->mSwipeAffordance:Lcom/android/launcher3/home/SwipeAffordance;

    .line 4363
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mSwipeAffordance:Lcom/android/launcher3/home/SwipeAffordance;

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, v2, v0}, Lcom/android/launcher3/home/SwipeAffordance;->setup(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/common/view/PageIndicator;)V

    .line 4365
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    const/4 v2, 0x1

    # invokes: Lcom/android/launcher3/home/HomeController$State;->equal(I)Z
    invoke-static {v1, v2}, Lcom/android/launcher3/home/HomeController$State;->access$000(Lcom/android/launcher3/home/HomeController$State;I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->isHomeStage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4366
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mSwipeAffordance:Lcom/android/launcher3/home/SwipeAffordance;

    invoke-virtual {v1}, Lcom/android/launcher3/home/SwipeAffordance;->startAnim()V

    .line 4369
    :cond_0
    return-void
.end method

.method createNewAppBounceAnimation(Landroid/view/View;I)Landroid/animation/ValueAnimator;
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "i"    # I

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2195
    const/4 v1, 0x3

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    const-string v2, "alpha"

    new-array v3, v4, [F

    aput v6, v3, v5

    .line 2196
    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "scaleX"

    new-array v3, v4, [F

    aput v6, v3, v5

    .line 2197
    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-string v3, "scaleY"

    new-array v4, v4, [F

    aput v6, v4, v5

    .line 2198
    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2195
    invoke-static {p1, v1}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofPropertyValuesHolder(Landroid/view/View;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 2199
    .local v0, "bounceAnim":Landroid/animation/ValueAnimator;
    const-wide/16 v2, 0x1c2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2200
    mul-int/lit8 v1, p2, 0x55

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 2201
    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    const v2, 0x3fa66666    # 1.3f

    invoke-direct {v1, v2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2202
    new-instance v1, Lcom/android/launcher3/home/HomeController$16;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/home/HomeController$16;-><init>(Lcom/android/launcher3/home/HomeController;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2210
    return-object v0
.end method

.method public deleteFolder(Lcom/android/launcher3/folder/FolderInfo;)V
    .locals 1
    .param p1, "folderInfo"    # Lcom/android/launcher3/folder/FolderInfo;

    .prologue
    .line 2860
    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/HomeController;->getViewForTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/home/HomeController;->removeHomeOrFolderItem(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;)Z

    .line 2861
    return-void
.end method

.method public deleteItemFromDb(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 2813
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/model/FavoritesUpdater;->deleteItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 2814
    return-void
.end method

.method deleteItemInFolderFromDb(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 2931
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    check-cast p1, Lcom/android/launcher3/folder/FolderInfo;

    .end local p1    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/model/FavoritesUpdater;->deleteFolderContentsFromDatabase(Lcom/android/launcher3/folder/FolderInfo;)V

    .line 2932
    return-void
.end method

.method public determineStageChange(IFFFI)Z
    .locals 8
    .param p1, "velocity"    # I
    .param p2, "offset"    # F
    .param p3, "firstDownY"    # F
    .param p4, "lastDownY"    # F
    .param p5, "minSnapVelocity"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3333
    const/4 v2, 0x0

    .line 3334
    .local v2, "toBeChanged":Z
    iget-object v5, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->isHomeStage()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3336
    iget-object v5, p0, Lcom/android/launcher3/home/HomeController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    if-eqz v5, :cond_1

    .line 3337
    iget-object v5, p0, Lcom/android/launcher3/home/HomeController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-virtual {v5}, Lcom/android/launcher3/common/tray/TrayManager;->getTrayMovingRange()I

    move-result v0

    .line 3341
    .local v0, "range":I
    :goto_0
    cmpl-float v5, p2, v6

    if-lez v5, :cond_2

    move v1, v4

    .line 3342
    .local v1, "swipeDown":Z
    :goto_1
    cmpl-float v5, p2, v6

    if-nez v5, :cond_3

    .line 3343
    const/4 v2, 0x0

    .line 3352
    :goto_2
    if-eqz v2, :cond_0

    .line 3353
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v4

    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 3354
    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f08018d

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 3355
    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0800dd

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v1, :cond_b

    const-string v3, "2"

    .line 3353
    :goto_3
    invoke-virtual {v4, v5, v6, v3}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3359
    .end local v0    # "range":I
    .end local v1    # "swipeDown":Z
    :cond_0
    return v2

    .line 3339
    :cond_1
    iget-object v5, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v5}, Lcom/android/launcher3/Utilities;->getFullScreenHeight(Landroid/app/Activity;)I

    move-result v0

    .restart local v0    # "range":I
    goto :goto_0

    :cond_2
    move v1, v3

    .line 3341
    goto :goto_1

    .line 3344
    .restart local v1    # "swipeDown":Z
    :cond_3
    if-eqz v1, :cond_7

    .line 3345
    cmpg-float v5, p3, p4

    if-gez v5, :cond_4

    if-lez p1, :cond_4

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v5, p5, :cond_5

    .line 3346
    :cond_4
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v5, p5, :cond_6

    int-to-float v5, v0

    iget v6, p0, Lcom/android/launcher3/home/HomeController;->mPageSnapMovingRatioOnHome:F

    mul-float/2addr v5, v6

    cmpl-float v5, p2, v5

    if-ltz v5, :cond_6

    :cond_5
    move v2, v4

    :goto_4
    goto :goto_2

    :cond_6
    move v2, v3

    goto :goto_4

    .line 3348
    :cond_7
    cmpl-float v5, p3, p4

    if-lez v5, :cond_8

    if-gez p1, :cond_8

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v5, p5, :cond_9

    .line 3349
    :cond_8
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v5, p5, :cond_a

    neg-float v5, p2

    int-to-float v6, v0

    iget v7, p0, Lcom/android/launcher3/home/HomeController;->mPageSnapMovingRatioOnHome:F

    mul-float/2addr v6, v7

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_a

    :cond_9
    move v2, v4

    :goto_5
    goto :goto_2

    :cond_a
    move v2, v3

    goto :goto_5

    .line 3355
    :cond_b
    const-string v3, "1"

    goto :goto_3
.end method

.method public disableShortcutsByPackageName(Ljava/util/ArrayList;Lcom/android/launcher3/common/compat/UserHandleCompat;ILcom/android/launcher3/common/model/IconCache;)V
    .locals 10
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .param p3, "reason"    # I
    .param p4, "iconCache"    # Lcom/android/launcher3/common/model/IconCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/launcher3/common/compat/UserHandleCompat;",
            "I",
            "Lcom/android/launcher3/common/model/IconCache;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2502
    .local p1, "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 2503
    .local v3, "packageNames":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2504
    .local v6, "folderIconsToRefresh":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/folder/view/FolderIconView;>;"
    invoke-virtual {v3, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 2506
    const/4 v9, 0x1

    new-instance v0, Lcom/android/launcher3/home/HomeController$19;

    move-object v1, p0

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/home/HomeController$19;-><init>(Lcom/android/launcher3/home/HomeController;Lcom/android/launcher3/common/compat/UserHandleCompat;Ljava/util/HashSet;ILcom/android/launcher3/common/model/IconCache;Ljava/util/ArrayList;)V

    invoke-direct {p0, v9, v0}, Lcom/android/launcher3/home/HomeController;->mapOverItems(ZLcom/android/launcher3/common/base/item/ItemOperator;)V

    .line 2528
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_1

    .line 2529
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/folder/view/FolderIconView;

    .line 2530
    .local v7, "folderIconView":Lcom/android/launcher3/folder/view/FolderIconView;
    if-eqz v7, :cond_0

    .line 2531
    invoke-virtual {v7}, Lcom/android/launcher3/folder/view/FolderIconView;->refreshFolderIcon()V

    .line 2528
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 2534
    .end local v7    # "folderIconView":Lcom/android/launcher3/folder/view/FolderIconView;
    :cond_1
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x0

    .line 4412
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    .line 4413
    invoke-virtual {v0}, Lcom/android/launcher3/home/Hotseat;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    .line 4414
    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->isPageMoving()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4430
    :cond_0
    :goto_0
    return v3

    .line 4418
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 4421
    :sswitch_0
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/home/Workspace;->dispatchUnhandledMove(Landroid/view/View;I)Z

    goto :goto_0

    .line 4426
    :sswitch_1
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x42

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/home/Workspace;->dispatchUnhandledMove(Landroid/view/View;I)Z

    goto :goto_0

    .line 4418
    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x5c -> :sswitch_0
        0x5d -> :sswitch_1
    .end sparse-switch
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
    .line 4241
    .local p1, "extraDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/launcher3/home/Workspace;->dropCompletedFromHotseat(Ljava/util/ArrayList;Ljava/lang/Runnable;Z)V

    .line 4242
    return-void
.end method

.method dropCompletedWidgetFromHotseat(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
    .locals 1
    .param p1, "d"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .prologue
    .line 4236
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->getDragController()Lcom/android/launcher3/home/WorkspaceDragController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/home/WorkspaceDragController;->dropCompletedWidgetFromHotseat(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V

    .line 4237
    return-void
.end method

.method public enableCustomLayoutAnimation(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 4251
    iput-boolean p1, p0, Lcom/android/launcher3/home/HomeController;->mEnabledCustomLayoutAnimation:Z

    .line 4252
    return-void
.end method

.method public enterDragState(Z)V
    .locals 3
    .param p1, "animated"    # Z

    .prologue
    const/4 v2, 0x2

    .line 1011
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    # invokes: Lcom/android/launcher3/home/HomeController$State;->equal(I)Z
    invoke-static {v1, v2}, Lcom/android/launcher3/home/HomeController$State;->access$000(Lcom/android/launcher3/home/HomeController$State;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1025
    :goto_0
    return-void

    .line 1015
    :cond_0
    new-instance v0, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v0}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    .line 1016
    .local v0, "data":Lcom/android/launcher3/common/stage/StageEntry;
    iput-boolean p1, v0, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    .line 1017
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    # invokes: Lcom/android/launcher3/home/HomeController$State;->get()I
    invoke-static {v1}, Lcom/android/launcher3/home/HomeController$State;->access$200(Lcom/android/launcher3/home/HomeController$State;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/stage/StageEntry;->setInternalStateFrom(I)V

    .line 1018
    invoke-virtual {v0, v2}, Lcom/android/launcher3/common/stage/StageEntry;->setInternalStateTo(I)V

    .line 1020
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->isHomeStage()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1021
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher3/common/stage/StageManager;->finishAllStage(Lcom/android/launcher3/common/stage/StageEntry;)V

    goto :goto_0

    .line 1023
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/android/launcher3/common/stage/StageManager;->switchInternalState(Lcom/android/launcher3/common/stage/Stage;Lcom/android/launcher3/common/stage/StageEntry;)V

    goto :goto_0
.end method

.method public enterNormalState(Z)V
    .locals 2
    .param p1, "animated"    # Z

    .prologue
    .line 915
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/home/HomeController;->enterNormalState(ZLjava/lang/Runnable;Z)V

    .line 916
    return-void
.end method

.method public enterNormalState(ZZ)V
    .locals 1
    .param p1, "animated"    # Z
    .param p2, "forced"    # Z

    .prologue
    .line 919
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/launcher3/home/HomeController;->enterNormalState(ZLjava/lang/Runnable;Z)V

    .line 920
    return-void
.end method

.method enterOverviewState(Z)V
    .locals 7
    .param p1, "animated"    # Z

    .prologue
    .line 951
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->isHomeStage()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isModalState()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isScreenGridState()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 952
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isWorkspaceLocked()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isOverviewState()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 953
    :cond_1
    const-string v1, "Launcher.HomeController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not enterOverviewState : mLauncher.isHomeStage() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 954
    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->isHomeStage()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isModalState() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 955
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isModalState()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sScreenGridState() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 956
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isScreenGridState()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isWorkspaceLocked() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 957
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isWorkspaceLocked()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isOverviewState() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 958
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isOverviewState()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 953
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    :goto_0
    return-void

    .line 962
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/ZeroPageController;->hasMessages()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 963
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/ZeroPageController;->restoreOffset()V

    .line 966
    :cond_3
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v1

    const-string v2, "HOEE"

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 969
    new-instance v0, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v0}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    .line 970
    .local v0, "data":Lcom/android/launcher3/common/stage/StageEntry;
    iput-boolean p1, v0, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    .line 971
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    # invokes: Lcom/android/launcher3/home/HomeController$State;->get()I
    invoke-static {v1}, Lcom/android/launcher3/home/HomeController$State;->access$200(Lcom/android/launcher3/home/HomeController$State;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/stage/StageEntry;->setInternalStateFrom(I)V

    .line 972
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/stage/StageEntry;->setInternalStateTo(I)V

    .line 973
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/android/launcher3/common/stage/StageManager;->switchInternalState(Lcom/android/launcher3/common/stage/Stage;Lcom/android/launcher3/common/stage/StageEntry;)V

    goto :goto_0
.end method

.method enterResizeState(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/common/base/view/CellLayout;)V
    .locals 8
    .param p1, "hostView"    # Landroid/appwidget/AppWidgetHostView;
    .param p2, "layout"    # Lcom/android/launcher3/common/base/view/CellLayout;

    .prologue
    .line 1122
    new-instance v0, Lcom/android/launcher3/home/HomeController$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/launcher3/home/HomeController$3;-><init>(Lcom/android/launcher3/home/HomeController;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/common/base/view/CellLayout;)V

    .line 1132
    .local v0, "addResizeFrame":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1, p2}, Lcom/android/launcher3/home/Workspace;->getIdForScreen(Lcom/android/launcher3/common/base/view/CellLayout;)J

    move-result-wide v4

    .line 1133
    .local v4, "screenId":J
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1, v4, v5}, Lcom/android/launcher3/home/Workspace;->getPageIndexForScreenId(J)I

    move-result v1

    int-to-long v2, v1

    .line 1134
    .local v2, "pageIndex":J
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->getNextPage()I

    move-result v1

    int-to-long v6, v1

    cmp-long v1, v2, v6

    if-eqz v1, :cond_0

    .line 1135
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/home/HomeController;->enterNormalState(Z)V

    .line 1141
    :goto_0
    return-void

    .line 1136
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->isPageMoving()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1137
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 1139
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/home/Workspace;->setDelayedResizeRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method enterResizeStateDelay(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/common/base/view/CellLayout;)V
    .locals 1
    .param p1, "hostView"    # Landroid/appwidget/AppWidgetHostView;
    .param p2, "layout"    # Lcom/android/launcher3/common/base/view/CellLayout;

    .prologue
    .line 1118
    const/16 v0, 0xc8

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/home/HomeController;->enterResizeStateDelay(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/common/base/view/CellLayout;I)V

    .line 1119
    return-void
.end method

.method enterResizeStateDelay(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/common/base/view/CellLayout;I)V
    .locals 4
    .param p1, "hostView"    # Landroid/appwidget/AppWidgetHostView;
    .param p2, "layout"    # Lcom/android/launcher3/common/base/view/CellLayout;
    .param p3, "delay"    # I

    .prologue
    .line 1109
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/launcher3/home/HomeController$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/launcher3/home/HomeController$2;-><init>(Lcom/android/launcher3/home/HomeController;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/common/base/view/CellLayout;)V

    int-to-long v2, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1115
    return-void
.end method

.method public enterScreenGridState(Z)V
    .locals 4
    .param p1, "animated"    # Z

    .prologue
    const/4 v3, 0x0

    .line 977
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isWorkspaceLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 978
    const-string v1, "Launcher.HomeController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not enterScreenGridState : isWorkspaceLocked() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 979
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isWorkspaceLocked()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 978
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    :goto_0
    return-void

    .line 983
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->isHomeStage()Z

    move-result v1

    if-nez v1, :cond_1

    .line 984
    new-instance v0, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v0}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    .line 985
    .local v0, "data":Lcom/android/launcher3/common/stage/StageEntry;
    iput-boolean v3, v0, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    .line 986
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/android/launcher3/common/stage/StageManager;->startStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    .line 989
    .end local v0    # "data":Lcom/android/launcher3/common/stage/StageEntry;
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/launcher3/home/HomeController;->enterOverviewState(Z)V

    .line 991
    new-instance v0, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v0}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    .line 992
    .restart local v0    # "data":Lcom/android/launcher3/common/stage/StageEntry;
    iput-boolean p1, v0, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    .line 993
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    # invokes: Lcom/android/launcher3/home/HomeController$State;->get()I
    invoke-static {v1}, Lcom/android/launcher3/home/HomeController$State;->access$200(Lcom/android/launcher3/home/HomeController$State;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/stage/StageEntry;->setInternalStateFrom(I)V

    .line 994
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/stage/StageEntry;->setInternalStateTo(I)V

    .line 995
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/android/launcher3/common/stage/StageManager;->switchInternalState(Lcom/android/launcher3/common/stage/Stage;Lcom/android/launcher3/common/stage/StageEntry;)V

    goto :goto_0
.end method

.method enterSelectState(Z)V
    .locals 3
    .param p1, "animated"    # Z

    .prologue
    const/4 v2, 0x6

    .line 999
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->isHomeStage()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    # invokes: Lcom/android/launcher3/home/HomeController$State;->equal(I)Z
    invoke-static {v1, v2}, Lcom/android/launcher3/home/HomeController$State;->access$000(Lcom/android/launcher3/home/HomeController$State;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1008
    :cond_0
    :goto_0
    return-void

    .line 1003
    :cond_1
    new-instance v0, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v0}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    .line 1004
    .local v0, "data":Lcom/android/launcher3/common/stage/StageEntry;
    iput-boolean p1, v0, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    .line 1005
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    # invokes: Lcom/android/launcher3/home/HomeController$State;->get()I
    invoke-static {v1}, Lcom/android/launcher3/home/HomeController$State;->access$200(Lcom/android/launcher3/home/HomeController$State;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/stage/StageEntry;->setInternalStateFrom(I)V

    .line 1006
    invoke-virtual {v0, v2}, Lcom/android/launcher3/common/stage/StageEntry;->setInternalStateTo(I)V

    .line 1007
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/android/launcher3/common/stage/StageManager;->switchInternalState(Lcom/android/launcher3/common/stage/Stage;Lcom/android/launcher3/common/stage/StageEntry;)V

    goto :goto_0
.end method

.method public exitDragStateDelayed()V
    .locals 1

    .prologue
    .line 1028
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/HomeController;->exitDragStateDelayed(I)V

    .line 1029
    return-void
.end method

.method exitDragStateDelayed(I)V
    .locals 6
    .param p1, "delay"    # I

    .prologue
    .line 1032
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    const/4 v2, 0x2

    # invokes: Lcom/android/launcher3/home/HomeController$State;->equal(I)Z
    invoke-static {v1, v2}, Lcom/android/launcher3/home/HomeController$State;->access$000(Lcom/android/launcher3/home/HomeController$State;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1052
    :goto_0
    return-void

    .line 1037
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v1

    if-ne v1, p0, :cond_1

    .line 1038
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mExitDragStateHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/launcher3/home/HomeController$1;

    invoke-direct {v2, p0}, Lcom/android/launcher3/home/HomeController$1;-><init>(Lcom/android/launcher3/home/HomeController;)V

    int-to-long v4, p1

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1045
    :cond_1
    new-instance v0, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v0}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    .line 1046
    .local v0, "data":Lcom/android/launcher3/common/stage/StageEntry;
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    .line 1047
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    # invokes: Lcom/android/launcher3/home/HomeController$State;->get()I
    invoke-static {v1}, Lcom/android/launcher3/home/HomeController$State;->access$200(Lcom/android/launcher3/home/HomeController$State;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/stage/StageEntry;->setInternalStateFrom(I)V

    .line 1048
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/stage/StageEntry;->setInternalStateTo(I)V

    .line 1050
    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/HomeController;->switchInternalState(Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/Animator;

    goto :goto_0
.end method

.method public exitResizeState(Z)V
    .locals 1
    .param p1, "animated"    # Z

    .prologue
    .line 1144
    const-string v0, "4"

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/home/HomeController;->exitResizeState(ZLjava/lang/String;)V

    .line 1145
    return-void
.end method

.method public exitResizeState(ZLjava/lang/String;)V
    .locals 8
    .param p1, "animated"    # Z
    .param p2, "detail"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 1148
    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->isHomeStage()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1169
    :cond_0
    :goto_0
    return-void

    .line 1152
    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    invoke-virtual {v3}, Lcom/android/launcher3/common/view/DragLayer;->clearAllResizeFrames()Z

    move-result v1

    .line 1154
    .local v1, "isClearResizeFrames":Z
    if-eqz v1, :cond_0

    .line 1155
    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1157
    .local v2, "res":Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v3

    const v4, 0x7f080190

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0800ff

    .line 1158
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1157
    invoke-virtual {v3, v4, v5, p2}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1159
    sget-object v3, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080039

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    .line 1160
    invoke-virtual {v5}, Lcom/android/launcher3/home/Workspace;->getCurrentPageDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1159
    invoke-virtual {v3, v4}, Lcom/android/launcher3/util/Talk;->say(Ljava/lang/String;)V

    .line 1162
    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v3, v7}, Lcom/android/launcher3/Utilities;->changeEdgeHandleState(Landroid/content/Context;Z)V

    .line 1163
    new-instance v0, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v0}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    .line 1164
    .local v0, "data":Lcom/android/launcher3/common/stage/StageEntry;
    iput-boolean p1, v0, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    .line 1165
    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    # invokes: Lcom/android/launcher3/home/HomeController$State;->get()I
    invoke-static {v3}, Lcom/android/launcher3/home/HomeController$State;->access$200(Lcom/android/launcher3/home/HomeController$State;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/launcher3/common/stage/StageEntry;->setInternalStateFrom(I)V

    .line 1166
    invoke-virtual {v0, v7}, Lcom/android/launcher3/common/stage/StageEntry;->setInternalStateTo(I)V

    .line 1167
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v3

    invoke-virtual {v3, p0, v0}, Lcom/android/launcher3/common/stage/StageManager;->switchInternalState(Lcom/android/launcher3/common/stage/Stage;Lcom/android/launcher3/common/stage/StageEntry;)V

    goto :goto_0
.end method

.method exitScreenGridStateDelayed()V
    .locals 1

    .prologue
    .line 3847
    const/16 v0, 0xc8

    invoke-direct {p0, v0}, Lcom/android/launcher3/home/HomeController;->exitScreenGridStateDelayed(I)V

    .line 3848
    return-void
.end method

.method public findEmptyCell([I)J
    .locals 2
    .param p1, "targetCell"    # [I

    .prologue
    .line 3775
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->getNextPage()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/home/HomeController;->findEmptyCell([II)J

    move-result-wide v0

    return-wide v0
.end method

.method public findEmptyCell([II)J
    .locals 12
    .param p1, "targetCell"    # [I
    .param p2, "targetScreen"    # I

    .prologue
    .line 3779
    const/4 v6, 0x0

    .line 3780
    .local v6, "prevTargetX":I
    const/4 v7, 0x0

    .line 3782
    .local v7, "prevTargetY":I
    move v9, p2

    .local v9, "i":I
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->getPageCount()I

    move-result v0

    if-ge v9, v0, :cond_4

    .line 3783
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0, v9}, Lcom/android/launcher3/home/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 3784
    .local v8, "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    if-nez v8, :cond_1

    .line 3782
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 3788
    :cond_1
    invoke-virtual {v8}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountX()I

    move-result v3

    .line 3789
    .local v3, "countX":I
    invoke-virtual {v8}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountY()I

    move-result v4

    .line 3790
    .local v4, "countY":I
    invoke-virtual {v8}, Lcom/android/launcher3/common/base/view/CellLayout;->getOccupied()[[Z

    move-result-object v5

    .line 3792
    .local v5, "occupied":[[Z
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0, v9}, Lcom/android/launcher3/home/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v10

    .line 3793
    .local v10, "screenId":J
    const-wide/16 v0, -0xc9

    cmp-long v0, v10, v0

    if-nez v0, :cond_2

    .line 3794
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->commitExtraEmptyScreen()J

    .line 3797
    :cond_2
    const/4 v1, 0x1

    const/4 v2, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v7}, Lcom/android/launcher3/Utilities;->findVacantCellToRightBottom([IIIII[[ZII)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3815
    .end local v3    # "countX":I
    .end local v4    # "countY":I
    .end local v5    # "occupied":[[Z
    .end local v8    # "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v10    # "screenId":J
    :goto_1
    return-wide v10

    .line 3802
    .restart local v3    # "countX":I
    .restart local v4    # "countY":I
    .restart local v5    # "occupied":[[Z
    .restart local v8    # "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    .restart local v10    # "screenId":J
    :cond_3
    const/4 v1, 0x1

    const/4 v2, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v7}, Lcom/android/launcher3/Utilities;->findVacantCellToLeftTop([IIIII[[ZII)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3808
    .end local v3    # "countX":I
    .end local v4    # "countY":I
    .end local v5    # "occupied":[[Z
    .end local v8    # "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v10    # "screenId":J
    :cond_4
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->hasExtraEmptyScreen()Z

    move-result v0

    if-nez v0, :cond_5

    .line 3809
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->addExtraEmptyScreen()Z

    .line 3812
    :cond_5
    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v1, p1, v0

    .line 3813
    const/4 v0, 0x1

    const/4 v1, 0x0

    aput v1, p1, v0

    .line 3815
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->commitExtraEmptyScreen()J

    move-result-wide v10

    goto :goto_1
.end method

.method public finishAllStage()V
    .locals 3

    .prologue
    .line 4007
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/common/stage/StageManager;->getStackSize()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 4008
    new-instance v0, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v0}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    .line 4009
    .local v0, "data":Lcom/android/launcher3/common/stage/StageEntry;
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    .line 4010
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher3/common/stage/StageManager;->finishAllStage(Lcom/android/launcher3/common/stage/StageEntry;)V

    .line 4012
    .end local v0    # "data":Lcom/android/launcher3/common/stage/StageEntry;
    :cond_0
    return-void
.end method

.method public getAppWidgetHost()Lcom/android/launcher3/home/LauncherAppWidgetHost;
    .locals 1

    .prologue
    .line 1440
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mAppWidgetHost:Lcom/android/launcher3/home/LauncherAppWidgetHost;

    return-object v0
.end method

.method public getApproachingEndPoint()I
    .locals 2

    .prologue
    .line 3251
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mHomeContainer:Lcom/android/launcher3/home/HomeContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeContainer;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/home/HomeController;->mMoveToAppsApproachingEnd:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getApproachingStartPoint()I
    .locals 2

    .prologue
    .line 3246
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mHomeContainer:Lcom/android/launcher3/home/HomeContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeContainer;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/home/HomeController;->mMoveToAppsApproachingStart:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getBindController()Lcom/android/launcher3/home/HomeBindController;
    .locals 1

    .prologue
    .line 1436
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    return-object v0
.end method

.method public getCellLayout(JJ)Lcom/android/launcher3/common/base/view/CellLayout;
    .locals 3
    .param p1, "container"    # J
    .param p3, "screenId"    # J

    .prologue
    .line 2037
    const-wide/16 v0, -0x65

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 2038
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    if-eqz v0, :cond_0

    .line 2039
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Hotseat;->getLayout()Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    .line 2044
    :goto_0
    return-object v0

    .line 2041
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2044
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0, p3, p4}, Lcom/android/launcher3/home/Workspace;->getScreenWithId(J)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    goto :goto_0
.end method

.method public getContainerView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1177
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    return-object v0
.end method

.method public getDropTarget()Lcom/android/launcher3/common/drag/DropTarget;
    .locals 1

    .prologue
    .line 3256
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->getDragController()Lcom/android/launcher3/home/WorkspaceDragController;

    move-result-object v0

    return-object v0
.end method

.method public getFestivalPageController()Lcom/android/launcher3/home/FestivalPageController;
    .locals 1

    .prologue
    .line 1464
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mFestivalPageController:Lcom/android/launcher3/home/FestivalPageController;

    return-object v0
.end method

.method public getFolderForTag(Ljava/lang/Object;)Lcom/android/launcher3/folder/view/FolderView;
    .locals 1
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 2072
    new-instance v0, Lcom/android/launcher3/home/HomeController$10;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/home/HomeController$10;-><init>(Lcom/android/launcher3/home/HomeController;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/home/HomeController;->getFirstMatch(Lcom/android/launcher3/common/base/item/ItemOperator;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/folder/view/FolderView;

    return-object v0
.end method

.method public getFolderIconView(Lcom/android/launcher3/folder/FolderInfo;)Landroid/view/View;
    .locals 2
    .param p1, "folder"    # Lcom/android/launcher3/folder/FolderInfo;

    .prologue
    .line 4131
    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderInfo;->isContainApps()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4132
    const/4 v0, 0x0

    .line 4134
    :goto_0
    return-object v0

    :cond_0
    iget-wide v0, p1, Lcom/android/launcher3/folder/FolderInfo;->id:J

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/home/HomeController;->getHomescreenIconByItemId(J)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getFolderItemCount(Ljava/lang/String;)I
    .locals 10
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 4256
    const/4 v7, 0x0

    .line 4258
    .local v7, "resultCount":I
    iget-object v9, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    if-eqz v9, :cond_2

    if-eqz p1, :cond_2

    .line 4259
    iget-object v9, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v9}, Lcom/android/launcher3/home/Workspace;->getPageCount()I

    move-result v6

    .line 4261
    .local v6, "pageCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v6, :cond_2

    .line 4262
    iget-object v9, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v9, v3}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 4264
    .local v1, "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    if-eqz v1, :cond_1

    .line 4265
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v2

    .line 4266
    .local v2, "clc":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    if-eqz v2, :cond_1

    .line 4267
    invoke-virtual {v2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v0

    .line 4269
    .local v0, "childCount":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    if-ge v5, v0, :cond_1

    .line 4270
    invoke-virtual {v2, v5}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 4272
    .local v8, "v":Landroid/view/View;
    instance-of v9, v8, Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v9, :cond_0

    move-object v4, v8

    .line 4273
    check-cast v4, Lcom/android/launcher3/common/view/IconView;

    .line 4274
    .local v4, "iv":Lcom/android/launcher3/common/view/IconView;
    invoke-virtual {v4}, Lcom/android/launcher3/common/view/IconView;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 4275
    add-int/lit8 v7, v7, 0x1

    .line 4269
    .end local v4    # "iv":Lcom/android/launcher3/common/view/IconView;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 4261
    .end local v0    # "childCount":I
    .end local v2    # "clc":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    .end local v5    # "j":I
    .end local v8    # "v":Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4284
    .end local v1    # "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v3    # "i":I
    .end local v6    # "pageCount":I
    :cond_2
    return v7
.end method

.method getHomeContainer()Lcom/android/launcher3/home/HomeContainer;
    .locals 1

    .prologue
    .line 3415
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mHomeContainer:Lcom/android/launcher3/home/HomeContainer;

    return-object v0
.end method

.method getHomeLoader()Lcom/android/launcher3/home/HomeLoader;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    return-object v0
.end method

.method public getHomePageIndicatorView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1460
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mPageIndicatorView:Landroid/view/View;

    return-object v0
.end method

.method public getHomescreenIconByItemId(J)Landroid/view/View;
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 2083
    new-instance v0, Lcom/android/launcher3/home/HomeController$11;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/launcher3/home/HomeController$11;-><init>(Lcom/android/launcher3/home/HomeController;J)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/home/HomeController;->getFirstMatch(Lcom/android/launcher3/common/base/item/ItemOperator;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getHotseat()Lcom/android/launcher3/home/Hotseat;
    .locals 1

    .prologue
    .line 1448
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    return-object v0
.end method

.method getLauncher()Lcom/android/launcher3/Launcher;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method public getLocationInfoFromDB(Lcom/android/launcher3/common/base/item/ItemInfo;)Lcom/android/launcher3/common/base/item/ItemInfo;
    .locals 1
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 3994
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOverviewPanel()Lcom/android/launcher3/home/OverviewPanel;
    .locals 1

    .prologue
    .line 1452
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mOverviewPanel:Lcom/android/launcher3/home/OverviewPanel;

    return-object v0
.end method

.method public getPageIndexForDragView(Lcom/android/launcher3/common/base/item/ItemInfo;)I
    .locals 1
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 4232
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->getDragController()Lcom/android/launcher3/home/WorkspaceDragController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/home/WorkspaceDragController;->getPageIndexForDragView(Lcom/android/launcher3/common/base/item/ItemInfo;)I

    move-result v0

    return v0
.end method

.method getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher3/common/base/view/CellLayout;
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2049
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeController;->getWorkspaceAndHotseatCellLayouts()Ljava/util/ArrayList;

    move-result-object v1

    .line 2050
    .local v1, "layouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/view/CellLayout;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 2051
    .local v0, "layout":Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->indexOfChild(Landroid/view/View;)I

    move-result v3

    const/4 v4, -0x1

    if-le v3, v4, :cond_0

    .line 2055
    .end local v0    # "layout":Lcom/android/launcher3/common/base/view/CellLayout;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getPendingAddItem()Lcom/android/launcher3/home/HomeController$PendingAddArguments;
    .locals 1

    .prologue
    .line 2011
    sget-object v0, Lcom/android/launcher3/home/HomeController;->sPendingAddItem:Lcom/android/launcher3/home/HomeController$PendingAddArguments;

    return-object v0
.end method

.method public getScreenGridPanel()Lcom/android/launcher3/home/ScreenGridPanel;
    .locals 1

    .prologue
    .line 1456
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mScreenGridPanel:Lcom/android/launcher3/home/ScreenGridPanel;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 1172
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    # invokes: Lcom/android/launcher3/home/HomeController$State;->get()I
    invoke-static {v0}, Lcom/android/launcher3/home/HomeController$State;->access$200(Lcom/android/launcher3/home/HomeController$State;)I

    move-result v0

    return v0
.end method

.method public getTrayLevel()Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;
    .locals 1

    .prologue
    .line 3229
    sget-object v0, Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;->Overground:Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    return-object v0
.end method

.method public getTrayScale()F
    .locals 1

    .prologue
    .line 3241
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mHomeContainer:Lcom/android/launcher3/home/HomeContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeContainer;->getScaleY()F

    move-result v0

    return v0
.end method

.method getViewForTag(Ljava/lang/Object;)Landroid/view/View;
    .locals 1
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 2093
    new-instance v0, Lcom/android/launcher3/home/HomeController$12;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/home/HomeController$12;-><init>(Lcom/android/launcher3/home/HomeController;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/home/HomeController;->getFirstMatch(Lcom/android/launcher3/common/base/item/ItemOperator;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method getWidgetForAppWidgetId(I)Lcom/android/launcher3/home/LauncherAppWidgetHostView;
    .locals 1
    .param p1, "appWidgetId"    # I

    .prologue
    .line 2103
    new-instance v0, Lcom/android/launcher3/home/HomeController$13;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/home/HomeController$13;-><init>(Lcom/android/launcher3/home/HomeController;I)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/home/HomeController;->getFirstMatch(Lcom/android/launcher3/common/base/item/ItemOperator;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    return-object v0
.end method

.method public getWorkspace()Lcom/android/launcher3/home/Workspace;
    .locals 1

    .prologue
    .line 1444
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    return-object v0
.end method

.method public getZeroPageController()Lcom/android/launcher3/home/ZeroPageController;
    .locals 1

    .prologue
    .line 3998
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    return-object v0
.end method

.method public hasStartedSFinder()Z
    .locals 1

    .prologue
    .line 3419
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mHomeContainer:Lcom/android/launcher3/home/HomeContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeContainer;->hasStartedSFinder()Z

    move-result v0

    return v0
.end method

.method initBounceAnimation()V
    .locals 1

    .prologue
    .line 4335
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mBounceAnimation:Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;

    if-eqz v0, :cond_0

    .line 4336
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mBounceAnimation:Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;

    invoke-virtual {v0}, Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;->stop()V

    .line 4337
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/home/HomeController;->mBounceAnimation:Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;

    .line 4339
    :cond_0
    return-void
.end method

.method public initStageView()V
    .locals 11

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 318
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher3/home/HomeController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    .line 319
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mHomeAnimation:Lcom/android/launcher3/home/HomeTransitionAnimation;

    invoke-virtual {v6}, Lcom/android/launcher3/home/HomeTransitionAnimation;->setupView()V

    .line 322
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v7, 0x7f0f0098

    invoke-virtual {v6, v7}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/home/HomeContainer;

    iput-object v6, p0, Lcom/android/launcher3/home/HomeController;->mHomeContainer:Lcom/android/launcher3/home/HomeContainer;

    .line 323
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mHomeContainer:Lcom/android/launcher3/home/HomeContainer;

    invoke-virtual {v6, p0}, Lcom/android/launcher3/home/HomeContainer;->bindController(Lcom/android/launcher3/common/base/controller/ControllerBase;)V

    .line 324
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mHomeContainer:Lcom/android/launcher3/home/HomeContainer;

    iget-object v7, p0, Lcom/android/launcher3/home/HomeController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-virtual {v6, v7}, Lcom/android/launcher3/home/HomeContainer;->setTrayManager(Lcom/android/launcher3/common/tray/TrayManager;)V

    .line 325
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportNavigationBar()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 326
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v0

    .line 327
    .local v0, "dp":Lcom/android/launcher3/common/deviceprofile/DeviceProfile;
    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->isVerticalBarLayout()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 328
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mHomeContainer:Lcom/android/launcher3/home/HomeContainer;

    iget v7, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->navigationBarHeight:I

    invoke-virtual {v6, v10, v10, v7, v10}, Lcom/android/launcher3/home/HomeContainer;->setPadding(IIII)V

    .line 335
    .end local v0    # "dp":Lcom/android/launcher3/common/deviceprofile/DeviceProfile;
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v7, 0x7f0f0004

    invoke-virtual {v6, v7}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/home/Workspace;

    iput-object v6, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    .line 336
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v6, p0}, Lcom/android/launcher3/home/Workspace;->bindController(Lcom/android/launcher3/common/base/controller/ControllerBase;)V

    .line 337
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v6, v10}, Lcom/android/launcher3/home/Workspace;->setHapticFeedbackEnabled(Z)V

    .line 338
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v6, p0}, Lcom/android/launcher3/home/Workspace;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 339
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-object v7, p0, Lcom/android/launcher3/home/HomeController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    iget-object v8, p0, Lcom/android/launcher3/home/HomeController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    invoke-virtual {v6, v7, v8}, Lcom/android/launcher3/home/Workspace;->setup(Lcom/android/launcher3/common/drag/DragManager;Lcom/android/launcher3/common/view/DragLayer;)V

    .line 340
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v6}, Lcom/android/launcher3/home/Workspace;->initDefaultHomeIcon()V

    .line 343
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v7, 0x7f0f0003

    invoke-virtual {v6, v7}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/home/Hotseat;

    iput-object v6, p0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    .line 344
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    if-eqz v6, :cond_1

    .line 345
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v6, p0}, Lcom/android/launcher3/home/Hotseat;->bindController(Lcom/android/launcher3/common/base/controller/ControllerBase;)V

    .line 346
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v6}, Lcom/android/launcher3/home/Hotseat;->resetLayout()V

    .line 347
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v6, p0}, Lcom/android/launcher3/home/Hotseat;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 348
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    iget-object v7, p0, Lcom/android/launcher3/home/HomeController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v6, v7}, Lcom/android/launcher3/home/Hotseat;->setup(Lcom/android/launcher3/common/drag/DragManager;)V

    .line 351
    :cond_1
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v7, 0x7f0f0097

    invoke-virtual {v6, v7}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/home/DropTargetBar;

    iput-object v6, p0, Lcom/android/launcher3/home/HomeController;->mDropTargetBar:Lcom/android/launcher3/home/DropTargetBar;

    .line 352
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mDropTargetBar:Lcom/android/launcher3/home/DropTargetBar;

    iget-object v7, p0, Lcom/android/launcher3/home/HomeController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v6, v7}, Lcom/android/launcher3/home/DropTargetBar;->setup(Lcom/android/launcher3/common/drag/DragManager;)V

    .line 355
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v7, 0x7f0f007f

    invoke-virtual {v6, v7}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/home/OverviewPanel;

    iput-object v6, p0, Lcom/android/launcher3/home/HomeController;->mOverviewPanel:Lcom/android/launcher3/home/OverviewPanel;

    .line 356
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mOverviewPanel:Lcom/android/launcher3/home/OverviewPanel;

    invoke-virtual {v6, p0}, Lcom/android/launcher3/home/OverviewPanel;->bindController(Lcom/android/launcher3/common/base/controller/ControllerBase;)V

    .line 359
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v7, 0x7f0f0080

    invoke-virtual {v6, v7}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/home/ScreenGridPanel;

    iput-object v6, p0, Lcom/android/launcher3/home/HomeController;->mScreenGridPanel:Lcom/android/launcher3/home/ScreenGridPanel;

    .line 360
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mScreenGridPanel:Lcom/android/launcher3/home/ScreenGridPanel;

    invoke-virtual {v6, p0}, Lcom/android/launcher3/home/ScreenGridPanel;->bindController(Lcom/android/launcher3/common/base/controller/ControllerBase;)V

    .line 361
    new-instance v6, Lcom/android/launcher3/home/ScreenGridHelper;

    iget-object v7, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v6, v7, p0}, Lcom/android/launcher3/home/ScreenGridHelper;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/home/HomeController;)V

    iput-object v6, p0, Lcom/android/launcher3/home/HomeController;->mScreenGridHelper:Lcom/android/launcher3/home/ScreenGridHelper;

    .line 363
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mScreenGridPanel:Lcom/android/launcher3/home/ScreenGridPanel;

    invoke-virtual {v6}, Lcom/android/launcher3/home/ScreenGridPanel;->initScreenGridTopContainer()V

    .line 366
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v7, 0x7f0f007e

    invoke-virtual {v6, v7}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher3/home/HomeController;->mPageIndicatorView:Landroid/view/View;

    .line 367
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mPageIndicatorView:Landroid/view/View;

    if-eqz v6, :cond_3

    .line 370
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mPageIndicatorView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 371
    .local v4, "oldLp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mHomeContainer:Lcom/android/launcher3/home/HomeContainer;

    iget-object v7, p0, Lcom/android/launcher3/home/HomeController;->mPageIndicatorView:Landroid/view/View;

    invoke-virtual {v6, v7}, Lcom/android/launcher3/home/HomeContainer;->removeView(Landroid/view/View;)V

    .line 373
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    invoke-virtual {v6}, Lcom/android/launcher3/common/view/DragLayer;->getChildCount()I

    move-result v2

    .line 374
    .local v2, "indexToAddView":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    invoke-virtual {v6}, Lcom/android/launcher3/common/view/DragLayer;->getChildCount()I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 375
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mHomeContainer:Lcom/android/launcher3/home/HomeContainer;

    iget-object v7, p0, Lcom/android/launcher3/home/HomeController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    invoke-virtual {v7, v1}, Lcom/android/launcher3/common/view/DragLayer;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 376
    add-int/lit8 v2, v1, 0x1

    .line 381
    :cond_2
    new-instance v3, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;

    invoke-direct {v3, v4}, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 382
    .local v3, "newLp":Lcom/android/launcher3/common/view/DragLayer$LayoutParams;
    const/16 v6, 0x51

    iput v6, v3, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->gravity:I

    .line 383
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    iget-object v7, p0, Lcom/android/launcher3/home/HomeController;->mPageIndicatorView:Landroid/view/View;

    invoke-virtual {v6, v7, v2, v3}, Lcom/android/launcher3/common/view/DragLayer;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 386
    .end local v1    # "i":I
    .end local v2    # "indexToAddView":I
    .end local v3    # "newLp":Lcom/android/launcher3/common/view/DragLayer$LayoutParams;
    .end local v4    # "oldLp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_3
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 387
    .local v5, "res":Landroid/content/res/Resources;
    const v6, 0x7f0e0009

    invoke-virtual {v5, v6, v9, v9}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v6

    iput v6, p0, Lcom/android/launcher3/home/HomeController;->mPageSnapMovingRatioOnHome:F

    .line 388
    const v6, 0x7f09009e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/android/launcher3/home/HomeController;->mMoveToAppsApproachingStart:I

    .line 389
    const v6, 0x7f09009c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/android/launcher3/home/HomeController;->mMoveToAppsApproachingEnd:I

    .line 390
    const v6, 0x7f0900f0

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/android/launcher3/home/HomeController;->mHotseatMoveRange:I

    .line 392
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    iget-object v7, p0, Lcom/android/launcher3/home/HomeController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    iget-object v8, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-object v9, p0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/launcher3/home/HomeBindController;->setup(Lcom/android/launcher3/common/drag/DragManager;Lcom/android/launcher3/home/Workspace;Lcom/android/launcher3/home/Hotseat;)V

    .line 394
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v6}, Lcom/android/launcher3/home/Workspace;->getZeroPageController()Lcom/android/launcher3/home/ZeroPageController;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher3/home/HomeController;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    .line 395
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    if-eqz v6, :cond_5

    .line 396
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    invoke-virtual {v6}, Lcom/android/launcher3/home/ZeroPageController;->setup()V

    .line 397
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportZeroPageHome()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isModalState()Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 398
    invoke-static {v6, v10}, Lcom/android/launcher3/home/ZeroPageController;->isActiveZeroPage(Landroid/content/Context;Z)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    .line 399
    invoke-virtual {v6}, Lcom/android/launcher3/home/Workspace;->getDefaultPage()I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_4

    .line 400
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    invoke-virtual {v6}, Lcom/android/launcher3/home/ZeroPageController;->startZeroPage()V

    .line 403
    :cond_4
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v7, 0x7f0f0099

    invoke-virtual {v6, v7}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/home/EdgeLight;

    iput-object v6, p0, Lcom/android/launcher3/home/HomeController;->mEdgeLight:Lcom/android/launcher3/home/EdgeLight;

    .line 404
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mEdgeLight:Lcom/android/launcher3/home/EdgeLight;

    if-eqz v6, :cond_5

    .line 405
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mEdgeLight:Lcom/android/launcher3/home/EdgeLight;

    invoke-virtual {v6, p0}, Lcom/android/launcher3/home/EdgeLight;->registerContentObserver(Lcom/android/launcher3/home/HomeController;)V

    .line 409
    :cond_5
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportMultiSelect()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 410
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getMultiSelectManager()Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher3/home/HomeController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    .line 411
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    if-eqz v6, :cond_6

    .line 412
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v6, p0}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->addMultiSelectCallbacks(Lcom/android/launcher3/common/multiselect/MultiSelectManager$MultiSelectListener;)V

    .line 416
    :cond_6
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFestivalPage()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 417
    new-instance v6, Lcom/android/launcher3/home/FestivalPageController;

    iget-object v7, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v6, v7, p0}, Lcom/android/launcher3/home/FestivalPageController;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/home/HomeController;)V

    iput-object v6, p0, Lcom/android/launcher3/home/HomeController;->mFestivalPageController:Lcom/android/launcher3/home/FestivalPageController;

    .line 420
    :cond_7
    invoke-super {p0}, Lcom/android/launcher3/common/stage/Stage;->initStageView()V

    .line 421
    return-void

    .line 330
    .end local v5    # "res":Landroid/content/res/Resources;
    .restart local v0    # "dp":Lcom/android/launcher3/common/deviceprofile/DeviceProfile;
    :cond_8
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mHomeContainer:Lcom/android/launcher3/home/HomeContainer;

    iget v7, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->navigationBarHeight:I

    invoke-virtual {v6, v10, v10, v10, v7}, Lcom/android/launcher3/home/HomeContainer;->setPadding(IIII)V

    goto/16 :goto_0

    .line 374
    .end local v0    # "dp":Lcom/android/launcher3/common/deviceprofile/DeviceProfile;
    .restart local v1    # "i":I
    .restart local v2    # "indexToAddView":I
    .restart local v4    # "oldLp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1
.end method

.method isChangeGridState()Z
    .locals 1

    .prologue
    .line 3831
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mScreenGridHelper:Lcom/android/launcher3/home/ScreenGridHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/home/ScreenGridHelper;->isChangeGridState()Z

    move-result v0

    return v0
.end method

.method public isItemInFolder(Lcom/android/launcher3/common/base/item/ItemInfo;)Z
    .locals 4
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 2271
    iget-wide v0, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v2, -0x64

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v2, -0x65

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v2, -0x66

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 2274
    const/4 v0, 0x1

    .line 2276
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isModalState()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1473
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    # invokes: Lcom/android/launcher3/home/HomeController$State;->equal(I)Z
    invoke-static {v1, v0}, Lcom/android/launcher3/home/HomeController$State;->access$000(Lcom/android/launcher3/home/HomeController$State;I)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isNormalState()Z
    .locals 2

    .prologue
    .line 1481
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    const/4 v1, 0x1

    # invokes: Lcom/android/launcher3/home/HomeController$State;->equal(I)Z
    invoke-static {v0, v1}, Lcom/android/launcher3/home/HomeController$State;->access$000(Lcom/android/launcher3/home/HomeController$State;I)Z

    move-result v0

    return v0
.end method

.method isOverviewState()Z
    .locals 2

    .prologue
    .line 1477
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    const/4 v1, 0x4

    # invokes: Lcom/android/launcher3/home/HomeController$State;->equal(I)Z
    invoke-static {v0, v1}, Lcom/android/launcher3/home/HomeController$State;->access$000(Lcom/android/launcher3/home/HomeController$State;I)Z

    move-result v0

    return v0
.end method

.method isReorderAnimating()Z
    .locals 3

    .prologue
    .line 3566
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 3567
    .local v0, "currentPage":Lcom/android/launcher3/common/base/view/CellLayout;
    if-eqz v0, :cond_0

    .line 3568
    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->isReorderAnimating()Z

    move-result v1

    .line 3570
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isRestoring()Z
    .locals 1

    .prologue
    .line 1416
    iget-boolean v0, p0, Lcom/android/launcher3/home/HomeController;->mRestoring:Z

    return v0
.end method

.method public isScreenGridState()Z
    .locals 2

    .prologue
    .line 1489
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    const/4 v1, 0x5

    # invokes: Lcom/android/launcher3/home/HomeController$State;->equal(I)Z
    invoke-static {v0, v1}, Lcom/android/launcher3/home/HomeController$State;->access$000(Lcom/android/launcher3/home/HomeController$State;I)Z

    move-result v0

    return v0
.end method

.method isSelectState()Z
    .locals 2

    .prologue
    .line 1485
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    const/4 v1, 0x6

    # invokes: Lcom/android/launcher3/home/HomeController$State;->equal(I)Z
    invoke-static {v0, v1}, Lcom/android/launcher3/home/HomeController$State;->access$000(Lcom/android/launcher3/home/HomeController$State;I)Z

    move-result v0

    return v0
.end method

.method isStartedSwipeAffordanceAnim()Z
    .locals 1

    .prologue
    .line 4372
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mSwipeAffordance:Lcom/android/launcher3/home/SwipeAffordance;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mSwipeAffordance:Lcom/android/launcher3/home/SwipeAffordance;

    invoke-virtual {v0}, Lcom/android/launcher3/home/SwipeAffordance;->isStartedAnim()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isSwitchingState()Z
    .locals 1

    .prologue
    .line 1468
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/stage/StageManager;->isRunningAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1469
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isSelectState()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isRunningStateChangeAnimation()Z

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

.method public isVisibleGridPanel()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 4384
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mScreenGridPanel:Lcom/android/launcher3/home/ScreenGridPanel;

    if-eqz v1, :cond_0

    .line 4385
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mScreenGridPanel:Lcom/android/launcher3/home/ScreenGridPanel;

    invoke-virtual {v1}, Lcom/android/launcher3/home/ScreenGridPanel;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mScreenGridPanel:Lcom/android/launcher3/home/ScreenGridPanel;

    .line 4386
    invoke-virtual {v1}, Lcom/android/launcher3/home/ScreenGridPanel;->getAlpha()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 4388
    :cond_0
    return v0
.end method

.method public isWaitingForResult()Z
    .locals 1

    .prologue
    .line 1432
    iget-boolean v0, p0, Lcom/android/launcher3/home/HomeController;->mWaitingForResult:Z

    return v0
.end method

.method isWorkspaceLocked()Z
    .locals 1

    .prologue
    .line 1424
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeBindController;->isWorkspaceLoading()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/home/HomeController;->mWaitingForResult:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method modifyItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJII)V
    .locals 12
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p2, "container"    # J
    .param p4, "screenId"    # J
    .param p6, "cellX"    # I
    .param p7, "cellY"    # I

    .prologue
    .line 2970
    const/4 v8, -0x1

    const/4 v9, -0x1

    iget v10, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->hidden:I

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v10}, Lcom/android/launcher3/home/HomeController;->modifyItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJIIIII)V

    .line 2971
    return-void
.end method

.method modifyItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJIIII)V
    .locals 12
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p2, "container"    # J
    .param p4, "screenId"    # J
    .param p6, "cellX"    # I
    .param p7, "cellY"    # I
    .param p8, "spanX"    # I
    .param p9, "spanY"    # I

    .prologue
    .line 2975
    iget v10, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->hidden:I

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v10}, Lcom/android/launcher3/home/HomeController;->modifyItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJIIIII)V

    .line 2976
    return-void
.end method

.method modifyItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJIIIII)V
    .locals 10
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p2, "container"    # J
    .param p4, "screenId"    # J
    .param p6, "cellX"    # I
    .param p7, "cellY"    # I
    .param p8, "spanX"    # I
    .param p9, "spanY"    # I
    .param p10, "hidden"    # I

    .prologue
    .line 2980
    iget v3, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    move/from16 v0, p7

    if-ne v3, v0, :cond_0

    iget v3, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    move/from16 v0, p6

    if-eq v3, v0, :cond_1

    .line 2981
    :cond_0
    instance-of v3, p1, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    if-eqz v3, :cond_4

    .line 2982
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v3

    const-string v4, "IWAR"

    const-string v5, "Home_Widget_Longpress"

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 2990
    :cond_1
    :goto_0
    iput-wide p2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    .line 2991
    move/from16 v0, p6

    iput v0, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    .line 2992
    move/from16 v0, p7

    iput v0, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    .line 2993
    const/4 v3, -0x1

    move/from16 v0, p8

    if-le v0, v3, :cond_2

    const/4 v3, -0x1

    move/from16 v0, p9

    if-le v0, v3, :cond_2

    .line 2994
    move/from16 v0, p8

    iput v0, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    .line 2995
    move/from16 v0, p9

    iput v0, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    .line 3000
    :cond_2
    const-wide/16 v4, 0x0

    cmp-long v3, p4, v4

    if-gez v3, :cond_5

    const-wide/16 v4, -0x65

    cmp-long v3, p2, v4

    if-nez v3, :cond_5

    .line 3001
    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    move/from16 v0, p6

    move/from16 v1, p7

    invoke-virtual {v3, v0, v1}, Lcom/android/launcher3/home/Hotseat;->getOrderInHotseat(II)I

    move-result v3

    int-to-long v4, v3

    iput-wide v4, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    .line 3006
    :goto_1
    move/from16 v0, p10

    iput v0, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->hidden:I

    .line 3008
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 3010
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "container"

    iget-wide v4, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3011
    const-string v3, "cellX"

    iget v4, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3012
    const-string v3, "cellY"

    iget v4, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3013
    const-string v3, "rank"

    iget v4, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3014
    const-string v3, "screen"

    iget-wide v4, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3015
    const-string v3, "hidden"

    iget v4, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->hidden:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3017
    const/4 v3, -0x1

    move/from16 v0, p8

    if-le v0, v3, :cond_3

    const/4 v3, -0x1

    move/from16 v0, p9

    if-le v0, v3, :cond_3

    .line 3018
    const-string v3, "spanX"

    iget v4, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3019
    const-string v3, "spanY"

    iget v4, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3022
    :cond_3
    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    invoke-virtual {v3, v2, p1}, Lcom/android/launcher3/common/model/FavoritesUpdater;->updateItem(Landroid/content/ContentValues;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 3023
    return-void

    .line 2985
    .end local v2    # "values":Landroid/content/ContentValues;
    :cond_4
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v3

    const-string v4, "IWAR"

    const-string v5, "Home_Icon_Longpress"

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    goto/16 :goto_0

    .line 3003
    :cond_5
    iput-wide p4, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    goto/16 :goto_1
.end method

.method public modifyItemsInDb(Ljava/util/ArrayList;JI)V
    .locals 8
    .param p2, "container"    # J
    .param p4, "screen"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;JI)V"
        }
    .end annotation

    .prologue
    .line 3028
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3029
    .local v0, "contentValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3031
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 3032
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 3033
    .local v3, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    iput-wide p2, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    .line 3037
    if-gez p4, :cond_0

    const-wide/16 v6, -0x65

    cmp-long v5, p2, v6

    if-nez v5, :cond_0

    .line 3038
    iget-object v5, p0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    iget v6, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    iget v7, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    invoke-virtual {v5, v6, v7}, Lcom/android/launcher3/home/Hotseat;->getOrderInHotseat(II)I

    move-result v5

    int-to-long v6, v5

    iput-wide v6, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    .line 3043
    :goto_1
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 3044
    .local v4, "values":Landroid/content/ContentValues;
    const-string v5, "container"

    iget-wide v6, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3045
    const-string v5, "cellX"

    iget v6, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3046
    const-string v5, "cellY"

    iget v6, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3047
    const-string v5, "rank"

    iget v6, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3048
    const-string v5, "screen"

    iget-wide v6, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3050
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3031
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3040
    .end local v4    # "values":Landroid/content/ContentValues;
    :cond_0
    int-to-long v6, p4

    iput-wide v6, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    goto :goto_1

    .line 3052
    .end local v3    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_1
    iget-object v5, p0, Lcom/android/launcher3/home/HomeController;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5, v6, v0, p1}, Lcom/android/launcher3/common/model/FavoritesUpdater;->updateItemsInDatabaseHelper(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 3053
    return-void
.end method

.method public moveItemFromFolder(Lcom/android/launcher3/common/base/item/IconInfo;)V
    .locals 8
    .param p1, "iconInfo"    # Lcom/android/launcher3/common/base/item/IconInfo;

    .prologue
    const/4 v6, 0x0

    .line 2865
    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getLauncherModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherModel;->getHomeLoader()Lcom/android/launcher3/home/HomeLoader;

    move-result-object v1

    .line 2866
    .local v1, "homeLoader":Lcom/android/launcher3/home/HomeLoader;
    iget-wide v4, p1, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    invoke-virtual {v1, v4, v5}, Lcom/android/launcher3/home/HomeLoader;->getItemById(J)Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/folder/FolderInfo;

    .line 2867
    .local v0, "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/FolderInfo;->remove(Lcom/android/launcher3/common/base/item/IconInfo;)V

    .line 2868
    const/4 v3, 0x2

    new-array v2, v3, [I

    .line 2869
    .local v2, "targetCell":[I
    const-wide/16 v4, -0x64

    iput-wide v4, p1, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    .line 2870
    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher3/home/Workspace;->getDefaultPage()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/launcher3/home/HomeController;->findEmptyCell([II)J

    move-result-wide v4

    iput-wide v4, p1, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    .line 2871
    aget v3, v2, v6

    iput v3, p1, Lcom/android/launcher3/common/base/item/IconInfo;->cellX:I

    .line 2872
    const/4 v3, 0x1

    aget v3, v2, v3

    iput v3, p1, Lcom/android/launcher3/common/base/item/IconInfo;->cellY:I

    .line 2874
    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/HomeController;->updateItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 2875
    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    invoke-virtual {v3, p1, v6}, Lcom/android/launcher3/home/HomeBindController;->bindItem(Lcom/android/launcher3/common/base/item/ItemInfo;Z)V

    .line 2877
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/android/launcher3/home/HomeController$25;

    invoke-direct {v4, p0, p1}, Lcom/android/launcher3/home/HomeController$25;-><init>(Lcom/android/launcher3/home/HomeController;Lcom/android/launcher3/common/base/item/IconInfo;)V

    const-wide/16 v6, 0x1f4

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2885
    return-void
.end method

.method public moveOutItemsFromLockedFolder(Lcom/android/launcher3/folder/FolderInfo;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 23
    .param p1, "folder"    # Lcom/android/launcher3/folder/FolderInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/folder/FolderInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4079
    .local p2, "homeNeedUpdateInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    .local p3, "appsNeedUpdateInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/folder/FolderInfo;->isContainApps()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 4127
    :cond_0
    return-void

    .line 4082
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/home/HomeController;->getBindController()Lcom/android/launcher3/home/HomeBindController;

    move-result-object v17

    .line 4083
    .local v17, "homeBindController":Lcom/android/launcher3/home/HomeBindController;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/HomeController;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    invoke-virtual {v6}, Lcom/android/launcher3/home/HomeLoader;->getItemPositionHelper()Lcom/android/launcher3/home/HomeItemPositionHelper;

    move-result-object v2

    .line 4084
    .local v2, "homeItemPositionHelper":Lcom/android/launcher3/home/HomeItemPositionHelper;
    const-string v6, "Launcher.HomeController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "the folder title of moveoutHomeOrAppsItemsFromLockedFolder is  :  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/launcher3/folder/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4085
    const/16 v19, 0x0

    .local v19, "index":I
    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    move/from16 v0, v19

    if-ge v0, v6, :cond_0

    .line 4086
    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 4087
    .local v20, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/FolderInfo;->remove(Lcom/android/launcher3/common/base/item/IconInfo;)V

    .line 4088
    const/4 v6, 0x2

    new-array v3, v6, [I

    .line 4089
    .local v3, "xy":[I
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/launcher3/folder/FolderInfo;->screenId:J

    .line 4090
    .local v4, "screenId":J
    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/launcher3/folder/FolderInfo;->cellX:I

    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/launcher3/folder/FolderInfo;->cellY:I

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/home/HomeItemPositionHelper;->findNearEmptyCell([IJII)Z

    move-result v16

    .line 4091
    .local v16, "found":Z
    const-string v6, "Launcher.HomeController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " moveout found pos is   :  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " / "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    aget v9, v3, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " / "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x1

    aget v9, v3, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4092
    if-nez v16, :cond_4

    .line 4093
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/HomeController;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    invoke-virtual {v6}, Lcom/android/launcher3/home/HomeLoader;->getWorkspaceScreenCount()I

    move-result v21

    .line 4094
    .local v21, "screenCount":I
    const/16 v22, 0x0

    .line 4095
    .local v22, "startPage":I
    move/from16 v18, v22

    .local v18, "i":I
    :goto_1
    move/from16 v0, v18

    move/from16 v1, v21

    if-ge v0, v1, :cond_3

    if-nez v16, :cond_3

    .line 4096
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/HomeController;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Lcom/android/launcher3/home/HomeLoader;->getWorkspaceScreenId(I)J

    move-result-wide v4

    .line 4097
    move/from16 v0, v18

    int-to-long v8, v0

    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/android/launcher3/folder/FolderInfo;->screenId:J

    cmp-long v6, v8, v10

    if-eqz v6, :cond_2

    .line 4098
    move/from16 v0, v18

    int-to-long v8, v0

    const/4 v10, 0x1

    const/4 v11, 0x1

    move-object v6, v2

    move-object v7, v3

    invoke-virtual/range {v6 .. v11}, Lcom/android/launcher3/home/HomeItemPositionHelper;->findEmptyCell([IJII)Z

    move-result v16

    .line 4095
    :cond_2
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 4101
    :cond_3
    if-nez v16, :cond_4

    .line 4102
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/HomeController;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    const-wide/16 v10, -0x1

    move/from16 v0, v21

    invoke-virtual {v6, v8, v0, v10, v11}, Lcom/android/launcher3/home/HomeLoader;->insertWorkspaceScreen(Landroid/content/Context;IJ)J

    move-result-wide v4

    .line 4105
    .end local v18    # "i":I
    .end local v21    # "screenCount":I
    .end local v22    # "startPage":I
    :cond_4
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/HomeBindController;->createShortcut(Lcom/android/launcher3/common/base/item/IconInfo;)Landroid/view/View;

    move-result-object v7

    .line 4106
    .local v7, "v":Landroid/view/View;
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v8, 0x1

    if-ge v6, v8, :cond_5

    .line 4107
    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/launcher3/folder/FolderInfo;->cellX:I

    move-object/from16 v0, v20

    iput v6, v0, Lcom/android/launcher3/common/base/item/IconInfo;->cellX:I

    .line 4108
    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/launcher3/folder/FolderInfo;->cellY:I

    move-object/from16 v0, v20

    iput v6, v0, Lcom/android/launcher3/common/base/item/IconInfo;->cellY:I

    .line 4109
    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/android/launcher3/folder/FolderInfo;->screenId:J

    move-object/from16 v0, v20

    iput-wide v8, v0, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    .line 4110
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher3/home/HomeController;->removeHomeItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 4116
    :goto_2
    const-wide/16 v8, -0x64

    move-object/from16 v0, v20

    iput-wide v8, v0, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    .line 4117
    move-object/from16 v0, v20

    iget-wide v8, v0, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    move-object/from16 v0, v20

    iget-wide v10, v0, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    move-object/from16 v0, v20

    iget v12, v0, Lcom/android/launcher3/common/base/item/IconInfo;->cellX:I

    move-object/from16 v0, v20

    iget v13, v0, Lcom/android/launcher3/common/base/item/IconInfo;->cellY:I

    const/4 v14, 0x1

    const/4 v15, 0x1

    move-object/from16 v6, p0

    invoke-virtual/range {v6 .. v15}, Lcom/android/launcher3/home/HomeController;->addInScreen(Landroid/view/View;JJIIII)V

    .line 4118
    move-object/from16 v0, v20

    iget-wide v8, v0, Lcom/android/launcher3/common/base/item/IconInfo;->id:J

    const-wide/16 v10, -0x1

    cmp-long v6, v8, v10

    if-nez v6, :cond_6

    .line 4119
    invoke-static {}, Lcom/android/launcher3/common/model/FavoritesProvider;->getInstance()Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/common/model/FavoritesProvider;->generateNewItemId()J

    move-result-wide v8

    move-object/from16 v0, v20

    iput-wide v8, v0, Lcom/android/launcher3/common/base/item/IconInfo;->id:J

    .line 4120
    move-object/from16 v0, v20

    iget-wide v10, v0, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    move-object/from16 v0, v20

    iget-wide v12, v0, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    move-object/from16 v0, v20

    iget v14, v0, Lcom/android/launcher3/common/base/item/IconInfo;->cellX:I

    move-object/from16 v0, v20

    iget v15, v0, Lcom/android/launcher3/common/base/item/IconInfo;->cellY:I

    move-object/from16 v8, p0

    move-object/from16 v9, v20

    invoke-virtual/range {v8 .. v15}, Lcom/android/launcher3/home/HomeController;->addItemToDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJII)J

    .line 4121
    const-string v6, "Launcher.HomeController"

    const-string v8, "moveoutHomeOrAppsItemsFromLockedFolder Home no ID "

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4085
    :goto_3
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_0

    .line 4112
    :cond_5
    const/4 v6, 0x0

    aget v6, v3, v6

    move-object/from16 v0, v20

    iput v6, v0, Lcom/android/launcher3/common/base/item/IconInfo;->cellX:I

    .line 4113
    const/4 v6, 0x1

    aget v6, v3, v6

    move-object/from16 v0, v20

    iput v6, v0, Lcom/android/launcher3/common/base/item/IconInfo;->cellY:I

    .line 4114
    move-object/from16 v0, v20

    iput-wide v4, v0, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    goto :goto_2

    .line 4123
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/HomeController;->updateItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 4124
    const-string v6, "Launcher.HomeController"

    const-string v8, "moveoutHomeOrAppsItemsFromLockedFolder Home has ID"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public notifyCapture(Z)V
    .locals 1
    .param p1, "immediate"    # Z

    .prologue
    .line 4139
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mHomeCapturePreview:Lcom/android/launcher3/util/capture/CapturePreview;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/capture/CapturePreview;->notifyCapture(Z)V

    .line 4140
    return-void
.end method

.method public notifyCaptureIfNecessary()V
    .locals 1

    .prologue
    .line 4143
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mHomeCapturePreview:Lcom/android/launcher3/util/capture/CapturePreview;

    invoke-virtual {v0}, Lcom/android/launcher3/util/capture/CapturePreview;->notifyCaptureIfNecessary()V

    .line 4144
    return-void
.end method

.method public notifyControllerItemsChanged()V
    .locals 1

    .prologue
    .line 4003
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/HomeController;->notifyCapture(Z)V

    .line 4004
    return-void

    .line 4003
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 2775
    invoke-virtual {p0, v1}, Lcom/android/launcher3/home/HomeController;->setWaitingForResult(Z)V

    .line 2777
    packed-switch p1, :pswitch_data_0

    .line 2799
    :pswitch_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/home/HomeController;->requestCreateShortcut(IILandroid/content/Intent;)V

    .line 2800
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/view/DragLayer;->clearAnimatedView()V

    .line 2803
    :cond_0
    :goto_0
    return-void

    .line 2780
    :pswitch_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/home/HomeController;->requestCreateOrPickAppWidget(IILandroid/content/Intent;)V

    goto :goto_0

    .line 2784
    :pswitch_2
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isOverviewState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2785
    invoke-virtual {p0, v1}, Lcom/android/launcher3/home/HomeController;->enterNormalState(Z)V

    goto :goto_0

    .line 2790
    :pswitch_3
    invoke-virtual {p0, p2, p3}, Lcom/android/launcher3/home/HomeController;->requestBindAppWidget(ILandroid/content/Intent;)V

    goto :goto_0

    .line 2794
    :pswitch_4
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/home/HomeController;->requestReconfigureAppWidget(IILandroid/content/Intent;)V

    goto :goto_0

    .line 2777
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onBackPressed()Z
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x1

    .line 2751
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    # invokes: Lcom/android/launcher3/home/HomeController$State;->equal(I)Z
    invoke-static {v0, v3}, Lcom/android/launcher3/home/HomeController$State;->access$000(Lcom/android/launcher3/home/HomeController$State;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    const/4 v1, 0x6

    # invokes: Lcom/android/launcher3/home/HomeController$State;->equal(I)Z
    invoke-static {v0, v1}, Lcom/android/launcher3/home/HomeController$State;->access$000(Lcom/android/launcher3/home/HomeController$State;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2752
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    # invokes: Lcom/android/launcher3/home/HomeController$State;->equal(I)Z
    invoke-static {v0, v3}, Lcom/android/launcher3/home/HomeController$State;->access$000(Lcom/android/launcher3/home/HomeController$State;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2753
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/ZeroPageController;->isCurrentZeroPage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2754
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/ZeroPageController;->startZeroPage()V

    .line 2768
    :goto_0
    return v2

    .line 2756
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/launcher3/home/HomeController;->enterNormalState(Z)V

    goto :goto_0

    .line 2759
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/launcher3/home/HomeController;->enterNormalState(Z)V

    goto :goto_0

    .line 2761
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    const/4 v1, 0x5

    # invokes: Lcom/android/launcher3/home/HomeController$State;->equal(I)Z
    invoke-static {v0, v1}, Lcom/android/launcher3/home/HomeController$State;->access$000(Lcom/android/launcher3/home/HomeController$State;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2762
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->startHomeSettingActivity()V

    .line 2763
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->exitScreenGridStateDelayed()V

    goto :goto_0

    .line 2765
    :cond_4
    const-string v0, "1"

    invoke-virtual {p0, v2, v0}, Lcom/android/launcher3/home/HomeController;->exitResizeState(ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public onBadgeBindingCompleted(Ljava/util/ArrayList;)V
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
    .line 3489
    .local p1, "badgeItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3490
    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/HomeController;->updateBadgeItems(Ljava/util/ArrayList;)V

    .line 3492
    :cond_0
    return-void
.end method

.method public onChangeColorForBg(Z)V
    .locals 1
    .param p1, "whiteBg"    # Z

    .prologue
    .line 3463
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/home/Hotseat;->changeColorForBg(Z)V

    .line 3464
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/home/Workspace;->changeColorForBg(Z)V

    .line 3465
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mOverviewPanel:Lcom/android/launcher3/home/OverviewPanel;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/home/OverviewPanel;->changeColorForBg(Z)V

    .line 3466
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mDropTargetBar:Lcom/android/launcher3/home/DropTargetBar;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/home/DropTargetBar;->changeColorForBg(Z)V

    .line 3467
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mSwipeAffordance:Lcom/android/launcher3/home/SwipeAffordance;

    if-eqz v0, :cond_0

    .line 3468
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mSwipeAffordance:Lcom/android/launcher3/home/SwipeAffordance;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/home/SwipeAffordance;->changeColorForBg(Z)V

    .line 3470
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    if-eqz v0, :cond_1

    .line 3471
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/home/ZeroPageController;->changeColorForBg(Z)V

    .line 3473
    :cond_1
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFlexibleGrid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3474
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mScreenGridPanel:Lcom/android/launcher3/home/ScreenGridPanel;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/home/ScreenGridPanel;->changeColorForBg(Z)V

    .line 3476
    :cond_2
    return-void
.end method

.method public onChangeSelectMode(ZZ)V
    .locals 1
    .param p1, "enter"    # Z
    .param p2, "animated"    # Z

    .prologue
    .line 3575
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isHomeStage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3576
    if-eqz p1, :cond_1

    .line 3577
    invoke-virtual {p0, p2}, Lcom/android/launcher3/home/HomeController;->enterSelectState(Z)V

    .line 3582
    :cond_0
    :goto_0
    return-void

    .line 3579
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v0}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->clearCheckedApps()V

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/view/View;Z)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isChecked"    # Z

    .prologue
    .line 3590
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v2, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v4, -0x65

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 3591
    .local v0, "isHotseat":Z
    :goto_0
    if-eqz p2, :cond_2

    .line 3592
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    .line 3593
    invoke-virtual {v1}, Lcom/android/launcher3/home/Hotseat;->getDragController()Lcom/android/launcher3/home/HotseatDragController;

    move-result-object v1

    :goto_1
    check-cast v1, Lcom/android/launcher3/common/drag/DragSource;

    .line 3592
    invoke-virtual {v2, p1, v1}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->addCheckedApp(Landroid/view/View;Lcom/android/launcher3/common/drag/DragSource;)V

    .line 3597
    :goto_2
    return-void

    .line 3590
    .end local v0    # "isHotseat":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 3593
    .restart local v0    # "isHotseat":Z
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->getDragController()Lcom/android/launcher3/home/WorkspaceDragController;

    move-result-object v1

    goto :goto_1

    .line 3595
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->removeCheckedApp(Landroid/view/View;)V

    goto :goto_2
.end method

.method public onClick(Landroid/view/View;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1299
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isSwitchingState()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lcom/android/launcher3/home/ZeroPageController;->isMoving()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher3/home/HomeController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/launcher3/home/HomeController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    .line 1300
    invoke-virtual {v4}, Lcom/android/launcher3/common/tray/TrayManager;->isMoving()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1348
    .end local p1    # "v":Landroid/view/View;
    :cond_0
    :goto_0
    return v2

    .line 1304
    .restart local p1    # "v":Landroid/view/View;
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->initBounceAnimation()V

    .line 1306
    instance-of v4, p1, Lcom/android/launcher3/common/base/view/CellLayout;

    if-eqz v4, :cond_3

    .line 1307
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isOverviewState()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1308
    iget-object v4, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v4, p1}, Lcom/android/launcher3/home/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 1309
    .local v0, "indexToClick":I
    iget-object v4, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v4

    if-eq v0, v4, :cond_2

    .line 1310
    iget-object v4, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v4, v0}, Lcom/android/launcher3/home/Workspace;->checkVisibilityOfCustomLayout(I)V

    .line 1311
    iget-object v4, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v4, v0, v3}, Lcom/android/launcher3/home/Workspace;->moveToScreen(IZ)V

    .line 1313
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/launcher3/home/HomeController;->enterNormalState(Z)V

    goto :goto_0

    .line 1318
    .end local v0    # "indexToClick":I
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 1319
    .local v1, "tag":Ljava/lang/Object;
    instance-of v4, v1, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v4, :cond_5

    .line 1320
    instance-of v3, p1, Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v3, :cond_0

    .line 1321
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFolderSelect()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isSelectState()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1322
    check-cast p1, Lcom/android/launcher3/folder/view/FolderIconView;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Lcom/android/launcher3/folder/view/FolderIconView;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CheckBox;->toggle()V

    goto :goto_0

    .line 1324
    .restart local p1    # "v":Landroid/view/View;
    :cond_4
    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3, p1}, Lcom/android/launcher3/Launcher;->onClickFolderIcon(Landroid/view/View;)V

    goto :goto_0

    .line 1328
    :cond_5
    instance-of v4, v1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v4, :cond_7

    .line 1329
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isSelectState()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1330
    instance-of v3, p1, Lcom/android/launcher3/common/view/IconView;

    if-eqz v3, :cond_0

    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    .end local v1    # "tag":Ljava/lang/Object;
    iget-boolean v3, v1, Lcom/android/launcher3/common/base/item/IconInfo;->isAppsButton:Z

    if-nez v3, :cond_0

    .line 1331
    check-cast p1, Lcom/android/launcher3/common/view/IconView;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Lcom/android/launcher3/common/view/IconView;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CheckBox;->toggle()V

    goto :goto_0

    .line 1334
    .restart local v1    # "tag":Ljava/lang/Object;
    .restart local p1    # "v":Landroid/view/View;
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/HomeController;->onClickAppShortcut(Landroid/view/View;)V

    goto :goto_0

    .line 1337
    :cond_7
    instance-of v4, v1, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    if-eqz v4, :cond_9

    .line 1338
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isSelectState()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1339
    instance-of v4, p1, Lcom/android/launcher3/home/PendingAppWidgetHostView;

    if-eqz v4, :cond_0

    .line 1340
    iget-object v4, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->isSafeModeEnabled()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1341
    iget-object v4, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v5, 0x7f080176

    invoke-static {v4, v5, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1343
    :cond_8
    check-cast p1, Lcom/android/launcher3/home/PendingAppWidgetHostView;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/HomeController;->onClickPendingWidget(Lcom/android/launcher3/home/PendingAppWidgetHostView;)V

    goto/16 :goto_0

    .restart local p1    # "v":Landroid/view/View;
    :cond_9
    move v2, v3

    .line 1348
    goto/16 :goto_0
.end method

.method onClickAppShortcut(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 1352
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    .line 1353
    .local v9, "tag":Ljava/lang/Object;
    instance-of v1, v9, Lcom/android/launcher3/common/base/item/IconInfo;

    if-nez v1, :cond_0

    .line 1354
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Input must be a Shortcut"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move-object v8, v9

    .line 1358
    check-cast v8, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 1360
    .local v8, "shortcut":Lcom/android/launcher3/common/base/item/IconInfo;
    iget-boolean v1, v8, Lcom/android/launcher3/common/base/item/IconInfo;->isAppsButton:Z

    if-eqz v1, :cond_1

    .line 1361
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v6}, Lcom/android/launcher3/Launcher;->showAppsView(ZZ)V

    .line 1362
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 1363
    .local v7, "res":Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v1

    const v2, 0x7f08018d

    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v4, 0x7f0800dd

    .line 1364
    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "3"

    .line 1363
    invoke-virtual {v1, v2, v4, v5}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1391
    .end local v7    # "res":Landroid/content/res/Resources;
    :goto_0
    return-void

    .line 1368
    :cond_1
    iget v1, v8, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    if-eqz v1, :cond_2

    .line 1369
    iget v1, v8, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    and-int/lit8 v1, v1, -0x5

    and-int/lit8 v1, v1, -0x9

    if-nez v1, :cond_3

    .line 1385
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/Launcher;->startAppShortcutOrInfoActivity(Landroid/view/View;)V

    .line 1387
    invoke-virtual {v8}, Lcom/android/launcher3/common/base/item/IconInfo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1388
    invoke-virtual {v8}, Lcom/android/launcher3/common/base/item/IconInfo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1389
    .local v3, "extra":Ljava/lang/String;
    :goto_1
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v1

    const-string v2, "HOIS"

    const-wide/16 v4, -0x1

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    goto :goto_0

    .line 1375
    .end local v3    # "extra":Ljava/lang/String;
    :cond_3
    const v0, 0x7f080001

    .line 1376
    .local v0, "error":I
    iget v1, v8, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4

    .line 1377
    const v0, 0x7f080175

    .line 1379
    :cond_4
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1388
    .end local v0    # "error":I
    :cond_5
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public onClickMultiSelectPanel(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    const/4 v1, 0x1

    .line 3601
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isHomeStage()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isFolderStage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 3602
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getSecondTopStageMode()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 3622
    :cond_0
    :goto_0
    return-void

    .line 3606
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 3621
    :goto_1
    invoke-virtual {p0, v1, v1}, Lcom/android/launcher3/home/HomeController;->enterNormalState(ZZ)V

    goto :goto_0

    .line 3608
    :pswitch_0
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeController;->removeShortcut()V

    goto :goto_1

    .line 3612
    :pswitch_1
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeController;->createFolder()V

    goto :goto_1

    .line 3606
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method onClickPendingWidget(Lcom/android/launcher3/home/PendingAppWidgetHostView;)V
    .locals 9
    .param p1, "v"    # Lcom/android/launcher3/home/PendingAppWidgetHostView;

    .prologue
    .line 1394
    invoke-virtual {p1}, Lcom/android/launcher3/home/PendingAppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    .line 1395
    .local v6, "info":Lcom/android/launcher3/home/LauncherAppWidgetInfo;
    invoke-virtual {p1}, Lcom/android/launcher3/home/PendingAppWidgetHostView;->isReadyForClickSetup()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1396
    iget v8, v6, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->appWidgetId:I

    .line 1397
    .local v8, "widgetId":I
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mAppWidgetManager:Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;

    invoke-virtual {v0, v8}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    .line 1398
    .local v1, "appWidgetInfo":Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v1, :cond_0

    .line 1399
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0, v1}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddWidgetInfo:Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    .line 1401
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {v0, v6}, Lcom/android/launcher3/common/base/item/ItemInfo;->copyFrom(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 1402
    iput v8, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddWidgetId:I

    .line 1404
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;

    move-result-object v0

    iget v2, v6, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->appWidgetId:I

    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v4, p0, Lcom/android/launcher3/home/HomeController;->mAppWidgetHost:Lcom/android/launcher3/home/LauncherAppWidgetHost;

    const/16 v5, 0xc

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->startConfigActivity(Landroid/appwidget/AppWidgetProviderInfo;ILandroid/app/Activity;Landroid/appwidget/AppWidgetHost;I)V

    .line 1413
    .end local v1    # "appWidgetInfo":Landroid/appwidget/AppWidgetProviderInfo;
    .end local v8    # "widgetId":I
    :cond_0
    :goto_0
    return-void

    .line 1410
    :cond_1
    iget-object v0, v6, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 1411
    .local v7, "packageName":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v7}, Lcom/android/launcher3/LauncherModel;->getMarketIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-static {v0, p1, v2, v6}, Lcom/android/launcher3/Utilities;->startActivitySafely(Landroid/app/Activity;Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onConfigurationChangedIfNeeded()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3428
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v0

    .line 3430
    .local v0, "dp":Lcom/android/launcher3/common/deviceprofile/DeviceProfile;
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportNavigationBar()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3431
    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->isVerticalBarLayout()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3432
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mHomeContainer:Lcom/android/launcher3/home/HomeContainer;

    iget v3, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->navigationBarHeight:I

    invoke-virtual {v2, v4, v4, v3, v4}, Lcom/android/launcher3/home/HomeContainer;->setPadding(IIII)V

    .line 3438
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isStartedSwipeAffordanceAnim()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->isHomeStage()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3439
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mSwipeAffordance:Lcom/android/launcher3/home/SwipeAffordance;

    invoke-virtual {v2, v5}, Lcom/android/launcher3/home/SwipeAffordance;->startCancelAnim(Z)V

    .line 3442
    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v2}, Lcom/android/launcher3/home/Hotseat;->getLayout()Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/home/HotseatCellLayout;

    .line 3443
    .local v1, "hotseatCellLayout":Lcom/android/launcher3/home/HotseatCellLayout;
    invoke-virtual {v1}, Lcom/android/launcher3/home/HotseatCellLayout;->updateIconViews()V

    .line 3445
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/home/Workspace;->onConfigurationChangedIfNeeded()V

    .line 3446
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mScreenGridPanel:Lcom/android/launcher3/home/ScreenGridPanel;

    invoke-virtual {v2}, Lcom/android/launcher3/home/ScreenGridPanel;->onConfigurationChangedIfNeeded()V

    .line 3447
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mOverviewPanel:Lcom/android/launcher3/home/OverviewPanel;

    invoke-virtual {v2}, Lcom/android/launcher3/home/OverviewPanel;->onConfigurationChangedIfNeeded()V

    .line 3448
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mHomeAnimation:Lcom/android/launcher3/home/HomeTransitionAnimation;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeTransitionAnimation;->onConfigurationChangedIfNeeded()V

    .line 3449
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mDropTargetBar:Lcom/android/launcher3/home/DropTargetBar;

    invoke-virtual {v2}, Lcom/android/launcher3/home/DropTargetBar;->onConfigurationChangedIfNeeded()V

    .line 3451
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->getState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 3452
    invoke-virtual {p0, v4}, Lcom/android/launcher3/home/HomeController;->exitResizeState(Z)V

    .line 3454
    :cond_2
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v2}, Lcom/android/launcher3/common/drag/DragManager;->isQuickOptionShowing()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3455
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v2}, Lcom/android/launcher3/common/drag/DragManager;->removeQuickOptionView()V

    .line 3459
    :cond_3
    invoke-virtual {p0, v5}, Lcom/android/launcher3/home/HomeController;->notifyCapture(Z)V

    .line 3460
    return-void

    .line 3434
    .end local v1    # "hotseatCellLayout":Lcom/android/launcher3/home/HotseatCellLayout;
    :cond_4
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mHomeContainer:Lcom/android/launcher3/home/HomeContainer;

    iget v3, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->navigationBarHeight:I

    invoke-virtual {v2, v4, v4, v4, v3}, Lcom/android/launcher3/home/HomeContainer;->setPadding(IIII)V

    goto :goto_0
.end method

.method public onDestroyActivity()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 587
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFestivalPage()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mFestivalPageController:Lcom/android/launcher3/home/FestivalPageController;

    if-eqz v2, :cond_0

    .line 588
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mFestivalPageController:Lcom/android/launcher3/home/FestivalPageController;

    invoke-virtual {v2}, Lcom/android/launcher3/home/FestivalPageController;->onDestroy()V

    .line 592
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mAppWidgetHost:Lcom/android/launcher3/home/LauncherAppWidgetHost;

    invoke-virtual {v2}, Lcom/android/launcher3/home/LauncherAppWidgetHost;->stopListening()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 596
    :goto_0
    iput-object v4, p0, Lcom/android/launcher3/home/HomeController;->mAppWidgetHost:Lcom/android/launcher3/home/LauncherAppWidgetHost;

    .line 598
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    if-eqz v2, :cond_1

    .line 599
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-virtual {v2, p0}, Lcom/android/launcher3/common/tray/TrayManager;->removeTrayEventCallbacks(Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;)V

    .line 602
    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    if-eqz v2, :cond_2

    .line 603
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeBindController;->clearWidgetsToAdvance()V

    .line 604
    iput-object v4, p0, Lcom/android/launcher3/home/HomeController;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    .line 607
    :cond_2
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    if-eqz v2, :cond_3

    .line 608
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/home/Workspace;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 609
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/home/Workspace;->removeAllWorkspaceScreens()V

    .line 610
    iput-object v4, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    .line 613
    :cond_3
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    if-eqz v2, :cond_4

    .line 614
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    invoke-virtual {v2}, Lcom/android/launcher3/home/ZeroPageController;->onDestroy()V

    .line 617
    :cond_4
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    if-eqz v2, :cond_5

    .line 618
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v2, p0}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->removeMultiSelectCallbacks(Lcom/android/launcher3/common/multiselect/MultiSelectManager$MultiSelectListener;)V

    .line 621
    :cond_5
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    if-eqz v2, :cond_6

    .line 622
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    invoke-virtual {v2, p0}, Lcom/android/launcher3/folder/folderlock/FolderLock;->removeFolderLockActionCallback(Lcom/android/launcher3/folder/folderlock/FolderLock$FolderLockActionCallback;)V

    .line 625
    :cond_6
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mExitDragStateHandler:Landroid/os/Handler;

    if-eqz v2, :cond_7

    .line 626
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mExitDragStateHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 629
    :cond_7
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mFindAppPositionHandler:Landroid/os/Handler;

    if-eqz v2, :cond_8

    .line 630
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mFindAppPositionHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 633
    :cond_8
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    .line 635
    .local v1, "launcherAppState":Lcom/android/launcher3/LauncherAppState;
    if-eqz v1, :cond_9

    .line 636
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/launcher3/LauncherModel;->unregisterOnBadgeBindingCompletedLisnter(Lcom/android/launcher3/LauncherModel$OnBadgeBindingCompletedLisnter;)V

    .line 637
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/launcher3/LauncherModel;->unregisterOnLiveIconUpdateLisnter(Lcom/android/launcher3/LauncherModel$OnRefreshLiveIconListener;)V

    .line 640
    :cond_9
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportCustomerDialerChange()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 641
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mDialerChangeObserver:Lcom/android/launcher3/home/HomeController$DialerChangeObserver;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 644
    :cond_a
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mEdgeLight:Lcom/android/launcher3/home/EdgeLight;

    if-eqz v2, :cond_b

    .line 645
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mEdgeLight:Lcom/android/launcher3/home/EdgeLight;

    invoke-virtual {v2}, Lcom/android/launcher3/home/EdgeLight;->unregisterContentObserver()V

    .line 647
    :cond_b
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mHomeCapturePreview:Lcom/android/launcher3/util/capture/CapturePreview;

    invoke-virtual {v2}, Lcom/android/launcher3/util/capture/CapturePreview;->stopCapture()V

    .line 648
    return-void

    .line 593
    .end local v1    # "launcherAppState":Lcom/android/launcher3/LauncherAppState;
    :catch_0
    move-exception v0

    .line 594
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v2, "Launcher.HomeController"

    const-string v3, "problem while stopping AppWidgetHost during Launcher destruction"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 12
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v11, 0x7f08018d

    const v10, 0x7f08011f

    const v9, 0xc369

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1183
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isWorkspaceLocked()Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->isHomeStage()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {}, Lcom/android/launcher3/home/ZeroPageController;->isMoving()Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    .line 1184
    invoke-virtual {v6}, Lcom/android/launcher3/common/tray/TrayManager;->isMoving()Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isScreenGridState()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1185
    invoke-static {}, Lcom/android/launcher3/util/event/ScrollDetector;->cancelLongPressOnHScroll()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1275
    :cond_1
    :goto_0
    return v8

    .line 1189
    :cond_2
    instance-of v6, p1, Lcom/android/launcher3/home/Workspace;

    if-eqz v6, :cond_3

    .line 1190
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isOverviewState()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1191
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v6}, Lcom/android/launcher3/home/Workspace;->isTouchActive()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1192
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v6, v9, v7}, Lcom/android/launcher3/home/Workspace;->performHapticFeedback(II)Z

    .line 1194
    invoke-virtual {p0, v7}, Lcom/android/launcher3/home/HomeController;->enterOverviewState(Z)V

    .line 1195
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1196
    .local v5, "res":Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v6

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1197
    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "2"

    .line 1196
    invoke-virtual {v6, v8, v9, v10}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v8, v7

    .line 1198
    goto :goto_0

    .line 1207
    .end local v5    # "res":Landroid/content/res/Resources;
    :cond_3
    instance-of v6, p1, Lcom/android/launcher3/home/WorkspaceCellLayout;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v6}, Lcom/android/launcher3/home/Workspace;->hasTargetView()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1211
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v6, :cond_5

    .line 1212
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/common/base/item/IconInfo;

    iget-boolean v6, v6, Lcom/android/launcher3/common/base/item/IconInfo;->isAppsButton:Z

    if-nez v6, :cond_1

    .line 1217
    :cond_5
    const/4 v1, 0x1

    .line 1218
    .local v1, "animated":Z
    instance-of v6, p1, Lcom/android/launcher3/home/AppWidgetResizeFrame;

    if-eqz v6, :cond_6

    .line 1220
    check-cast p1, Lcom/android/launcher3/home/AppWidgetResizeFrame;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Lcom/android/launcher3/home/AppWidgetResizeFrame;->getResizeWidgetView()Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    move-result-object p1

    .line 1221
    .restart local p1    # "v":Landroid/view/View;
    const/4 v1, 0x0

    .line 1224
    :cond_6
    const/4 v4, 0x0

    .line 1225
    .local v4, "longClickCellInfo":Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;
    const/4 v3, 0x0

    .line 1226
    .local v3, "itemUnderLongClick":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v6, :cond_7

    .line 1227
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1228
    .local v2, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    new-instance v4, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    .end local v4    # "longClickCellInfo":Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;
    invoke-direct {v4, p1, v2}, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;-><init>(Landroid/view/View;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 1229
    .restart local v4    # "longClickCellInfo":Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;
    iget-object v3, v4, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 1230
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->resetAddInfo()V

    .line 1233
    .end local v2    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_7
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v6}, Lcom/android/launcher3/common/drag/DragManager;->isDragging()Z

    move-result v6

    if-nez v6, :cond_8

    .line 1234
    if-nez v3, :cond_b

    .line 1236
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isOverviewState()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1237
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v6}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v6

    iget-object v8, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v8, p1}, Lcom/android/launcher3/home/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v8

    if-ne v6, v8, :cond_8

    .line 1238
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v6, p1}, Lcom/android/launcher3/home/Workspace;->startReordering(Landroid/view/View;)Z

    .line 1239
    iput-boolean v7, p0, Lcom/android/launcher3/home/HomeController;->mHomePageReorder:Z

    :cond_8
    :goto_1
    move v8, v7

    .line 1275
    goto/16 :goto_0

    .line 1242
    :cond_9
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isSelectState()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1243
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeController;->startDragEmptyCell()V

    goto :goto_1

    .line 1245
    :cond_a
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v6, v9, v7}, Lcom/android/launcher3/home/Workspace;->performHapticFeedback(II)Z

    .line 1248
    invoke-virtual {p0, v7}, Lcom/android/launcher3/home/HomeController;->enterOverviewState(Z)V

    .line 1249
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1250
    .restart local v5    # "res":Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v6

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1251
    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "2"

    .line 1250
    invoke-virtual {v6, v8, v9, v10}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1255
    .end local v5    # "res":Landroid/content/res/Resources;
    :cond_b
    instance-of v6, v3, Lcom/android/launcher3/folder/view/FolderView;

    if-nez v6, :cond_8

    .line 1256
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isSelectState()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 1257
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v6, v3}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->canLongClick(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1258
    invoke-virtual {p0, v1}, Lcom/android/launcher3/home/HomeController;->enterDragState(Z)V

    .line 1259
    invoke-virtual {p0, v4, v8, v8}, Lcom/android/launcher3/home/HomeController;->startDrag(Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;ZZ)Z

    move-result v6

    if-nez v6, :cond_8

    .line 1260
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->exitDragStateDelayed()V

    goto :goto_1

    .line 1264
    :cond_c
    invoke-virtual {p0, v1}, Lcom/android/launcher3/home/HomeController;->enterDragState(Z)V

    .line 1265
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isOverviewState()Z

    move-result v6

    if-nez v6, :cond_d

    move v0, v7

    .line 1267
    .local v0, "allowQuickOption":Z
    :goto_2
    invoke-virtual {p0, v4, v0, v8}, Lcom/android/launcher3/home/HomeController;->startDrag(Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;ZZ)Z

    move-result v6

    if-nez v6, :cond_8

    .line 1268
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->exitDragStateDelayed()V

    goto :goto_1

    .end local v0    # "allowQuickOption":Z
    :cond_d
    move v0, v8

    .line 1265
    goto :goto_2
.end method

.method public onPauseActivity()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 485
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isSelectState()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 486
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v2}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isShowingHelpDialog()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 487
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v2, v4}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->hideHelpDialog(Z)V

    .line 489
    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/launcher3/home/HomeController;->enterNormalState(Z)V

    .line 492
    :cond_1
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHotword()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 493
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    # invokes: Lcom/android/launcher3/home/HomeController$State;->equal(I)Z
    invoke-static {v2, v6}, Lcom/android/launcher3/home/HomeController$State;->access$000(Lcom/android/launcher3/home/HomeController$State;I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    .line 494
    invoke-virtual {v3}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/Launcher;->isGoogleSearchWidget(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 495
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2, v4}, Lcom/android/launcher3/Launcher;->setHotWordDetection(Z)V

    .line 499
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v2

    if-ne v2, p0, :cond_3

    .line 500
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    const/4 v3, 0x2

    # invokes: Lcom/android/launcher3/home/HomeController$State;->equal(I)Z
    invoke-static {v2, v3}, Lcom/android/launcher3/home/HomeController$State;->access$000(Lcom/android/launcher3/home/HomeController$State;I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v2, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 501
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->exitDragStateDelayed()V

    .line 505
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isStartedSwipeAffordanceAnim()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->isHomeStage()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->isSkipAnim()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 506
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mSwipeAffordance:Lcom/android/launcher3/home/SwipeAffordance;

    invoke-virtual {v2, v6}, Lcom/android/launcher3/home/SwipeAffordance;->startCancelAnim(Z)V

    .line 509
    :cond_4
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 510
    .local v0, "fragmentManager":Landroid/app/FragmentManager;
    invoke-static {v0}, Lcom/android/launcher3/home/AutoAlignConfirmDialog;->isActive(Landroid/app/FragmentManager;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 511
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 512
    .local v1, "fragmentTransaction":Landroid/app/FragmentTransaction;
    invoke-static {v1, v0}, Lcom/android/launcher3/home/AutoAlignConfirmDialog;->dismiss(Landroid/app/FragmentTransaction;Landroid/app/FragmentManager;)V

    .line 513
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 515
    .end local v1    # "fragmentTransaction":Landroid/app/FragmentTransaction;
    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->stopEdgeLight()V

    .line 517
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/home/Workspace;->onPause()V

    .line 518
    return-void
.end method

.method public onReceiveTrayEvent(Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;)V
    .locals 13
    .param p1, "event"    # Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x2

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x1

    .line 3261
    iget v9, p1, Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;->mEventType:I

    sparse-switch v9, :sswitch_data_0

    .line 3328
    :cond_0
    :goto_0
    return-void

    .line 3263
    :sswitch_0
    iget v6, p1, Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;->mValue:F

    .line 3264
    .local v6, "toTranslationY":F
    iget-object v9, p0, Lcom/android/launcher3/home/HomeController;->mHomeContainer:Lcom/android/launcher3/home/HomeContainer;

    invoke-virtual {v9, v6}, Lcom/android/launcher3/home/HomeContainer;->setTranslationY(F)V

    .line 3265
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isStartedSwipeAffordanceAnim()Z

    move-result v9

    if-eqz v9, :cond_1

    iget-boolean v9, p0, Lcom/android/launcher3/home/HomeController;->mIsStartedTrayEventSetY:Z

    if-nez v9, :cond_1

    cmpl-float v9, v6, v10

    if-eqz v9, :cond_1

    .line 3267
    iput-boolean v7, p0, Lcom/android/launcher3/home/HomeController;->mIsStartedTrayEventSetY:Z

    .line 3268
    iget-object v7, p0, Lcom/android/launcher3/home/HomeController;->mSwipeAffordance:Lcom/android/launcher3/home/SwipeAffordance;

    invoke-virtual {v7, v8}, Lcom/android/launcher3/home/SwipeAffordance;->startCancelAnim(Z)V

    .line 3270
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->stopEdgeLight()V

    goto :goto_0

    .line 3274
    .end local v6    # "toTranslationY":F
    :sswitch_1
    iget v7, p1, Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;->mValue:F

    iget-object v8, p0, Lcom/android/launcher3/home/HomeController;->mHomeContainer:Lcom/android/launcher3/home/HomeContainer;

    invoke-virtual {v8}, Lcom/android/launcher3/home/HomeContainer;->getHeight()I

    move-result v8

    int-to-float v8, v8

    add-float v0, v7, v8

    .line 3275
    .local v0, "borderY":F
    iget-object v7, p0, Lcom/android/launcher3/home/HomeController;->mHomeContainer:Lcom/android/launcher3/home/HomeContainer;

    invoke-virtual {v7}, Lcom/android/launcher3/home/HomeContainer;->getTranslationY()F

    move-result v7

    iget-object v8, p0, Lcom/android/launcher3/home/HomeController;->mHomeContainer:Lcom/android/launcher3/home/HomeContainer;

    invoke-virtual {v8}, Lcom/android/launcher3/home/HomeContainer;->getHeight()I

    move-result v8

    int-to-float v8, v8

    add-float v1, v7, v8

    .line 3276
    .local v1, "bottomOfHome":F
    cmpg-float v7, v0, v1

    if-gez v7, :cond_2

    .line 3277
    sub-float v7, v1, v0

    invoke-direct {p0, v7}, Lcom/android/launcher3/home/HomeController;->updateHotseatByMoveToAppsPosition(F)V

    goto :goto_0

    .line 3278
    :cond_2
    iget-object v7, p0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v7}, Lcom/android/launcher3/home/Hotseat;->getTranslationY()F

    move-result v7

    cmpl-float v7, v7, v10

    if-eqz v7, :cond_0

    .line 3279
    invoke-direct {p0, v10}, Lcom/android/launcher3/home/HomeController;->updateHotseatByMoveToAppsPosition(F)V

    goto :goto_0

    .line 3283
    .end local v0    # "borderY":F
    .end local v1    # "bottomOfHome":F
    :sswitch_2
    iput-boolean v8, p0, Lcom/android/launcher3/home/HomeController;->mIsStartedTrayEventSetY:Z

    .line 3284
    iget v8, p1, Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;->mValue:F

    float-to-int v5, v8

    .line 3285
    .local v5, "stageChanged":I
    if-lez v5, :cond_5

    .line 3286
    iget-object v7, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher3/Launcher;->isHomeStage()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 3287
    iget-object v7, p0, Lcom/android/launcher3/home/HomeController;->mSwipeAffordance:Lcom/android/launcher3/home/SwipeAffordance;

    if-eqz v7, :cond_3

    .line 3288
    iget-object v7, p0, Lcom/android/launcher3/home/HomeController;->mSwipeAffordance:Lcom/android/launcher3/home/SwipeAffordance;

    invoke-virtual {v7}, Lcom/android/launcher3/home/SwipeAffordance;->appsVisitCountUp()V

    .line 3290
    :cond_3
    iget-object v7, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher3/Launcher;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v7

    invoke-virtual {v7, v11, v12}, Lcom/android/launcher3/common/stage/StageManager;->startStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    goto :goto_0

    .line 3292
    :cond_4
    iget-object v7, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher3/Launcher;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v7

    invoke-virtual {v7, v12}, Lcom/android/launcher3/common/stage/StageManager;->finishAllStage(Lcom/android/launcher3/common/stage/StageEntry;)V

    goto :goto_0

    .line 3295
    :cond_5
    iget-object v8, p0, Lcom/android/launcher3/home/HomeController;->mHomeAnimation:Lcom/android/launcher3/home/HomeTransitionAnimation;

    iget-object v9, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v9}, Lcom/android/launcher3/Launcher;->isHomeStage()Z

    move-result v9

    invoke-virtual {v8, v7, v9}, Lcom/android/launcher3/home/HomeTransitionAnimation;->getTrayReturnAnimation(ZZ)Landroid/animation/Animator;

    move-result-object v4

    .line 3296
    .local v4, "returnAnimator":Landroid/animation/Animator;
    if-eqz v4, :cond_0

    .line 3297
    invoke-virtual {v4}, Landroid/animation/Animator;->start()V

    goto/16 :goto_0

    .line 3302
    .end local v4    # "returnAnimator":Landroid/animation/Animator;
    .end local v5    # "stageChanged":I
    :sswitch_3
    iget v9, p1, Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;->mValue:F

    cmpl-float v9, v9, v10

    if-lez v9, :cond_6

    move v3, v7

    .line 3303
    .local v3, "fromHomeToApps":Z
    :goto_1
    if-eqz v3, :cond_7

    .line 3304
    invoke-virtual {p0, v8, v7}, Lcom/android/launcher3/home/HomeController;->enterNormalState(ZZ)V

    .line 3305
    iget-object v8, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v8}, Lcom/android/launcher3/home/Workspace;->removeExtraEmptyScreen()V

    .line 3307
    new-instance v2, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v2}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    .line 3308
    .local v2, "data":Lcom/android/launcher3/common/stage/StageEntry;
    iput-boolean v7, v2, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    .line 3309
    invoke-virtual {v2, v7}, Lcom/android/launcher3/common/stage/StageEntry;->setInternalStateTo(I)V

    .line 3310
    const-string v8, "KEY_SUPPRESS_CHANGE_STAGE_ONCE"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v8, v7}, Lcom/android/launcher3/common/stage/StageEntry;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3311
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v7

    invoke-virtual {v7, v11, v2}, Lcom/android/launcher3/common/stage/StageManager;->startStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    goto/16 :goto_0

    .end local v2    # "data":Lcom/android/launcher3/common/stage/StageEntry;
    .end local v3    # "fromHomeToApps":Z
    :cond_6
    move v3, v8

    .line 3302
    goto :goto_1

    .line 3314
    .restart local v3    # "fromHomeToApps":Z
    :cond_7
    new-instance v2, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v2}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    .line 3315
    .restart local v2    # "data":Lcom/android/launcher3/common/stage/StageEntry;
    iput-boolean v7, v2, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    .line 3316
    iget-object v8, p0, Lcom/android/launcher3/home/HomeController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v8}, Lcom/android/launcher3/common/drag/DragManager;->isDragging()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 3317
    invoke-virtual {v2, v11}, Lcom/android/launcher3/common/stage/StageEntry;->setInternalStateTo(I)V

    .line 3321
    :goto_2
    const-string v8, "KEY_SUPPRESS_CHANGE_STAGE_ONCE"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v8, v7}, Lcom/android/launcher3/common/stage/StageEntry;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3322
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/android/launcher3/common/stage/StageManager;->finishAllStage(Lcom/android/launcher3/common/stage/StageEntry;)V

    goto/16 :goto_0

    .line 3319
    :cond_8
    invoke-virtual {v2, v7}, Lcom/android/launcher3/common/stage/StageEntry;->setInternalStateTo(I)V

    goto :goto_2

    .line 3261
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0xa -> :sswitch_3
    .end sparse-switch
.end method

.method public onRefreshLiveIcon()V
    .locals 4

    .prologue
    .line 3480
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v2

    .line 3481
    .local v2, "page":I
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 3482
    .local v0, "cell":Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/HomeController;->updateLiveIcon(Lcom/android/launcher3/common/base/view/CellLayout;)V

    .line 3483
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->getHotseat()Lcom/android/launcher3/home/Hotseat;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/home/Hotseat;->getLayout()Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v1

    .line 3484
    .local v1, "hotseatCellLayout":Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-virtual {p0, v1}, Lcom/android/launcher3/home/HomeController;->updateLiveIcon(Lcom/android/launcher3/common/base/view/CellLayout;)V

    .line 3485
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 522
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeBindController;->restoreInstanceState()V

    .line 523
    return-void
.end method

.method public onResumeActivity()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 429
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->reinflateWidgetsIfNecessary()V

    .line 431
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 432
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v8

    if-ne v8, p0, :cond_6

    move v4, v6

    .line 434
    .local v4, "isHomeStage":Z
    :goto_0
    iget-object v8, p0, Lcom/android/launcher3/home/HomeController;->mSwipeAffordance:Lcom/android/launcher3/home/SwipeAffordance;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v8}, Lcom/android/launcher3/Launcher;->isSkipAnim()Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    # invokes: Lcom/android/launcher3/home/HomeController$State;->equal(I)Z
    invoke-static {v8, v6}, Lcom/android/launcher3/home/HomeController$State;->access$000(Lcom/android/launcher3/home/HomeController$State;I)Z

    move-result v8

    if-eqz v8, :cond_0

    if-eqz v4, :cond_0

    .line 436
    iget-object v8, p0, Lcom/android/launcher3/home/HomeController;->mSwipeAffordance:Lcom/android/launcher3/home/SwipeAffordance;

    invoke-virtual {v8}, Lcom/android/launcher3/home/SwipeAffordance;->startAnim()V

    .line 439
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->initBounceAnimation()V

    .line 440
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 441
    invoke-virtual {v8}, Lcom/android/launcher3/Launcher;->getSearchedApp()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 442
    iget-object v8, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v8}, Lcom/android/launcher3/Launcher;->getSearchedApp()Ljava/lang/String;

    move-result-object v0

    .line 444
    .local v0, "appinfo":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 445
    const/4 v5, 0x0

    .line 446
    .local v5, "pkg":Ljava/lang/String;
    const/4 v1, 0x0

    .line 447
    .local v1, "cmp":Ljava/lang/String;
    const-string v8, "/"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 448
    const-string v8, "/"

    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 449
    .local v3, "index":I
    invoke-virtual {v0, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 450
    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 452
    .end local v3    # "index":I
    :cond_1
    iget-object v7, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v7, v5}, Lcom/android/launcher3/Utilities;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 453
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, v5, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    .local v2, "componentName":Landroid/content/ComponentName;
    invoke-direct {p0, v2}, Lcom/android/launcher3/home/HomeController;->findSearchedApp(Landroid/content/ComponentName;)V

    .line 455
    iget-object v7, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/launcher3/Launcher;->setSearchedApp(Ljava/lang/String;)V

    .line 460
    .end local v0    # "appinfo":Ljava/lang/String;
    .end local v1    # "cmp":Ljava/lang/String;
    .end local v2    # "componentName":Landroid/content/ComponentName;
    .end local v5    # "pkg":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportTransitionEffects()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 461
    iget-object v7, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher3/Launcher;->getPageTransitionManager()Lcom/android/launcher3/pagetransition/PageTransitionManager;

    move-result-object v7

    iget-object v8, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v7, v8}, Lcom/android/launcher3/pagetransition/PageTransitionManager;->setup(Lcom/android/launcher3/common/base/view/PagedView;)V

    .line 463
    :cond_3
    iget-object v7, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v7}, Lcom/android/launcher3/home/Workspace;->onResume()V

    .line 465
    iget-object v7, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    const/4 v8, 0x4

    # invokes: Lcom/android/launcher3/home/HomeController$State;->equal(I)Z
    invoke-static {v7, v8}, Lcom/android/launcher3/home/HomeController$State;->access$000(Lcom/android/launcher3/home/HomeController$State;I)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 466
    iget-object v7, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/launcher3/util/BlurUtils;->blurByWindowManager(ZLandroid/view/Window;)V

    .line 476
    :cond_4
    :goto_1
    invoke-static {}, Lcom/samsung/android/feature/SemGateConfig;->isGateEnabled()Z

    move-result v6

    if-eqz v6, :cond_5

    if-eqz v4, :cond_5

    .line 477
    const-string v6, "GATE"

    const-string v7, "<GATE-M>SCREEN_LOADED_HOME</GATE-M>"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    :cond_5
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    invoke-virtual {v6}, Lcom/android/launcher3/home/HomeLoader;->clearPreservedPosition()V

    .line 481
    return-void

    .end local v4    # "isHomeStage":Z
    :cond_6
    move v4, v7

    .line 432
    goto/16 :goto_0

    .line 467
    .restart local v4    # "isHomeStage":Z
    :cond_7
    iget-object v7, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    # invokes: Lcom/android/launcher3/home/HomeController$State;->equal(I)Z
    invoke-static {v7, v6}, Lcom/android/launcher3/home/HomeController$State;->access$000(Lcom/android/launcher3/home/HomeController$State;I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 468
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHotword()Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v8, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    .line 469
    invoke-virtual {v8}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/launcher3/Launcher;->isGoogleSearchWidget(I)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 470
    iget-object v7, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v7, v6}, Lcom/android/launcher3/Launcher;->setHotWordDetection(Z)V

    .line 473
    :cond_8
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->startEdgeLight()V

    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v2, -0x1

    .line 527
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 528
    const-string v0, "launcher.current_screen"

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    .line 529
    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->getCurrentPageOffsetFromCustomContent()I

    move-result v1

    .line 528
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 532
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 533
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isWaitingForResult()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 534
    const-string v0, "launcher.add_container"

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v2, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 535
    const-string v0, "launcher.add_screen"

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v2, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 536
    const-string v0, "launcher.add_cell_x"

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget v1, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 537
    const-string v0, "launcher.add_cell_y"

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget v1, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 538
    const-string v0, "launcher.add_span_x"

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget v1, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 539
    const-string v0, "launcher.add_span_y"

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget v1, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 540
    const-string v0, "launcher.add_component"

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v1, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 541
    const-string v0, "launcher.add_widget_info"

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddWidgetInfo:Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 542
    const-string v0, "launcher.add_widget_id"

    iget v1, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddWidgetId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 544
    :cond_1
    return-void
.end method

.method public onSetPageScrollListener(Lcom/android/launcher3/common/base/view/PagedView$PageScrollListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/launcher3/common/base/view/PagedView$PageScrollListener;

    .prologue
    .line 4353
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/home/Workspace;->setPageScrollListener(Lcom/android/launcher3/common/base/view/PagedView$PageScrollListener;)V

    .line 4354
    return-void
.end method

.method protected onStageEnter(Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/Animator;
    .locals 21
    .param p1, "data"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    .line 653
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher3/home/Workspace;->getDragController()Lcom/android/launcher3/home/WorkspaceDragController;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/launcher3/common/drag/DragManager;->setDragScroller(Lcom/android/launcher3/common/drag/DragScroller;)V

    .line 654
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v2, v4}, Lcom/android/launcher3/common/drag/DragManager;->setMoveTarget(Landroid/view/View;)V

    .line 656
    const/4 v10, 0x0

    .line 657
    .local v10, "enterAnim":Landroid/animation/Animator;
    if-eqz p1, :cond_6

    .line 658
    move-object/from16 v0, p1

    iget v15, v0, Lcom/android/launcher3/common/stage/StageEntry;->fromStage:I

    .line 659
    .local v15, "fromViewMode":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/stage/StageEntry;->getLayerViews()Ljava/util/HashMap;

    move-result-object v18

    .line 660
    .local v18, "layerViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Integer;>;"
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    .line 661
    .local v3, "animated":Z
    const-string v2, "KEY_SUPPRESS_CHANGE_STAGE_ONCE"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Lcom/android/launcher3/common/stage/StageEntry;->getExtras(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_9

    const/16 v19, 0x1

    .line 662
    .local v19, "suppressChangeStageOnce":Z
    :goto_0
    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    if-eqz v2, :cond_0

    .line 663
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-virtual {v2}, Lcom/android/launcher3/common/tray/TrayManager;->setSuppressChangeStageOnce()V

    .line 666
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/launcher3/home/Workspace;->setVisibility(I)V

    .line 668
    const/4 v2, 0x2

    if-ne v15, v2, :cond_a

    .line 669
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/stage/StageEntry;->getInternalStateFrom()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/launcher3/home/HomeController;->getAdjustedInternalState(I)I

    move-result v14

    .line 670
    .local v14, "fromState":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/stage/StageEntry;->getInternalStateTo()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/launcher3/home/HomeController;->getAdjustedInternalState(I)I

    move-result v20

    .line 672
    .local v20, "toState":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mHomeAnimation:Lcom/android/launcher3/home/HomeTransitionAnimation;

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0}, Lcom/android/launcher3/home/HomeTransitionAnimation;->getEnterFromAppsAnimation(ZLjava/util/HashMap;)Landroid/animation/Animator;

    move-result-object v10

    .line 673
    const/4 v2, 0x2

    move/from16 v0, v20

    if-ne v0, v2, :cond_1

    .line 674
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/home/HomeController;->enterDragState(Z)V

    .line 675
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mDropTargetBar:Lcom/android/launcher3/home/DropTargetBar;

    if-eqz v2, :cond_1

    .line 676
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mDropTargetBar:Lcom/android/launcher3/home/DropTargetBar;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/launcher3/home/DropTargetBar;->setDropTargetBarVisible(Z)V

    .line 680
    :cond_1
    const/4 v2, 0x4

    if-ne v14, v2, :cond_2

    const/4 v2, 0x1

    move/from16 v0, v20

    if-ne v0, v2, :cond_2

    .line 681
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/home/HomeController;->enterNormalState(Z)V

    .line 683
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    move/from16 v0, v20

    # invokes: Lcom/android/launcher3/home/HomeController$State;->set(I)V
    invoke-static {v2, v0}, Lcom/android/launcher3/home/HomeController$State;->access$100(Lcom/android/launcher3/home/HomeController$State;I)V

    .line 685
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/launcher3/home/Workspace;->updateAccessibilityFlags(Z)V

    .line 686
    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteNavigationBar()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 687
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/launcher3/Launcher;->changeNavigationBarColor(Z)V

    .line 689
    :cond_3
    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteStatusBar()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 690
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/launcher3/Launcher;->changeStatusBarColor(Z)V

    .line 693
    :cond_4
    const/4 v2, 0x1

    move/from16 v0, v20

    if-ne v0, v2, :cond_5

    .line 694
    sget-object v2, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080039

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    .line 695
    invoke-virtual {v5}, Lcom/android/launcher3/home/Workspace;->getCurrentPageDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 694
    invoke-virtual {v2, v4}, Lcom/android/launcher3/util/Talk;->say(Ljava/lang/String;)V

    .line 762
    .end local v14    # "fromState":I
    .end local v20    # "toState":I
    :cond_5
    :goto_1
    if-eqz v10, :cond_6

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/launcher3/common/stage/StageEntry;->broughtToHome:Z

    if-eqz v2, :cond_6

    .line 763
    const-wide/16 v4, 0x1e

    invoke-virtual {v10, v4, v5}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 767
    .end local v3    # "animated":Z
    .end local v15    # "fromViewMode":I
    .end local v18    # "layerViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Integer;>;"
    .end local v19    # "suppressChangeStageOnce":Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    const/4 v5, 0x4

    .line 768
    # invokes: Lcom/android/launcher3/home/HomeController$State;->equal(I)Z
    invoke-static {v2, v5}, Lcom/android/launcher3/home/HomeController$State;->access$000(Lcom/android/launcher3/home/HomeController$State;I)Z

    move-result v2

    if-nez v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    const/4 v5, 0x2

    # invokes: Lcom/android/launcher3/home/HomeController$State;->equal(I)Z
    invoke-static {v2, v5}, Lcom/android/launcher3/home/HomeController$State;->access$000(Lcom/android/launcher3/home/HomeController$State;I)Z

    move-result v2

    if-nez v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    const/4 v5, 0x6

    # invokes: Lcom/android/launcher3/home/HomeController$State;->equal(I)Z
    invoke-static {v2, v5}, Lcom/android/launcher3/home/HomeController$State;->access$000(Lcom/android/launcher3/home/HomeController$State;I)Z

    move-result v2

    if-nez v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    if-eqz v2, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    .line 769
    invoke-virtual {v2}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isMultiSelectMode()Z

    move-result v2

    if-eqz v2, :cond_16

    :cond_7
    const/4 v2, 0x1

    .line 767
    :goto_2
    invoke-static {v4, v2}, Lcom/android/launcher3/Utilities;->hideStatusBar(Landroid/view/Window;Z)V

    .line 771
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    const/4 v4, 0x4

    # invokes: Lcom/android/launcher3/home/HomeController$State;->equal(I)Z
    invoke-static {v2, v4}, Lcom/android/launcher3/home/HomeController$State;->access$000(Lcom/android/launcher3/home/HomeController$State;I)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 772
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getTopViewChangedMessageHandler()Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;

    move-result-object v2

    const/4 v4, 0x5

    .line 773
    invoke-virtual {v2, v4}, Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;->sendMessage(I)V

    .line 779
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/home/HomeController;->notifyCaptureIfNecessary()V

    .line 781
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHotword()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 782
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    const/4 v4, 0x1

    # invokes: Lcom/android/launcher3/home/HomeController$State;->equal(I)Z
    invoke-static {v2, v4}, Lcom/android/launcher3/home/HomeController$State;->access$000(Lcom/android/launcher3/home/HomeController$State;I)Z

    move-result v2

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    .line 783
    invoke-virtual {v4}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/launcher3/Launcher;->isGoogleSearchWidget(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 784
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/launcher3/Launcher;->setHotWordDetection(Z)V

    .line 788
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/home/HomeController;->startEdgeLight()V

    .line 789
    return-object v10

    .line 661
    .restart local v3    # "animated":Z
    .restart local v15    # "fromViewMode":I
    .restart local v18    # "layerViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Integer;>;"
    :cond_9
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 697
    .restart local v19    # "suppressChangeStageOnce":Z
    :cond_a
    const/4 v2, 0x5

    if-eq v15, v2, :cond_b

    const/4 v2, 0x6

    if-ne v15, v2, :cond_11

    .line 698
    :cond_b
    const-string v2, "KEY_FOLDER_ICON_VIEW"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/launcher3/common/stage/StageEntry;->getExtras(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 700
    .local v8, "anchorView":Landroid/view/View;
    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    .line 701
    .local v9, "animatorSet":Landroid/animation/AnimatorSet;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mHomeAnimation:Lcom/android/launcher3/home/HomeTransitionAnimation;

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0, v8}, Lcom/android/launcher3/home/HomeTransitionAnimation;->getEnterFromFolderAnimation(ZLjava/util/HashMap;Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v13

    .line 702
    .local v13, "enterFromFolderAnim":Landroid/animation/Animator;
    invoke-virtual {v9, v13}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 703
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mHomeContainer:Lcom/android/launcher3/home/HomeContainer;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeContainer;->getTranslationY()F

    move-result v2

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_c

    .line 704
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mHomeAnimation:Lcom/android/launcher3/home/HomeTransitionAnimation;

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0}, Lcom/android/launcher3/home/HomeTransitionAnimation;->getEnterFromAppsAnimation(ZLjava/util/HashMap;)Landroid/animation/Animator;

    move-result-object v11

    .line 705
    .local v11, "enterFromAppsAnim":Landroid/animation/Animator;
    invoke-virtual {v9, v11}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 707
    .end local v11    # "enterFromAppsAnim":Landroid/animation/Animator;
    :cond_c
    move-object v10, v9

    .line 709
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/stage/StageEntry;->getInternalStateTo()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/launcher3/home/HomeController;->getAdjustedInternalState(I)I

    move-result v20

    .line 710
    .restart local v20    # "toState":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/stage/StageEntry;->getInternalStateFrom()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/launcher3/home/HomeController;->getAdjustedInternalState(I)I

    move-result v14

    .line 711
    .restart local v14    # "fromState":I
    const/4 v2, 0x2

    move/from16 v0, v20

    if-ne v0, v2, :cond_d

    .line 712
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/launcher3/home/HomeController;->enterDragState(Z)V

    .line 713
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mDropTargetBar:Lcom/android/launcher3/home/DropTargetBar;

    if-eqz v2, :cond_d

    const/4 v2, 0x5

    if-ne v15, v2, :cond_d

    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/launcher3/common/stage/StageEntry;->stageCountOnFinishAllStage:I

    const/4 v4, 0x2

    if-le v2, v4, :cond_d

    .line 714
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mDropTargetBar:Lcom/android/launcher3/home/DropTargetBar;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/launcher3/home/DropTargetBar;->setDropTargetBarVisible(Z)V

    .line 718
    :cond_d
    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteStatusBar()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 719
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/launcher3/Launcher;->changeStatusBarColor(Z)V

    .line 722
    :cond_e
    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteNavigationBar()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 723
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/launcher3/Launcher;->changeNavigationBarColor(Z)V

    .line 726
    :cond_f
    const/4 v2, 0x6

    if-ne v15, v2, :cond_5

    .line 727
    const-string v2, "KEY_ITEMS_TO_HIDE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/launcher3/common/stage/StageEntry;->getExtras(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/ArrayList;

    .line 728
    .local v16, "itemsToHide":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    const-string v2, "KEY_ITEMS_TO_SHOW"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/launcher3/common/stage/StageEntry;->getExtras(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/ArrayList;

    .line 729
    .local v17, "itemsToShow":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    if-eqz v16, :cond_10

    if-eqz v17, :cond_10

    .line 730
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Lcom/android/launcher3/Launcher;->updateItemInfo(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 733
    :cond_10
    const/4 v2, 0x1

    move/from16 v0, v20

    if-ne v0, v2, :cond_5

    const/4 v2, 0x4

    if-ne v14, v2, :cond_5

    .line 734
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    move/from16 v0, v20

    # invokes: Lcom/android/launcher3/home/HomeController$State;->set(I)V
    invoke-static {v2, v0}, Lcom/android/launcher3/home/HomeController$State;->access$100(Lcom/android/launcher3/home/HomeController$State;I)V

    .line 735
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v14, v1}, Lcom/android/launcher3/home/HomeController;->switchInternalStateChange(II)V

    .line 736
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mHomeAnimation:Lcom/android/launcher3/home/HomeTransitionAnimation;

    .line 737
    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0}, Lcom/android/launcher3/home/HomeTransitionAnimation;->getEnterFromAppsPickerAnimation(ZLjava/util/HashMap;)Landroid/animation/Animator;

    move-result-object v12

    .line 738
    .local v12, "enterFromAppsPickerAnim":Landroid/animation/Animator;
    invoke-virtual {v9, v12}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 739
    move-object v10, v9

    goto/16 :goto_1

    .line 742
    .end local v8    # "anchorView":Landroid/view/View;
    .end local v9    # "animatorSet":Landroid/animation/AnimatorSet;
    .end local v12    # "enterFromAppsPickerAnim":Landroid/animation/Animator;
    .end local v13    # "enterFromFolderAnim":Landroid/animation/Animator;
    .end local v14    # "fromState":I
    .end local v16    # "itemsToHide":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .end local v17    # "itemsToShow":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .end local v20    # "toState":I
    :cond_11
    const/4 v2, 0x3

    if-eq v15, v2, :cond_12

    const/4 v2, 0x4

    if-ne v15, v2, :cond_5

    .line 743
    :cond_12
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/stage/StageEntry;->getInternalStateFrom()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/launcher3/home/HomeController;->getAdjustedInternalState(I)I

    move-result v14

    .line 744
    .restart local v14    # "fromState":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/stage/StageEntry;->getInternalStateTo()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/launcher3/home/HomeController;->getAdjustedInternalState(I)I

    move-result v20

    .line 745
    .restart local v20    # "toState":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    move/from16 v0, v20

    # invokes: Lcom/android/launcher3/home/HomeController$State;->set(I)V
    invoke-static {v2, v0}, Lcom/android/launcher3/home/HomeController$State;->access$100(Lcom/android/launcher3/home/HomeController$State;I)V

    .line 747
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v14, v1}, Lcom/android/launcher3/home/HomeController;->switchInternalStateChange(II)V

    .line 749
    const/4 v2, 0x2

    move/from16 v0, v20

    if-ne v0, v2, :cond_14

    .line 750
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mHomeAnimation:Lcom/android/launcher3/home/HomeTransitionAnimation;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/home/HomeTransitionAnimation;->getDragAnimation(ZLjava/util/HashMap;ZZZ)Landroid/animation/AnimatorSet;

    move-result-object v10

    .line 751
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mDropTargetBar:Lcom/android/launcher3/home/DropTargetBar;

    if-eqz v2, :cond_13

    .line 752
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mDropTargetBar:Lcom/android/launcher3/home/DropTargetBar;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/launcher3/home/DropTargetBar;->setDropTargetBarVisible(Z)V

    .line 759
    :cond_13
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/launcher3/home/Workspace;->updateAccessibilityFlags(Z)V

    goto/16 :goto_1

    .line 755
    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HomeController;->mHomeAnimation:Lcom/android/launcher3/home/HomeTransitionAnimation;

    const/4 v2, 0x1

    move/from16 v0, v20

    if-ne v0, v2, :cond_15

    const/4 v2, 0x1

    :goto_5
    move-object/from16 v0, v18

    invoke-virtual {v4, v3, v0, v2}, Lcom/android/launcher3/home/HomeTransitionAnimation;->getEnterFromWidgetsAnimation(ZLjava/util/HashMap;Z)Landroid/animation/Animator;

    move-result-object v10

    goto :goto_4

    :cond_15
    const/4 v2, 0x0

    goto :goto_5

    .line 769
    .end local v3    # "animated":Z
    .end local v14    # "fromState":I
    .end local v15    # "fromViewMode":I
    .end local v18    # "layerViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Integer;>;"
    .end local v19    # "suppressChangeStageOnce":Z
    .end local v20    # "toState":I
    :cond_16
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 775
    :cond_17
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getTopViewChangedMessageHandler()Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;

    move-result-object v2

    const/4 v4, 0x1

    .line 776
    invoke-virtual {v2, v4}, Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;->sendMessage(I)V

    goto/16 :goto_3
.end method

.method protected onStageExit(Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/Animator;
    .locals 7
    .param p1, "data"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    const/4 v6, 0x0

    .line 798
    iget-object v5, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v5}, Lcom/android/launcher3/Utilities;->closeDialog(Landroid/app/Activity;)V

    .line 799
    const/4 v2, 0x0

    .line 800
    .local v2, "exitAnim":Landroid/animation/Animator;
    if-eqz p1, :cond_2

    .line 801
    iget v4, p1, Lcom/android/launcher3/common/stage/StageEntry;->toStage:I

    .line 802
    .local v4, "toViewMode":I
    invoke-virtual {p1}, Lcom/android/launcher3/common/stage/StageEntry;->getLayerViews()Ljava/util/HashMap;

    move-result-object v3

    .line 803
    .local v3, "layerViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Integer;>;"
    iget-boolean v1, p1, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    .line 805
    .local v1, "animated":Z
    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    .line 806
    iget-object v5, p0, Lcom/android/launcher3/home/HomeController;->mHomeAnimation:Lcom/android/launcher3/home/HomeTransitionAnimation;

    invoke-virtual {v5, v1, v3}, Lcom/android/launcher3/home/HomeTransitionAnimation;->getExitToAppsAnimation(ZLjava/util/HashMap;)Landroid/animation/Animator;

    move-result-object v2

    .line 807
    iget-object v5, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v5, v6}, Lcom/android/launcher3/home/Workspace;->updateAccessibilityFlags(Z)V

    .line 808
    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteNavigationBar()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 809
    iget-object v5, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5, v6}, Lcom/android/launcher3/Launcher;->changeNavigationBarColor(Z)V

    .line 811
    :cond_0
    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteStatusBar()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 812
    iget-object v5, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5, v6}, Lcom/android/launcher3/Launcher;->changeStatusBarColor(Z)V

    .line 822
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isStartedSwipeAffordanceAnim()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 823
    iget-object v5, p0, Lcom/android/launcher3/home/HomeController;->mSwipeAffordance:Lcom/android/launcher3/home/SwipeAffordance;

    invoke-virtual {v5, v6}, Lcom/android/launcher3/home/SwipeAffordance;->startCancelAnim(Z)V

    .line 827
    .end local v1    # "animated":Z
    .end local v3    # "layerViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Integer;>;"
    .end local v4    # "toViewMode":I
    :cond_2
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHotword()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 828
    iget-object v5, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5, v6}, Lcom/android/launcher3/Launcher;->setHotWordDetection(Z)V

    .line 830
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->stopEdgeLight()V

    .line 832
    return-object v2

    .line 814
    .restart local v1    # "animated":Z
    .restart local v3    # "layerViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Integer;>;"
    .restart local v4    # "toViewMode":I
    :cond_4
    const/4 v5, 0x5

    if-eq v4, v5, :cond_5

    const/4 v5, 0x6

    if-ne v4, v5, :cond_6

    .line 815
    :cond_5
    const-string v5, "KEY_FOLDER_ICON_VIEW"

    invoke-virtual {p1, v5}, Lcom/android/launcher3/common/stage/StageEntry;->getExtras(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 816
    .local v0, "anchorView":Landroid/view/View;
    iget-object v5, p0, Lcom/android/launcher3/home/HomeController;->mHomeAnimation:Lcom/android/launcher3/home/HomeTransitionAnimation;

    invoke-virtual {v5, v1, v3, v0}, Lcom/android/launcher3/home/HomeTransitionAnimation;->getExitToFolderAnimation(ZLjava/util/HashMap;Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v2

    .line 817
    goto :goto_0

    .end local v0    # "anchorView":Landroid/view/View;
    :cond_6
    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    .line 818
    iget-object v5, p0, Lcom/android/launcher3/home/HomeController;->mHomeAnimation:Lcom/android/launcher3/home/HomeTransitionAnimation;

    invoke-virtual {v5, v1, v3}, Lcom/android/launcher3/home/HomeTransitionAnimation;->getExitToWidgetsAnimation(ZLjava/util/HashMap;)Landroid/animation/Animator;

    move-result-object v2

    .line 819
    iget-object v5, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v5, v6}, Lcom/android/launcher3/home/Workspace;->updateAccessibilityFlags(Z)V

    goto :goto_0
.end method

.method public onStartForResult(I)V
    .locals 1
    .param p1, "requestCode"    # I

    .prologue
    .line 2806
    if-ltz p1, :cond_0

    .line 2807
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/HomeController;->setWaitingForResult(Z)V

    .line 2809
    :cond_0
    return-void
.end method

.method public onSwipeBlockListener(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 4402
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-static {v0, p1, p2}, Lcom/android/launcher3/util/event/ScrollDetector;->setBlockArea(Lcom/android/launcher3/common/base/view/PagedView;FF)Z

    .line 4403
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0, v1}, Lcom/android/launcher3/util/event/ScrollDetector;->setScrollableView(Lcom/android/launcher3/home/Workspace;Landroid/content/Context;)Z

    .line 4404
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/util/event/ScrollDetector;->setTalkBackEnabled(Landroid/content/Context;)Z

    .line 4405
    return-void
.end method

.method public onUpdateAlphabetList(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 0
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 3990
    return-void
.end method

.method public recoverCancelItemForFolderLock(Lcom/android/launcher3/common/base/item/IconInfo;JJIII)Z
    .locals 24
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/IconInfo;
    .param p2, "container"    # J
    .param p4, "screenId"    # J
    .param p6, "cellX"    # I
    .param p7, "cellY"    # I
    .param p8, "rank"    # I

    .prologue
    .line 4016
    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    const-wide/16 v10, -0x66

    cmp-long v6, v8, v10

    if-nez v6, :cond_0

    .line 4017
    const-string v6, "Launcher.FolderLock"

    const-string v8, "drag a item from Apps to Home no need recover"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4018
    const/4 v6, 0x0

    .line 4074
    :goto_0
    return v6

    .line 4020
    :cond_0
    const/4 v6, 0x2

    new-array v0, v6, [I

    move-object/from16 v18, v0

    .line 4021
    .local v18, "cellXY":[I
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move-wide/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/launcher3/home/HomeController;->getCellLayout(JJ)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v23

    .line 4022
    .local v23, "layout":Lcom/android/launcher3/common/base/view/CellLayout;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/HomeController;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/android/launcher3/home/HomeBindController;->createShortcut(Lcom/android/launcher3/common/base/item/IconInfo;)Landroid/view/View;

    move-result-object v7

    .line 4023
    .local v7, "view":Landroid/view/View;
    const/16 v22, 0x0

    .line 4025
    .local v22, "foundCellSpan":Z
    if-ltz p6, :cond_5

    if-ltz p7, :cond_5

    .line 4026
    const/4 v6, 0x0

    aput p6, v18, v6

    .line 4027
    const/4 v6, 0x1

    aput p7, v18, v6

    .line 4028
    const/16 v22, 0x1

    .line 4030
    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    const-wide/16 v10, -0x65

    cmp-long v6, v8, v10

    if-eqz v6, :cond_5

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    const-wide/16 v10, -0x64

    cmp-long v6, v8, v10

    if-eqz v6, :cond_5

    .line 4031
    move-object/from16 v0, v23

    instance-of v6, v0, Lcom/android/launcher3/home/HotseatCellLayout;

    if-eqz v6, :cond_2

    .line 4032
    const-string v6, "Launcher.FolderLock"

    const-string v8, "drag from Hotseat  "

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4033
    new-instance v19, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    invoke-direct/range {v19 .. v19}, Lcom/android/launcher3/common/drag/DropTarget$DragObject;-><init>()V

    .line 4034
    .local v19, "dragObject":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    .line 4035
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v6}, Lcom/android/launcher3/home/Hotseat;->getDragController()Lcom/android/launcher3/home/HotseatDragController;

    move-result-object v6

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v7, v1}, Lcom/android/launcher3/home/HotseatDragController;->createUserFolderIfNecessary([ILandroid/view/View;Lcom/android/launcher3/common/drag/DropTarget$DragObject;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 4036
    const/4 v6, 0x1

    goto :goto_0

    .line 4038
    :cond_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v6}, Lcom/android/launcher3/home/Hotseat;->getDragController()Lcom/android/launcher3/home/HotseatDragController;

    move-result-object v6

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Lcom/android/launcher3/home/HotseatDragController;->addToExistingFolderIfNecessary([ILcom/android/launcher3/common/drag/DropTarget$DragObject;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 4039
    const/4 v6, 0x1

    goto :goto_0

    .line 4042
    .end local v19    # "dragObject":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    :cond_2
    new-instance v19, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    invoke-direct/range {v19 .. v19}, Lcom/android/launcher3/common/drag/DropTarget$DragObject;-><init>()V

    .line 4043
    .restart local v19    # "dragObject":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    .line 4044
    invoke-static {}, Lcom/android/launcher3/folder/folderlock/FolderLock;->getInstance()Lcom/android/launcher3/folder/folderlock/FolderLock;

    move-result-object v21

    .line 4045
    .local v21, "folderLock":Lcom/android/launcher3/folder/folderlock/FolderLock;
    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/folderlock/FolderLock;->setReorderLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    .line 4046
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v6}, Lcom/android/launcher3/home/Workspace;->getDragController()Lcom/android/launcher3/home/WorkspaceDragController;

    move-result-object v6

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v7, v1}, Lcom/android/launcher3/home/WorkspaceDragController;->createUserFolderIfNecessary([ILandroid/view/View;Lcom/android/launcher3/common/drag/DropTarget$DragObject;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 4047
    const/4 v6, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Lcom/android/launcher3/folder/folderlock/FolderLock;->setReorderLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    .line 4048
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 4050
    :cond_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v6}, Lcom/android/launcher3/home/Workspace;->getDragController()Lcom/android/launcher3/home/WorkspaceDragController;

    move-result-object v6

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Lcom/android/launcher3/home/WorkspaceDragController;->addToExistingFolderIfNecessary([ILcom/android/launcher3/common/drag/DropTarget$DragObject;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 4051
    const/4 v6, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Lcom/android/launcher3/folder/folderlock/FolderLock;->setReorderLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    .line 4052
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 4054
    :cond_4
    const/4 v6, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Lcom/android/launcher3/folder/folderlock/FolderLock;->setReorderLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    .line 4059
    .end local v19    # "dragObject":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .end local v21    # "folderLock":Lcom/android/launcher3/folder/folderlock/FolderLock;
    :cond_5
    if-nez v22, :cond_6

    .line 4060
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/home/HomeController;->showOutOfSpaceMessage()V

    .line 4061
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 4064
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/launcher3/home/HomeController;->mRestoring:Z

    if-nez v6, :cond_7

    .line 4065
    move-object/from16 v0, v23

    instance-of v6, v0, Lcom/android/launcher3/home/HotseatCellLayout;

    if-eqz v6, :cond_8

    .line 4066
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/home/HomeController;->getHotseat()Lcom/android/launcher3/home/Hotseat;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/home/Hotseat;->getDragController()Lcom/android/launcher3/home/HotseatDragController;

    move-result-object v6

    const/4 v8, 0x0

    aget v8, v18, v8

    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-virtual {v6, v8, v9, v10}, Lcom/android/launcher3/home/HotseatDragController;->makeEmptyCell(IZZ)V

    .line 4067
    const/4 v6, 0x0

    aget v12, v18, v6

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x1

    const/16 v16, 0x1

    const/16 v17, 0x1

    move-object/from16 v6, p0

    move-wide/from16 v8, p2

    move-wide/from16 v10, p4

    invoke-virtual/range {v6 .. v17}, Lcom/android/launcher3/home/HomeController;->addInScreen(Landroid/view/View;JJIIIIZZ)V

    .line 4068
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/HomeController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    const/4 v8, 0x0

    aget v8, v18, v8

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/launcher3/common/drag/DragManager;->createDragView(Landroid/view/View;II)Lcom/android/launcher3/common/drag/DragView;

    move-result-object v20

    .line 4069
    .local v20, "dragView":Lcom/android/launcher3/common/drag/DragView;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v6

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    move-object/from16 v0, v20

    invoke-virtual {v6, v0, v7, v8, v9}, Lcom/android/launcher3/common/view/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/common/drag/DragView;Landroid/view/View;Ljava/lang/Runnable;Landroid/view/View;)V

    .line 4074
    .end local v20    # "dragView":Lcom/android/launcher3/common/drag/DragView;
    :cond_7
    :goto_1
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 4071
    :cond_8
    const/4 v6, 0x0

    aget v12, v18, v6

    const/4 v6, 0x1

    aget v13, v18, v6

    const/4 v14, 0x1

    const/4 v15, 0x1

    move-object/from16 v6, p0

    move-wide/from16 v8, p2

    move-wide/from16 v10, p4

    invoke-virtual/range {v6 .. v15}, Lcom/android/launcher3/home/HomeController;->addInScreen(Landroid/view/View;JJIIII)V

    goto :goto_1
.end method

.method reinflateWidgetsIfNecessary()V
    .locals 10

    .prologue
    .line 2377
    iget-object v9, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v9}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v1

    .line 2378
    .local v1, "clCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 2379
    iget-object v9, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v9, v2}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 2380
    .local v0, "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v7

    .line 2381
    .local v7, "swc":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    invoke-virtual {v7}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v4

    .line 2382
    .local v4, "itemCount":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    if-ge v5, v4, :cond_1

    .line 2383
    invoke-virtual {v7, v5}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 2385
    .local v8, "v":Landroid/view/View;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    if-eqz v9, :cond_0

    .line 2386
    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    .line 2387
    .local v3, "info":Lcom/android/launcher3/home/LauncherAppWidgetInfo;
    iget-object v6, v3, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    check-cast v6, Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    .line 2388
    .local v6, "lahv":Lcom/android/launcher3/home/LauncherAppWidgetHostView;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->isReinflateRequired()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 2389
    iget-object v9, p0, Lcom/android/launcher3/home/HomeController;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    invoke-virtual {v9, v3}, Lcom/android/launcher3/home/HomeBindController;->removeAppWidget(Lcom/android/launcher3/home/LauncherAppWidgetInfo;)V

    .line 2391
    invoke-virtual {v0, v6}, Lcom/android/launcher3/common/base/view/CellLayout;->removeView(Landroid/view/View;)V

    .line 2392
    iget-object v9, p0, Lcom/android/launcher3/home/HomeController;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    invoke-virtual {v9, v3}, Lcom/android/launcher3/home/HomeBindController;->bindAppWidget(Lcom/android/launcher3/home/LauncherAppWidgetInfo;)V

    .line 2382
    .end local v3    # "info":Lcom/android/launcher3/home/LauncherAppWidgetInfo;
    .end local v6    # "lahv":Lcom/android/launcher3/home/LauncherAppWidgetHostView;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2378
    .end local v8    # "v":Landroid/view/View;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2397
    .end local v0    # "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v4    # "itemCount":I
    .end local v5    # "j":I
    .end local v7    # "swc":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    :cond_2
    return-void
.end method

.method public removeCustomPage(I)V
    .locals 4
    .param p1, "toState"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 3215
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    if-eqz v0, :cond_1

    .line 3216
    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/launcher3/home/ZeroPageController;->removeCustomZeroPage(Z)V

    .line 3218
    if-ne p1, v2, :cond_1

    .line 3219
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/home/ZeroPageController;->updatePageIndicatorForZeroPage(ZZ)V

    .line 3220
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->startEdgeLight()V

    .line 3223
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->removeCustomPlusPage()V

    .line 3224
    return-void

    :cond_2
    move v0, v1

    .line 3216
    goto :goto_0
.end method

.method removeHomeItem(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2219
    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/HomeController;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    .line 2220
    .local v0, "parentCell":Lcom/android/launcher3/common/base/view/CellLayout;
    if-eqz v0, :cond_2

    .line 2221
    instance-of v1, v0, Lcom/android/launcher3/home/HotseatCellLayout;

    if-eqz v1, :cond_1

    .line 2222
    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/base/view/CellLayout;->removeViewInLayout(Landroid/view/View;)V

    .line 2234
    :goto_0
    instance-of v1, p1, Lcom/android/launcher3/common/drag/DropTarget;

    if-eqz v1, :cond_0

    .line 2235
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    check-cast p1, Lcom/android/launcher3/common/drag/DropTarget;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {v1, p1}, Lcom/android/launcher3/common/drag/DragManager;->removeDropTarget(Lcom/android/launcher3/common/drag/DropTarget;)V

    .line 2237
    :cond_0
    return-void

    .line 2224
    .restart local p1    # "v":Landroid/view/View;
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/base/view/CellLayout;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 2231
    :cond_2
    const-string v1, "Launcher.HomeController"

    const-string v2, "mDragInfo.cell has null parent"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public removeHomeItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 6
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 2240
    instance-of v3, p1, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    if-eqz v3, :cond_2

    move-object v2, p1

    .line 2241
    check-cast v2, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    .line 2243
    .local v2, "widget":Lcom/android/launcher3/home/LauncherAppWidgetInfo;
    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mAppWidgetHost:Lcom/android/launcher3/home/LauncherAppWidgetHost;

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->isCustomWidget()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2244
    invoke-virtual {v2}, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->isWidgetIdValid()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2247
    new-instance v3, Lcom/android/launcher3/home/HomeController$17;

    invoke-direct {v3, p0, v2}, Lcom/android/launcher3/home/HomeController$17;-><init>(Lcom/android/launcher3/home/HomeController;Lcom/android/launcher3/home/LauncherAppWidgetInfo;)V

    sget-object v4, Lcom/android/launcher3/Utilities;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Void;

    .line 2252
    invoke-virtual {v3, v4, v5}, Lcom/android/launcher3/home/HomeController$17;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2254
    :cond_0
    iget-object v3, v2, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {p0, v3}, Lcom/android/launcher3/home/HomeController;->removeHomeItem(Landroid/view/View;)V

    .line 2256
    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/home/HomeBindController;->removeAppWidget(Lcom/android/launcher3/home/LauncherAppWidgetInfo;)V

    .line 2268
    .end local v2    # "widget":Lcom/android/launcher3/home/LauncherAppWidgetInfo;
    :cond_1
    :goto_0
    return-void

    .line 2257
    :cond_2
    instance-of v3, p1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-nez v3, :cond_3

    instance-of v3, p1, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v3, :cond_1

    .line 2258
    :cond_3
    iget-wide v4, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-virtual {p0, v4, v5}, Lcom/android/launcher3/home/HomeController;->getHomescreenIconByItemId(J)Landroid/view/View;

    move-result-object v1

    .line 2259
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/HomeController;->isItemInFolder(Lcom/android/launcher3/common/base/item/ItemInfo;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v1, :cond_4

    .line 2260
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v3, :cond_4

    .line 2261
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/folder/FolderInfo;

    .local v0, "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    move-object v3, p1

    .line 2262
    check-cast v3, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/folder/FolderInfo;->remove(Lcom/android/launcher3/common/base/item/IconInfo;)V

    .line 2263
    const-string v3, "Launcher.HomeController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeHomeItem : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/launcher3/common/base/item/ItemInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2265
    .end local v0    # "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    :cond_4
    iget-wide v4, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    invoke-virtual {p0, v4, v5}, Lcom/android/launcher3/home/HomeController;->getHomescreenIconByItemId(J)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/launcher3/home/HomeController;->removeHomeItem(Landroid/view/View;)V

    goto :goto_0
.end method

.method public removeHomeOrFolderItem(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;)Z
    .locals 12
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 2410
    instance-of v1, p1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v1, :cond_4

    .line 2411
    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/HomeController;->deleteItemFromDb(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    move-object v1, p1

    .line 2412
    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    iget-boolean v1, v1, Lcom/android/launcher3/common/base/item/IconInfo;->isAppsButton:Z

    if-eqz v1, :cond_3

    .line 2413
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/launcher3/LauncherAppState;->setAppsButtonEnabled(Z)V

    .line 2469
    .end local p1    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    .line 2470
    invoke-virtual {p0, p2}, Lcom/android/launcher3/home/HomeController;->removeHomeItem(Landroid/view/View;)V

    .line 2473
    :cond_1
    const/4 v6, 0x1

    :cond_2
    return v6

    .line 2414
    .restart local p1    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/HomeController;->isItemInFolder(Lcom/android/launcher3/common/base/item/ItemInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2415
    iget-wide v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-virtual {p0, v2, v3}, Lcom/android/launcher3/home/HomeController;->getHomescreenIconByItemId(J)Landroid/view/View;

    move-result-object v8

    .line 2416
    .local v8, "folderView":Landroid/view/View;
    if-eqz v8, :cond_0

    .line 2417
    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/folder/FolderInfo;

    .line 2418
    .local v7, "folderItem":Lcom/android/launcher3/folder/FolderInfo;
    if-eqz v7, :cond_0

    .line 2419
    check-cast p1, Lcom/android/launcher3/common/base/item/IconInfo;

    .end local p1    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    invoke-virtual {v7, p1}, Lcom/android/launcher3/folder/FolderInfo;->remove(Lcom/android/launcher3/common/base/item/IconInfo;)V

    goto :goto_0

    .line 2423
    .end local v7    # "folderItem":Lcom/android/launcher3/folder/FolderInfo;
    .end local v8    # "folderView":Landroid/view/View;
    .restart local p1    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_4
    instance-of v1, p1, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v1, :cond_5

    move-object v0, p1

    .line 2424
    check-cast v0, Lcom/android/launcher3/folder/FolderInfo;

    .line 2425
    .local v0, "folder":Lcom/android/launcher3/folder/FolderInfo;
    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/HomeController;->deleteItemInFolderFromDb(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 2426
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v1

    const-string v2, "DTHF"

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    goto :goto_0

    .line 2428
    .end local v0    # "folder":Lcom/android/launcher3/folder/FolderInfo;
    :cond_5
    instance-of v1, p1, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    if-eqz v1, :cond_2

    move-object v11, p1

    .line 2429
    check-cast v11, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    .line 2431
    .local v11, "widget":Lcom/android/launcher3/home/LauncherAppWidgetInfo;
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHotword()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2432
    iget-object v1, v11, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    if-eqz v1, :cond_6

    iget-object v1, v11, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    sget-object v2, Lcom/android/launcher3/Launcher;->GOOGLE_SEARCH_WIDGET:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2433
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, v6}, Lcom/android/launcher3/Launcher;->setHotWordDetection(Z)V

    .line 2438
    :cond_6
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    invoke-virtual {v1, v11}, Lcom/android/launcher3/home/HomeBindController;->removeAppWidget(Lcom/android/launcher3/home/LauncherAppWidgetInfo;)V

    .line 2439
    invoke-virtual {p0, v11}, Lcom/android/launcher3/home/HomeController;->deleteItemFromDb(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 2441
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mAppWidgetHost:Lcom/android/launcher3/home/LauncherAppWidgetHost;

    if-eqz v1, :cond_7

    invoke-virtual {v11}, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->isCustomWidget()Z

    move-result v1

    if-nez v1, :cond_7

    .line 2442
    invoke-virtual {v11}, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->isWidgetIdValid()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2445
    new-instance v1, Lcom/android/launcher3/home/HomeController$18;

    invoke-direct {v1, p0, v11}, Lcom/android/launcher3/home/HomeController$18;-><init>(Lcom/android/launcher3/home/HomeController;Lcom/android/launcher3/home/LauncherAppWidgetInfo;)V

    sget-object v2, Lcom/android/launcher3/Utilities;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v3, v6, [Ljava/lang/Void;

    .line 2450
    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/home/HomeController$18;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2452
    :cond_7
    iget-object v1, v11, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    if-eqz v1, :cond_8

    sget-object v1, Lcom/android/launcher3/home/HomeController;->sSingleInstanceAppWidgetList:Ljava/util/HashMap;

    iget-object v2, v11, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    .line 2453
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2454
    sget-object v1, Lcom/android/launcher3/home/HomeController;->sSingleInstanceAppWidgetList:Ljava/util/HashMap;

    iget-object v2, v11, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    .line 2455
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/LongSparseArray;

    .line 2456
    .local v10, "userMap":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-result-object v1

    iget-object v2, v11, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/common/compat/UserHandleCompat;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 2457
    .local v9, "profileId":Ljava/lang/Long;
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v2, v3, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto/16 :goto_0

    .line 2458
    .end local v9    # "profileId":Ljava/lang/Long;
    .end local v10    # "userMap":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    :cond_8
    iget-object v1, v11, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/launcher3/home/HomeController;->sSingleInstanceAppWidgetPackageList:Ljava/util/HashMap;

    iget-object v2, v11, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    .line 2459
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2460
    sget-object v1, Lcom/android/launcher3/home/HomeController;->sSingleInstanceAppWidgetPackageList:Ljava/util/HashMap;

    iget-object v2, v11, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    .line 2461
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/LongSparseArray;

    .line 2462
    .restart local v10    # "userMap":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-result-object v1

    iget-object v2, v11, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/common/compat/UserHandleCompat;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 2463
    .restart local v9    # "profileId":Ljava/lang/Long;
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v2, v3, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto/16 :goto_0
.end method

.method removeItemsByComponentName(Ljava/util/HashSet;Lcom/android/launcher3/common/compat/UserHandleCompat;)V
    .locals 18
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Landroid/content/ComponentName;",
            ">;",
            "Lcom/android/launcher3/common/compat/UserHandleCompat;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2580
    .local p1, "componentNames":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/home/HomeController;->getWorkspaceAndHotseatCellLayouts()Ljava/util/ArrayList;

    move-result-object v9

    .line 2581
    .local v9, "cellLayouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/view/CellLayout;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_0
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 2582
    .local v15, "layoutParent":Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-virtual {v15}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v14

    .line 2584
    .local v14, "layout":Landroid/view/ViewGroup;
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 2585
    .local v7, "children":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;>;"
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_1
    invoke-virtual {v14}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v13, v2, :cond_2

    .line 2586
    invoke-virtual {v14, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 2587
    .local v16, "view":Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v2, :cond_1

    .line 2588
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    move-object/from16 v0, v16

    invoke-virtual {v7, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2585
    :cond_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 2592
    .end local v16    # "view":Landroid/view/View;
    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2593
    .local v6, "childrenToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 2594
    .local v5, "folderAppsToRemove":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/folder/FolderInfo;Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;>;"
    new-instance v1, Lcom/android/launcher3/home/HomeController$21;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/launcher3/home/HomeController$21;-><init>(Lcom/android/launcher3/home/HomeController;Ljava/util/HashSet;Lcom/android/launcher3/common/compat/UserHandleCompat;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    .line 2619
    .local v1, "filter":Lcom/android/launcher3/common/model/DataLoader$ItemInfoFilter;
    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/android/launcher3/home/HomeLoader;->filterItemInfo(Ljava/lang/Iterable;Lcom/android/launcher3/common/model/DataLoader$ItemInfoFilter;Z)Ljava/util/ArrayList;

    .line 2622
    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher3/folder/FolderInfo;

    .line 2623
    .local v11, "folder":Lcom/android/launcher3/folder/FolderInfo;
    invoke-virtual {v5, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 2624
    .local v8, "appsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 2625
    .local v12, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-virtual {v11, v12}, Lcom/android/launcher3/folder/FolderInfo;->remove(Lcom/android/launcher3/common/base/item/IconInfo;)V

    goto :goto_2

    .line 2630
    .end local v8    # "appsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    .end local v11    # "folder":Lcom/android/launcher3/folder/FolderInfo;
    .end local v12    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_4
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    .line 2633
    .local v10, "child":Landroid/view/View;
    invoke-virtual {v15, v10}, Lcom/android/launcher3/common/base/view/CellLayout;->removeViewInLayout(Landroid/view/View;)V

    .line 2634
    instance-of v2, v10, Lcom/android/launcher3/common/drag/DropTarget;

    if-eqz v2, :cond_6

    .line 2635
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HomeController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    move-object v2, v10

    check-cast v2, Lcom/android/launcher3/common/drag/DropTarget;

    invoke-virtual {v4, v2}, Lcom/android/launcher3/common/drag/DragManager;->removeDropTarget(Lcom/android/launcher3/common/drag/DropTarget;)V

    .line 2637
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    if-eqz v2, :cond_5

    if-eqz v10, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/home/HomeController;->isSelectState()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2638
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v2, v10}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->removeCheckedApp(Landroid/view/View;)V

    goto :goto_3

    .line 2642
    .end local v10    # "child":Landroid/view/View;
    :cond_7
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_8

    .line 2643
    invoke-virtual {v14}, Landroid/view/ViewGroup;->requestLayout()V

    .line 2644
    invoke-virtual {v14}, Landroid/view/ViewGroup;->invalidate()V

    .line 2647
    :cond_8
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_9

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 2648
    :cond_9
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/home/HomeController;->notifyCapture(Z)V

    goto/16 :goto_0

    .line 2651
    .end local v1    # "filter":Lcom/android/launcher3/common/model/DataLoader$ItemInfoFilter;
    .end local v5    # "folderAppsToRemove":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/folder/FolderInfo;Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;>;"
    .end local v6    # "childrenToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v7    # "children":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;>;"
    .end local v13    # "j":I
    .end local v14    # "layout":Landroid/view/ViewGroup;
    .end local v15    # "layoutParent":Lcom/android/launcher3/common/base/view/CellLayout;
    :cond_a
    return-void
.end method

.method removeItemsByPackageName(Ljava/util/ArrayList;Lcom/android/launcher3/common/compat/UserHandleCompat;)V
    .locals 12
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/launcher3/common/compat/UserHandleCompat;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2540
    .local p1, "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 2541
    .local v8, "packageNames":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v8, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 2544
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 2545
    .local v5, "infos":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 2546
    .local v2, "cns":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeController;->getWorkspaceAndHotseatCellLayouts()Ljava/util/ArrayList;

    move-result-object v0

    .line 2547
    .local v0, "cellLayouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/view/CellLayout;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 2548
    .local v7, "layoutParent":Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-virtual {v7}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v6

    .line 2549
    .local v6, "layout":Landroid/view/ViewGroup;
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 2550
    .local v1, "childCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_0

    .line 2551
    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 2552
    .local v9, "view":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    instance-of v10, v10, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v10, :cond_1

    .line 2553
    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {v5, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2550
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2557
    .end local v1    # "childCount":I
    .end local v4    # "i":I
    .end local v6    # "layout":Landroid/view/ViewGroup;
    .end local v7    # "layoutParent":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v9    # "view":Landroid/view/View;
    :cond_2
    new-instance v3, Lcom/android/launcher3/home/HomeController$20;

    invoke-direct {v3, p0, v8, p2, v2}, Lcom/android/launcher3/home/HomeController$20;-><init>(Lcom/android/launcher3/home/HomeController;Ljava/util/HashSet;Lcom/android/launcher3/common/compat/UserHandleCompat;Ljava/util/HashSet;)V

    .line 2567
    .local v3, "filter":Lcom/android/launcher3/common/model/DataLoader$ItemInfoFilter;
    const/4 v10, 0x0

    invoke-static {v5, v3, v10}, Lcom/android/launcher3/home/HomeLoader;->filterItemInfo(Ljava/lang/Iterable;Lcom/android/launcher3/common/model/DataLoader$ItemInfoFilter;Z)Ljava/util/ArrayList;

    .line 2570
    invoke-virtual {p0, v2, p2}, Lcom/android/launcher3/home/HomeController;->removeItemsByComponentName(Ljava/util/HashSet;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    .line 2571
    return-void
.end method

.method removeItemsOnScreen(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2401
    .local p1, "removeItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .local p2, "moveToAppsItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 2402
    .local v0, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/android/launcher3/home/HomeController;->removeHomeOrFolderItem(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;)Z

    goto :goto_0

    .line 2404
    .end local v0    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2405
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, p2}, Lcom/android/launcher3/Launcher;->updateItemInfoToAppsItems(Ljava/util/ArrayList;)V

    .line 2407
    :cond_1
    return-void
.end method

.method public replaceFolderWithFinalItem(Lcom/android/launcher3/common/base/item/ItemInfo;ILandroid/view/View;)V
    .locals 17
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p2, "itemCount"    # I
    .param p3, "folderIcon"    # Landroid/view/View;

    .prologue
    .line 2818
    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/android/launcher3/folder/FolderInfo;

    if-nez v2, :cond_1

    .line 2856
    .end local p3    # "folderIcon":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .restart local p3    # "folderIcon":Landroid/view/View;
    :cond_1
    move-object/from16 v16, p1

    .line 2822
    check-cast v16, Lcom/android/launcher3/folder/FolderInfo;

    .line 2823
    .local v16, "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    move-object/from16 v0, v16

    iget-wide v6, v0, Lcom/android/launcher3/folder/FolderInfo;->container:J

    move-object/from16 v0, v16

    iget-wide v8, v0, Lcom/android/launcher3/folder/FolderInfo;->screenId:J

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v8, v9}, Lcom/android/launcher3/home/HomeController;->getCellLayout(JJ)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v14

    .line 2825
    .local v14, "cellLayout":Lcom/android/launcher3/common/base/view/CellLayout;
    const/4 v5, 0x0

    .line 2827
    .local v5, "child":Landroid/view/View;
    const/4 v2, 0x1

    move/from16 v0, p2

    if-gt v0, v2, :cond_4

    .line 2828
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 2829
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 2830
    .local v3, "finalItem":Lcom/android/launcher3/common/base/item/IconInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    invoke-virtual {v2, v14, v3}, Lcom/android/launcher3/home/HomeBindController;->createShortcut(Landroid/view/ViewGroup;Lcom/android/launcher3/common/base/item/IconInfo;)Landroid/view/View;

    move-result-object v15

    .line 2831
    .end local v5    # "child":Landroid/view/View;
    .local v15, "child":Landroid/view/View;
    move-object/from16 v0, v16

    iget-wide v4, v0, Lcom/android/launcher3/folder/FolderInfo;->container:J

    move-object/from16 v0, v16

    iget-wide v6, v0, Lcom/android/launcher3/folder/FolderInfo;->screenId:J

    move-object/from16 v0, v16

    iget v8, v0, Lcom/android/launcher3/folder/FolderInfo;->cellX:I

    move-object/from16 v0, v16

    iget v9, v0, Lcom/android/launcher3/folder/FolderInfo;->cellY:I

    move-object/from16 v0, v16

    iget v10, v0, Lcom/android/launcher3/folder/FolderInfo;->rank:I

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v10}, Lcom/android/launcher3/home/HomeController;->addOrMoveItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJIII)V

    .line 2834
    .end local v3    # "finalItem":Lcom/android/launcher3/common/base/item/IconInfo;
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/HomeController;->deleteItemFromDb(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 2835
    if-eqz v14, :cond_2

    .line 2837
    instance-of v2, v14, Lcom/android/launcher3/home/HotseatCellLayout;

    if-eqz v2, :cond_5

    .line 2838
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Lcom/android/launcher3/common/base/view/CellLayout;->removeViewInLayout(Landroid/view/View;)V

    .line 2843
    :cond_2
    :goto_2
    move-object/from16 v0, p3

    instance-of v2, v0, Lcom/android/launcher3/common/drag/DropTarget;

    if-eqz v2, :cond_3

    .line 2844
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    check-cast p3, Lcom/android/launcher3/common/drag/DropTarget;

    .end local p3    # "folderIcon":Landroid/view/View;
    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/android/launcher3/common/drag/DragManager;->removeDropTarget(Lcom/android/launcher3/common/drag/DropTarget;)V

    .line 2846
    :cond_3
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v5

    const-string v6, "DTHF"

    const/4 v7, 0x0

    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    move-object v5, v15

    .line 2852
    .end local v15    # "child":Landroid/view/View;
    .restart local v5    # "child":Landroid/view/View;
    :cond_4
    if-eqz v5, :cond_0

    .line 2853
    move-object/from16 v0, v16

    iget-wide v6, v0, Lcom/android/launcher3/folder/FolderInfo;->container:J

    move-object/from16 v0, v16

    iget-wide v8, v0, Lcom/android/launcher3/folder/FolderInfo;->screenId:J

    move-object/from16 v0, v16

    iget v10, v0, Lcom/android/launcher3/folder/FolderInfo;->cellX:I

    move-object/from16 v0, v16

    iget v11, v0, Lcom/android/launcher3/folder/FolderInfo;->cellY:I

    move-object/from16 v0, v16

    iget v12, v0, Lcom/android/launcher3/folder/FolderInfo;->spanX:I

    move-object/from16 v0, v16

    iget v13, v0, Lcom/android/launcher3/folder/FolderInfo;->spanY:I

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v13}, Lcom/android/launcher3/home/HomeController;->addInScreenFromBind(Landroid/view/View;JJIIII)V

    goto/16 :goto_0

    .line 2840
    .end local v5    # "child":Landroid/view/View;
    .restart local v15    # "child":Landroid/view/View;
    .restart local p3    # "folderIcon":Landroid/view/View;
    :cond_5
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Lcom/android/launcher3/common/base/view/CellLayout;->removeView(Landroid/view/View;)V

    goto :goto_2

    .end local v15    # "child":Landroid/view/View;
    .restart local v5    # "child":Landroid/view/View;
    :cond_6
    move-object v15, v5

    .end local v5    # "child":Landroid/view/View;
    .restart local v15    # "child":Landroid/view/View;
    goto :goto_1
.end method

.method requestBindAppWidget(ILandroid/content/Intent;)V
    .locals 7
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    const/16 v5, 0x1f4

    const/4 v0, -0x1

    .line 1583
    iput v0, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddWidgetId:I

    .line 1585
    new-instance v6, Lcom/android/launcher3/home/HomeController$5;

    invoke-direct {v6, p0}, Lcom/android/launcher3/home/HomeController$5;-><init>(Lcom/android/launcher3/home/HomeController;)V

    .line 1593
    .local v6, "exitDragStateRunnable":Ljava/lang/Runnable;
    if-eqz p2, :cond_1

    const-string v2, "appWidgetId"

    .line 1594
    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1595
    .local v1, "appWidgetId":I
    :goto_0
    if-nez p1, :cond_2

    .line 1596
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/home/HomeController;->completeTwoStageWidgetDrop(II)V

    .line 1597
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0, v6, v5}, Lcom/android/launcher3/home/Workspace;->removeExtraEmptyScreenDelayed(Ljava/lang/Runnable;I)V

    .line 1603
    :cond_0
    :goto_1
    return-void

    .end local v1    # "appWidgetId":I
    :cond_1
    move v1, v0

    .line 1594
    goto :goto_0

    .line 1599
    .restart local v1    # "appWidgetId":I
    :cond_2
    if-ne p1, v0, :cond_0

    .line 1600
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddWidgetInfo:Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/home/HomeController;->addAppWidgetImpl(ILcom/android/launcher3/common/base/item/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;I)V

    goto :goto_1
.end method

.method requestCreateOrPickAppWidget(IILandroid/content/Intent;)V
    .locals 11
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/16 v10, 0x1f4

    const/4 v5, -0x1

    .line 1533
    iget v3, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddWidgetId:I

    .line 1534
    .local v3, "pendingAddWidgetId":I
    iput v5, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddWidgetId:I

    .line 1536
    if-eqz p3, :cond_0

    const-string v6, "appWidgetId"

    invoke-virtual {p3, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 1538
    .local v5, "widgetId":I
    :cond_0
    if-gez v5, :cond_2

    .line 1539
    move v0, v3

    .line 1545
    .local v0, "appWidgetId":I
    :goto_0
    if-ltz v0, :cond_1

    if-nez p2, :cond_4

    .line 1546
    :cond_1
    const-string v6, "Launcher.HomeController"

    const-string v7, "Error: appWidgetId (EXTRA_APPWIDGET_ID) was not returned from the widget configuration activity."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1548
    const/4 v4, 0x0

    .line 1549
    .local v4, "result":I
    invoke-direct {p0, v4, v0}, Lcom/android/launcher3/home/HomeController;->completeTwoStageWidgetDrop(II)V

    .line 1550
    new-instance v2, Lcom/android/launcher3/home/HomeController$4;

    invoke-direct {v2, p0}, Lcom/android/launcher3/home/HomeController$4;-><init>(Lcom/android/launcher3/home/HomeController;)V

    .line 1556
    .local v2, "onComplete":Ljava/lang/Runnable;
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isWorkspaceLocked()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1559
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    const-wide/16 v8, 0x1f4

    invoke-virtual {v6, v2, v8, v9}, Lcom/android/launcher3/home/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1579
    .end local v2    # "onComplete":Ljava/lang/Runnable;
    .end local v4    # "result":I
    :goto_1
    return-void

    .line 1541
    .end local v0    # "appWidgetId":I
    :cond_2
    move v0, v5

    .restart local v0    # "appWidgetId":I
    goto :goto_0

    .line 1561
    .restart local v2    # "onComplete":Ljava/lang/Runnable;
    .restart local v4    # "result":I
    :cond_3
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v6, v2, v10}, Lcom/android/launcher3/home/Workspace;->removeExtraEmptyScreenDelayed(Ljava/lang/Runnable;I)V

    goto :goto_1

    .line 1565
    .end local v2    # "onComplete":Ljava/lang/Runnable;
    .end local v4    # "result":I
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isWorkspaceLocked()Z

    move-result v6

    if-nez v6, :cond_6

    .line 1566
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v6, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v8, -0x64

    cmp-long v6, v6, v8

    if-nez v6, :cond_5

    .line 1569
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v7, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v8, v7, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    .line 1570
    invoke-direct {p0, v8, v9}, Lcom/android/launcher3/home/HomeController;->ensurePendingDropLayoutExists(J)J

    move-result-wide v8

    iput-wide v8, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    .line 1572
    :cond_5
    invoke-direct {p0, p2, v0}, Lcom/android/launcher3/home/HomeController;->completeTwoStageWidgetDrop(II)V

    .line 1573
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v10}, Lcom/android/launcher3/home/Workspace;->removeExtraEmptyScreenDelayed(Ljava/lang/Runnable;I)V

    goto :goto_1

    .line 1575
    :cond_6
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-direct {p0, p1, p3, v0, v6}, Lcom/android/launcher3/home/HomeController;->preparePendingAddArgs(ILandroid/content/Intent;ILcom/android/launcher3/common/base/item/ItemInfo;)Lcom/android/launcher3/home/HomeController$PendingAddArguments;

    move-result-object v1

    .line 1576
    .local v1, "args":Lcom/android/launcher3/home/HomeController$PendingAddArguments;
    sput-object v1, Lcom/android/launcher3/home/HomeController;->sPendingAddItem:Lcom/android/launcher3/home/HomeController$PendingAddArguments;

    goto :goto_1
.end method

.method requestCreateShortcut(IILandroid/content/Intent;)V
    .locals 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/16 v7, 0x1f4

    const/4 v6, -0x1

    .line 1623
    new-instance v1, Lcom/android/launcher3/home/HomeController$6;

    invoke-direct {v1, p0}, Lcom/android/launcher3/home/HomeController$6;-><init>(Lcom/android/launcher3/home/HomeController;)V

    .line 1630
    .local v1, "exitDragStateRunnable":Ljava/lang/Runnable;
    if-ne p2, v6, :cond_2

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v2, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 1631
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-direct {p0, p1, p3, v6, v2}, Lcom/android/launcher3/home/HomeController;->preparePendingAddArgs(ILandroid/content/Intent;ILcom/android/launcher3/common/base/item/ItemInfo;)Lcom/android/launcher3/home/HomeController$PendingAddArguments;

    move-result-object v0

    .line 1633
    .local v0, "args":Lcom/android/launcher3/home/HomeController$PendingAddArguments;
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isWorkspaceLocked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1634
    sput-object v0, Lcom/android/launcher3/home/HomeController;->sPendingAddItem:Lcom/android/launcher3/home/HomeController$PendingAddArguments;

    .line 1644
    .end local v0    # "args":Lcom/android/launcher3/home/HomeController$PendingAddArguments;
    :cond_0
    :goto_0
    return-void

    .line 1636
    .restart local v0    # "args":Lcom/android/launcher3/home/HomeController$PendingAddArguments;
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/HomeController;->completeAdd(Lcom/android/launcher3/home/HomeController$PendingAddArguments;)J

    .line 1637
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v2, v1, v7}, Lcom/android/launcher3/home/Workspace;->removeExtraEmptyScreenDelayed(Ljava/lang/Runnable;I)V

    goto :goto_0

    .line 1640
    .end local v0    # "args":Lcom/android/launcher3/home/HomeController$PendingAddArguments;
    :cond_2
    if-nez p2, :cond_0

    .line 1641
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v2, v1, v7}, Lcom/android/launcher3/home/Workspace;->removeExtraEmptyScreenDelayed(Ljava/lang/Runnable;I)V

    goto :goto_0
.end method

.method requestReconfigureAppWidget(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, -0x1

    .line 1607
    iget v1, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddWidgetId:I

    .line 1608
    .local v1, "pendingAddWidgetId":I
    iput v2, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddWidgetId:I

    .line 1610
    if-ne p2, v2, :cond_0

    .line 1612
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-direct {p0, p1, p3, v1, v2}, Lcom/android/launcher3/home/HomeController;->preparePendingAddArgs(ILandroid/content/Intent;ILcom/android/launcher3/common/base/item/ItemInfo;)Lcom/android/launcher3/home/HomeController$PendingAddArguments;

    move-result-object v0

    .line 1613
    .local v0, "args":Lcom/android/launcher3/home/HomeController$PendingAddArguments;
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isWorkspaceLocked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1614
    sput-object v0, Lcom/android/launcher3/home/HomeController;->sPendingAddItem:Lcom/android/launcher3/home/HomeController$PendingAddArguments;

    .line 1619
    .end local v0    # "args":Lcom/android/launcher3/home/HomeController$PendingAddArguments;
    :cond_0
    :goto_0
    return-void

    .line 1616
    .restart local v0    # "args":Lcom/android/launcher3/home/HomeController$PendingAddArguments;
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/HomeController;->completeAdd(Lcom/android/launcher3/home/HomeController$PendingAddArguments;)J

    goto :goto_0
.end method

.method resetAddInfo()V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 1866
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iput-wide v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    .line 1867
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iput-wide v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    .line 1868
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iput v2, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    iput v2, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    .line 1869
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iput v2, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    iput v2, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    .line 1870
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    const/4 v2, 0x1

    iput v2, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->minSpanY:I

    iput v2, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->minSpanX:I

    .line 1871
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iput-object v3, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->dropPos:[I

    .line 1872
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iput-object v3, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    .line 1873
    return-void
.end method

.method public resetStartedSFinder()V
    .locals 1

    .prologue
    .line 3423
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mHomeContainer:Lcom/android/launcher3/home/HomeContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeContainer;->resetStartedSFinder()V

    .line 3424
    return-void
.end method

.method public resetWorkspacePagesAlpha()V
    .locals 1

    .prologue
    .line 4434
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->resetAllPageAlphaValues()V

    .line 4435
    return-void
.end method

.method public restoreState(Landroid/os/Bundle;Z)V
    .locals 10
    .param p1, "savedState"    # Landroid/os/Bundle;
    .param p2, "isOnTop"    # Z

    .prologue
    .line 548
    if-nez p2, :cond_0

    .line 549
    sget-object v3, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    invoke-virtual {v3}, Lcom/android/launcher3/util/Talk;->isAccessibilityEnabled()Z

    move-result v0

    .line 550
    .local v0, "accessibilityEnabled":Z
    iget-object v8, p0, Lcom/android/launcher3/home/HomeController;->mHomeContainer:Lcom/android/launcher3/home/HomeContainer;

    if-eqz v0, :cond_3

    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v8, v3}, Lcom/android/launcher3/home/HomeContainer;->setVisibility(I)V

    .line 551
    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mPageIndicatorView:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mHomeContainer:Lcom/android/launcher3/home/HomeContainer;

    iget-object v8, p0, Lcom/android/launcher3/home/HomeController;->mPageIndicatorView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 552
    iget-object v8, p0, Lcom/android/launcher3/home/HomeController;->mPageIndicatorView:Landroid/view/View;

    if-eqz v0, :cond_4

    const/16 v3, 0x8

    :goto_1
    invoke-virtual {v8, v3}, Landroid/view/View;->setVisibility(I)V

    .line 555
    .end local v0    # "accessibilityEnabled":Z
    :cond_0
    const-string v3, "launcher.current_screen"

    const/16 v8, -0x3e9

    invoke-virtual {p1, v3, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 557
    .local v1, "currentScreen":I
    const/16 v3, -0x3e9

    if-eq v1, v3, :cond_1

    .line 558
    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v3, v1}, Lcom/android/launcher3/home/Workspace;->setRestorePage(I)V

    .line 561
    :cond_1
    const-string v3, "launcher.add_container"

    const-wide/16 v8, -0x1

    invoke-virtual {p1, v3, v8, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 562
    .local v4, "pendingAddContainer":J
    const-string v3, "launcher.add_screen"

    const-wide/16 v8, -0x1

    invoke-virtual {p1, v3, v8, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 564
    .local v6, "pendingAddScreen":J
    const-wide/16 v8, -0x1

    cmp-long v3, v4, v8

    if-eqz v3, :cond_2

    const-wide/16 v8, -0x1

    cmp-long v3, v6, v8

    if-lez v3, :cond_2

    .line 565
    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iput-wide v4, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    .line 566
    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iput-wide v6, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    .line 567
    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    const-string v8, "launcher.add_cell_x"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    .line 568
    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    const-string v8, "launcher.add_cell_y"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    .line 569
    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    const-string v8, "launcher.add_span_x"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    .line 570
    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    const-string v8, "launcher.add_span_y"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    .line 571
    iget-object v8, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    const-string v3, "launcher.add_component"

    .line 572
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    iput-object v3, v8, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    .line 573
    const-string v3, "launcher.add_widget_info"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/appwidget/AppWidgetProviderInfo;

    .line 575
    .local v2, "info":Landroid/appwidget/AppWidgetProviderInfo;
    if-nez v2, :cond_5

    const/4 v3, 0x0

    .line 576
    :goto_2
    iput-object v3, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddWidgetInfo:Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    .line 578
    const-string v3, "launcher.add_widget_id"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddWidgetId:I

    .line 579
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/launcher3/home/HomeController;->setWaitingForResult(Z)V

    .line 581
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/launcher3/home/HomeController;->mRestoring:Z

    .line 583
    .end local v2    # "info":Landroid/appwidget/AppWidgetProviderInfo;
    :cond_2
    return-void

    .line 550
    .end local v1    # "currentScreen":I
    .end local v4    # "pendingAddContainer":J
    .end local v6    # "pendingAddScreen":J
    .restart local v0    # "accessibilityEnabled":Z
    :cond_3
    const/4 v3, 0x4

    goto/16 :goto_0

    .line 552
    :cond_4
    const/4 v3, 0x4

    goto/16 :goto_1

    .line 575
    .end local v0    # "accessibilityEnabled":Z
    .restart local v1    # "currentScreen":I
    .restart local v2    # "info":Landroid/appwidget/AppWidgetProviderInfo;
    .restart local v4    # "pendingAddContainer":J
    .restart local v6    # "pendingAddScreen":J
    :cond_5
    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 576
    invoke-static {v3, v2}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    move-result-object v3

    goto :goto_2
.end method

.method public setAppsButtonEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 3098
    const/4 v0, 0x0

    .line 3099
    .local v0, "appsButton":Lcom/android/launcher3/common/base/item/IconInfo;
    if-eqz p1, :cond_0

    .line 3100
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->createAppsButton(Landroid/content/Context;)Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v0

    .line 3102
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getLauncherModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, v2, p1, v0}, Lcom/android/launcher3/LauncherModel;->updateAppsButton(Landroid/content/Context;ZLcom/android/launcher3/common/base/item/IconInfo;)V

    .line 3103
    return-void
.end method

.method public setHomeDefaultIconClick(Z)V
    .locals 0
    .param p1, "isClicked"    # Z

    .prologue
    .line 4408
    iput-boolean p1, p0, Lcom/android/launcher3/home/HomeController;->mHomeDefaultIconClick:Z

    .line 4409
    return-void
.end method

.method setPendingAddItem(Lcom/android/launcher3/home/HomeController$PendingAddArguments;)V
    .locals 0
    .param p1, "arg"    # Lcom/android/launcher3/home/HomeController$PendingAddArguments;

    .prologue
    .line 2015
    sput-object p1, Lcom/android/launcher3/home/HomeController;->sPendingAddItem:Lcom/android/launcher3/home/HomeController$PendingAddArguments;

    .line 2016
    return-void
.end method

.method public setRestoring(Z)V
    .locals 0
    .param p1, "restoring"    # Z

    .prologue
    .line 1420
    iput-boolean p1, p0, Lcom/android/launcher3/home/HomeController;->mRestoring:Z

    .line 1421
    return-void
.end method

.method public setWaitingForResult(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 1428
    iput-boolean p1, p0, Lcom/android/launcher3/home/HomeController;->mWaitingForResult:Z

    .line 1429
    return-void
.end method

.method public setup()V
    .locals 6

    .prologue
    .line 277
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getLauncherModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v1

    .line 278
    .local v1, "model":Lcom/android/launcher3/LauncherModel;
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    .line 279
    .local v0, "app":Lcom/android/launcher3/LauncherAppState;
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/home/HomeController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    .line 280
    invoke-virtual {v1}, Lcom/android/launcher3/LauncherModel;->getHomeLoader()Lcom/android/launcher3/home/HomeLoader;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/home/HomeController;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    .line 281
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeLoader;->getUpdater()Lcom/android/launcher3/common/model/DataUpdater;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/model/FavoritesUpdater;

    iput-object v2, p0, Lcom/android/launcher3/home/HomeController;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    .line 283
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getTrayManager()Lcom/android/launcher3/common/tray/TrayManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/home/HomeController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    .line 284
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    if-eqz v2, :cond_0

    .line 285
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-virtual {v2, p0}, Lcom/android/launcher3/common/tray/TrayManager;->addTrayEventCallbacks(Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;)V

    .line 288
    :cond_0
    new-instance v2, Lcom/android/launcher3/home/HomeBindController;

    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/common/model/IconCache;

    move-result-object v4

    invoke-direct {v2, v3, p0, v1, v4}, Lcom/android/launcher3/home/HomeBindController;-><init>(Landroid/content/Context;Lcom/android/launcher3/home/HomeController;Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/common/model/IconCache;)V

    iput-object v2, p0, Lcom/android/launcher3/home/HomeController;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    .line 289
    new-instance v2, Lcom/android/launcher3/home/HomeTransitionAnimation;

    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v4, p0, Lcom/android/launcher3/home/HomeController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-direct {v2, v3, p0, v4}, Lcom/android/launcher3/home/HomeTransitionAnimation;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/home/HomeController;Lcom/android/launcher3/common/tray/TrayManager;)V

    iput-object v2, p0, Lcom/android/launcher3/home/HomeController;->mHomeAnimation:Lcom/android/launcher3/home/HomeTransitionAnimation;

    .line 291
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v2}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/home/HomeController;->mAppWidgetManager:Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;

    .line 293
    new-instance v2, Lcom/android/launcher3/home/LauncherAppWidgetHost;

    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    const/16 v4, 0x400

    invoke-direct {v2, v3, v4}, Lcom/android/launcher3/home/LauncherAppWidgetHost;-><init>(Lcom/android/launcher3/Launcher;I)V

    iput-object v2, p0, Lcom/android/launcher3/home/HomeController;->mAppWidgetHost:Lcom/android/launcher3/home/LauncherAppWidgetHost;

    .line 294
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mAppWidgetHost:Lcom/android/launcher3/home/LauncherAppWidgetHost;

    invoke-virtual {v2}, Lcom/android/launcher3/home/LauncherAppWidgetHost;->startListening()V

    .line 296
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFolderLock()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 297
    invoke-static {}, Lcom/android/launcher3/folder/folderlock/FolderLock;->getInstance()Lcom/android/launcher3/folder/folderlock/FolderLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/home/HomeController;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    .line 298
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    invoke-virtual {v2, p0}, Lcom/android/launcher3/folder/folderlock/FolderLock;->addFolderLockActionCallback(Lcom/android/launcher3/folder/folderlock/FolderLock$FolderLockActionCallback;)V

    .line 301
    :cond_1
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/launcher3/LauncherModel;->registerOnBadgeBindingCompletedLisnter(Lcom/android/launcher3/LauncherModel$OnBadgeBindingCompletedLisnter;)V

    .line 302
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/launcher3/LauncherModel;->registerOnLiveIconUpdateListener(Lcom/android/launcher3/LauncherModel$OnRefreshLiveIconListener;)V

    .line 304
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportCustomerDialerChange()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 305
    new-instance v2, Lcom/android/launcher3/home/HomeController$DialerChangeObserver;

    invoke-direct {v2, p0}, Lcom/android/launcher3/home/HomeController$DialerChangeObserver;-><init>(Lcom/android/launcher3/home/HomeController;)V

    iput-object v2, p0, Lcom/android/launcher3/home/HomeController;->mDialerChangeObserver:Lcom/android/launcher3/home/HomeController$DialerChangeObserver;

    .line 306
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "skt_phone20_settings"

    .line 307
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/launcher3/home/HomeController;->mDialerChangeObserver:Lcom/android/launcher3/home/HomeController$DialerChangeObserver;

    .line 306
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 310
    :cond_2
    new-instance v2, Lcom/android/launcher3/util/capture/CapturePreview;

    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v2, v3}, Lcom/android/launcher3/util/capture/CapturePreview;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/launcher3/home/HomeController;->mHomeCapturePreview:Lcom/android/launcher3/util/capture/CapturePreview;

    .line 311
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mHomeCapturePreview:Lcom/android/launcher3/util/capture/CapturePreview;

    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mCaptureListener:Lcom/android/launcher3/util/capture/CapturePreview$CaptureListener;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/capture/CapturePreview;->setListener(Lcom/android/launcher3/util/capture/CapturePreview$CaptureListener;)V

    .line 313
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v2

    new-instance v3, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;

    invoke-direct {v3, p0}, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;-><init>(Lcom/android/launcher3/home/HomeController;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher3/proxy/LauncherProxy;->setHomeProxyCallbacks(Lcom/android/launcher3/proxy/HomeProxyCallbacks;)V

    .line 314
    return-void
.end method

.method showCancelDropTarget()V
    .locals 1

    .prologue
    .line 4245
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mDropTargetBar:Lcom/android/launcher3/home/DropTargetBar;

    if-eqz v0, :cond_0

    .line 4246
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mDropTargetBar:Lcom/android/launcher3/home/DropTargetBar;

    invoke-virtual {v0}, Lcom/android/launcher3/home/DropTargetBar;->showCancelDropTarget()V

    .line 4248
    :cond_0
    return-void
.end method

.method showMoveToAppsPanel(Z)V
    .locals 4
    .param p1, "showPanel"    # Z

    .prologue
    .line 3369
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getCloneItemEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3370
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3388
    :cond_0
    :goto_0
    return-void

    .line 3374
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    if-eqz v1, :cond_0

    .line 3375
    if-eqz p1, :cond_2

    .line 3376
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mHomeContainer:Lcom/android/launcher3/home/HomeContainer;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeContainer;->getHeight()I

    move-result v2

    invoke-virtual {v1, p0, v2}, Lcom/android/launcher3/common/tray/TrayManager;->pullTrayForDrag(Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;I)V

    goto :goto_0

    .line 3378
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mHomeContainer:Lcom/android/launcher3/home/HomeContainer;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeContainer;->getHeight()I

    move-result v2

    invoke-virtual {v1, p0, v2}, Lcom/android/launcher3/common/tray/TrayManager;->releaseTrayForDrag(Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;I)V

    .line 3380
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->isHomeStage()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mHomeContainer:Lcom/android/launcher3/home/HomeContainer;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeContainer;->getTranslationY()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->isRunningAnimation()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3381
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mHomeAnimation:Lcom/android/launcher3/home/HomeTransitionAnimation;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->isHomeStage()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/home/HomeTransitionAnimation;->getTrayReturnAnimation(ZZ)Landroid/animation/Animator;

    move-result-object v0

    .line 3382
    .local v0, "returnAnimator":Landroid/animation/Animator;
    if-eqz v0, :cond_0

    .line 3383
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_0
.end method

.method showOutOfSpaceMessage()V
    .locals 3

    .prologue
    .line 2033
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v1, 0x7f080074

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2034
    return-void
.end method

.method startDrag(Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;ZZ)Z
    .locals 10
    .param p1, "cellInfo"    # Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;
    .param p2, "allowQuickOption"    # Z
    .param p3, "fromEmptyCell"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1493
    iget-object v0, p1, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 1496
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isInTouchMode()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1527
    :cond_0
    :goto_0
    return v4

    .line 1500
    :cond_1
    instance-of v2, v0, Landroid/appwidget/AppWidgetHostView;

    if-eqz v2, :cond_2

    move-object v2, v0

    check-cast v2, Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    iget-object v2, v2, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mPrvHostView:Landroid/widget/FrameLayout;

    if-nez v2, :cond_0

    :cond_2
    instance-of v2, v0, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_3

    const-string v2, "previous_hostView"

    .line 1501
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1505
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_5

    .line 1506
    :cond_4
    const-string v2, "Launcher.HomeController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parent of child is null, child = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1510
    :cond_5
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1512
    iget-wide v6, p1, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->container:J

    const-wide/16 v8, -0x65

    cmp-long v2, v6, v8

    if-nez v2, :cond_7

    move v1, v3

    .line 1514
    .local v1, "isHotseat":Z
    :goto_1
    if-eqz v1, :cond_8

    .line 1515
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v5, p0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v5}, Lcom/android/launcher3/home/Hotseat;->getDragController()Lcom/android/launcher3/home/HotseatDragController;

    move-result-object v5

    invoke-virtual {v2, v0, v5, p2, p3}, Lcom/android/launcher3/Launcher;->beginDragShared(Landroid/view/View;Lcom/android/launcher3/common/drag/DragSource;ZZ)V

    .line 1520
    :goto_2
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/home/Workspace;->getDragController()Lcom/android/launcher3/home/WorkspaceDragController;

    move-result-object v5

    if-nez v1, :cond_9

    move v2, v3

    :goto_3
    invoke-virtual {v5, p1, v2, p3}, Lcom/android/launcher3/home/WorkspaceDragController;->startDrag(Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;ZZ)Z

    .line 1521
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v2}, Lcom/android/launcher3/home/Hotseat;->getDragController()Lcom/android/launcher3/home/HotseatDragController;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lcom/android/launcher3/home/HotseatDragController;->startDrag(Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;Z)V

    .line 1523
    instance-of v2, v0, Lcom/android/launcher3/common/view/IconView;

    if-eqz v2, :cond_6

    .line 1524
    invoke-virtual {p0, v3}, Lcom/android/launcher3/home/HomeController;->showMoveToAppsPanel(Z)V

    :cond_6
    move v4, v3

    .line 1527
    goto :goto_0

    .end local v1    # "isHotseat":Z
    :cond_7
    move v1, v4

    .line 1512
    goto :goto_1

    .line 1517
    .restart local v1    # "isHotseat":Z
    :cond_8
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v5, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher3/home/Workspace;->getDragController()Lcom/android/launcher3/home/WorkspaceDragController;

    move-result-object v5

    invoke-virtual {v2, v0, v5, p2, p3}, Lcom/android/launcher3/Launcher;->beginDragShared(Landroid/view/View;Lcom/android/launcher3/common/drag/DragSource;ZZ)V

    goto :goto_2

    :cond_9
    move v2, v4

    .line 1520
    goto :goto_3
.end method

.method startEdgeLight()V
    .locals 1

    .prologue
    .line 4438
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mEdgeLight:Lcom/android/launcher3/home/EdgeLight;

    if-eqz v0, :cond_0

    .line 4439
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mEdgeLight:Lcom/android/launcher3/home/EdgeLight;

    invoke-virtual {v0}, Lcom/android/launcher3/home/EdgeLight;->startEdgeLight()V

    .line 4441
    :cond_0
    return-void
.end method

.method public startTrayMove()V
    .locals 1

    .prologue
    .line 3234
    sget-object v0, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    invoke-virtual {v0}, Lcom/android/launcher3/util/Talk;->isAccessibilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3235
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mHomeContainer:Lcom/android/launcher3/home/HomeContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeContainer;->semClearAccessibilityFocus()V

    .line 3237
    :cond_0
    return-void
.end method

.method stopEdgeLight()V
    .locals 1

    .prologue
    .line 4444
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mEdgeLight:Lcom/android/launcher3/home/EdgeLight;

    if-eqz v0, :cond_0

    .line 4445
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mEdgeLight:Lcom/android/launcher3/home/EdgeLight;

    invoke-virtual {v0}, Lcom/android/launcher3/home/EdgeLight;->stopEdgeLight()V

    .line 4447
    :cond_0
    return-void
.end method

.method protected switchInternalState(Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/Animator;
    .locals 9
    .param p1, "data"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    .line 837
    invoke-virtual {p1}, Lcom/android/launcher3/common/stage/StageEntry;->getInternalStateFrom()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/home/HomeController;->getAdjustedInternalState(I)I

    move-result v6

    .line 838
    .local v6, "fromState":I
    invoke-virtual {p1}, Lcom/android/launcher3/common/stage/StageEntry;->getInternalStateTo()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/home/HomeController;->getAdjustedInternalState(I)I

    move-result v8

    .line 839
    .local v8, "toState":I
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    # invokes: Lcom/android/launcher3/home/HomeController$State;->set(I)V
    invoke-static {v0, v8}, Lcom/android/launcher3/home/HomeController$State;->access$100(Lcom/android/launcher3/home/HomeController$State;I)V

    .line 840
    invoke-virtual {p1}, Lcom/android/launcher3/common/stage/StageEntry;->getLayerViews()Ljava/util/HashMap;

    move-result-object v2

    .line 841
    .local v2, "layerViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Integer;>;"
    iget-boolean v1, p1, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    .line 843
    .local v1, "animated":Z
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/launcher3/home/Workspace;->setVisibility(I)V

    .line 844
    invoke-direct {p0, v6, v8}, Lcom/android/launcher3/home/HomeController;->switchInternalStateChange(II)V

    .line 846
    const/4 v7, 0x0

    .line 847
    .local v7, "stateChangeAnim":Landroid/animation/Animator;
    const/4 v0, 0x1

    if-ne v6, v0, :cond_5

    .line 848
    const/4 v0, 0x4

    if-ne v8, v0, :cond_3

    .line 849
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mHomeAnimation:Lcom/android/launcher3/home/HomeTransitionAnimation;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/launcher3/home/HomeTransitionAnimation;->getOverviewAnimation(ZLjava/util/HashMap;ZZ)Landroid/animation/AnimatorSet;

    move-result-object v7

    .line 891
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v0, 0x4

    if-eq v8, v0, :cond_1

    const/4 v0, 0x2

    if-eq v8, v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    const/4 v4, 0x6

    .line 892
    # invokes: Lcom/android/launcher3/home/HomeController$State;->equal(I)Z
    invoke-static {v0, v4}, Lcom/android/launcher3/home/HomeController$State;->access$000(Lcom/android/launcher3/home/HomeController$State;I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    .line 893
    invoke-virtual {v0}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isMultiSelectMode()Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_1
    const/4 v0, 0x1

    .line 891
    :goto_1
    invoke-static {v3, v0}, Lcom/android/launcher3/Utilities;->hideStatusBar(Landroid/view/Window;Z)V

    .line 895
    const/4 v0, 0x1

    if-ne v8, v0, :cond_11

    .line 896
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->notifyCaptureIfNecessary()V

    .line 898
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHotword()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 899
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v4, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/launcher3/Launcher;->isGoogleSearchWidget(I)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/launcher3/Launcher;->setHotWordDetection(Z)V

    .line 902
    :cond_2
    invoke-static {}, Lcom/android/launcher3/util/GlobalSettingUtils;->resetSettingsValue()V

    .line 910
    :goto_2
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/launcher3/home/Workspace;->updateAccessibilityFlags(Z)V

    .line 911
    return-object v7

    .line 850
    :cond_3
    const/4 v0, 0x2

    if-ne v8, v0, :cond_4

    .line 851
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mHomeAnimation:Lcom/android/launcher3/home/HomeTransitionAnimation;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/home/HomeTransitionAnimation;->getDragAnimation(ZLjava/util/HashMap;ZZZ)Landroid/animation/AnimatorSet;

    move-result-object v7

    goto :goto_0

    .line 852
    :cond_4
    const/4 v0, 0x6

    if-ne v8, v0, :cond_0

    .line 853
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mExitDragStateHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 854
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/HomeController;->updateCheckBox(Z)V

    .line 855
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mHomeAnimation:Lcom/android/launcher3/home/HomeTransitionAnimation;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/home/HomeTransitionAnimation;->getSelectAnimation(ZLjava/util/HashMap;Z)Landroid/animation/AnimatorSet;

    move-result-object v7

    goto :goto_0

    .line 857
    :cond_5
    const/4 v0, 0x4

    if-ne v6, v0, :cond_7

    .line 858
    const/4 v0, 0x1

    if-ne v8, v0, :cond_6

    .line 859
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mHomeAnimation:Lcom/android/launcher3/home/HomeTransitionAnimation;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/launcher3/home/HomeTransitionAnimation;->getOverviewAnimation(ZLjava/util/HashMap;ZZ)Landroid/animation/AnimatorSet;

    move-result-object v7

    goto :goto_0

    .line 860
    :cond_6
    const/4 v0, 0x5

    if-ne v8, v0, :cond_0

    .line 861
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mHomeAnimation:Lcom/android/launcher3/home/HomeTransitionAnimation;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/home/HomeTransitionAnimation;->getScreenGridAnimation(ZLjava/util/HashMap;ZZZ)Landroid/animation/AnimatorSet;

    move-result-object v7

    goto/16 :goto_0

    .line 863
    :cond_7
    const/4 v0, 0x2

    if-eq v6, v0, :cond_8

    const/4 v0, 0x3

    if-ne v6, v0, :cond_c

    .line 864
    :cond_8
    const/4 v0, 0x3

    if-ne v6, v0, :cond_9

    .line 865
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    invoke-virtual {v0}, Lcom/android/launcher3/common/view/DragLayer;->clearAllResizeFrames()Z

    .line 867
    :cond_9
    const/4 v0, 0x1

    if-ne v8, v0, :cond_b

    .line 868
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v0}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isMultiSelectMode()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 869
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Lcom/android/launcher3/Launcher;->onChangeSelectMode(ZZ)V

    .line 870
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/HomeController;->updateCheckBox(Z)V

    .line 872
    :cond_a
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mHomeAnimation:Lcom/android/launcher3/home/HomeTransitionAnimation;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/home/HomeTransitionAnimation;->getDragAnimation(ZLjava/util/HashMap;ZZZ)Landroid/animation/AnimatorSet;

    move-result-object v7

    goto/16 :goto_0

    .line 873
    :cond_b
    const/4 v0, 0x6

    if-ne v8, v0, :cond_0

    .line 874
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mExitDragStateHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 875
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/HomeController;->updateCheckBox(Z)V

    .line 876
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mHomeAnimation:Lcom/android/launcher3/home/HomeTransitionAnimation;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/home/HomeTransitionAnimation;->getSelectAnimation(ZLjava/util/HashMap;Z)Landroid/animation/AnimatorSet;

    move-result-object v7

    goto/16 :goto_0

    .line 878
    :cond_c
    const/4 v0, 0x5

    if-ne v6, v0, :cond_e

    .line 879
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mHomeAnimation:Lcom/android/launcher3/home/HomeTransitionAnimation;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v8, v5, :cond_d

    const/4 v5, 0x1

    :goto_3
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/home/HomeTransitionAnimation;->getScreenGridAnimation(ZLjava/util/HashMap;ZZZ)Landroid/animation/AnimatorSet;

    move-result-object v7

    goto/16 :goto_0

    :cond_d
    const/4 v5, 0x0

    goto :goto_3

    .line 880
    :cond_e
    const/4 v0, 0x6

    if-ne v6, v0, :cond_0

    .line 881
    const/4 v0, 0x1

    if-ne v8, v0, :cond_f

    .line 882
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mHomeAnimation:Lcom/android/launcher3/home/HomeTransitionAnimation;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v2, v4}, Lcom/android/launcher3/home/HomeTransitionAnimation;->getSelectAnimation(ZLjava/util/HashMap;Z)Landroid/animation/AnimatorSet;

    move-result-object v7

    .line 883
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Lcom/android/launcher3/Launcher;->onChangeSelectMode(ZZ)V

    .line 884
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/HomeController;->updateCheckBox(Z)V

    goto/16 :goto_0

    .line 885
    :cond_f
    const/4 v0, 0x2

    if-ne v8, v0, :cond_0

    .line 886
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/HomeController;->updateCheckBox(Z)V

    .line 887
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mHomeAnimation:Lcom/android/launcher3/home/HomeTransitionAnimation;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/home/HomeTransitionAnimation;->getDragAnimation(ZLjava/util/HashMap;ZZZ)Landroid/animation/AnimatorSet;

    move-result-object v7

    goto/16 :goto_0

    .line 893
    :cond_10
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 904
    :cond_11
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHotword()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHotWordInstance()Lcom/android/launcher3/home/HotWord;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 905
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHotWordInstance()Lcom/android/launcher3/home/HotWord;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/launcher3/home/HotWord;->setEnableHotWord(Z)V

    .line 907
    :cond_12
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->stopEdgeLight()V

    goto/16 :goto_2
.end method

.method updateBadgeItems(Ljava/util/ArrayList;)V
    .locals 3
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
    .line 2689
    .local p1, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2690
    .local v0, "updates":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    const/4 v1, 0x1

    new-instance v2, Lcom/android/launcher3/home/HomeController$23;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher3/home/HomeController$23;-><init>(Lcom/android/launcher3/home/HomeController;Ljava/util/HashSet;)V

    invoke-direct {p0, v1, v2}, Lcom/android/launcher3/home/HomeController;->mapOverItems(ZLcom/android/launcher3/common/base/item/ItemOperator;)V

    .line 2710
    return-void
.end method

.method updateBixbyHomeEnterCount()V
    .locals 1

    .prologue
    .line 4450
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mEdgeLight:Lcom/android/launcher3/home/EdgeLight;

    if-eqz v0, :cond_0

    .line 4451
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mEdgeLight:Lcom/android/launcher3/home/EdgeLight;

    invoke-virtual {v0}, Lcom/android/launcher3/home/EdgeLight;->updateBixbyHomeEnterCount()V

    .line 4453
    :cond_0
    return-void
.end method

.method updateCheckBox(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 3585
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/home/Workspace;->updateCheckBox(Z)V

    .line 3586
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/home/Hotseat;->updateCheckBox(Z)V

    .line 3587
    return-void
.end method

.method public updateCountBadge(Landroid/view/View;Z)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "animate"    # Z

    .prologue
    .line 4392
    instance-of v1, p1, Lcom/android/launcher3/common/view/IconView;

    if-eqz v1, :cond_0

    move-object v1, p1

    .line 4393
    check-cast v1, Lcom/android/launcher3/common/view/IconView;

    invoke-virtual {v1}, Lcom/android/launcher3/common/view/IconView;->getCountBadgeView()Landroid/widget/TextView;

    move-result-object v0

    .line 4394
    .local v0, "countBadge":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 4395
    check-cast p1, Lcom/android/launcher3/common/view/IconView;

    .end local p1    # "view":Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {p1, v1, p2}, Lcom/android/launcher3/common/view/IconView;->updateCountBadge(ZZ)V

    .line 4398
    .end local v0    # "countBadge":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method public updateItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 2936
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2937
    .local v0, "values":Landroid/content/ContentValues;
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1, v1, v0}, Lcom/android/launcher3/common/base/item/ItemInfo;->onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V

    .line 2938
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    invoke-virtual {v1, v0, p1}, Lcom/android/launcher3/common/model/FavoritesUpdater;->updateItem(Landroid/content/ContentValues;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 2939
    return-void
.end method

.method updateItemLocationsInDatabase(Lcom/android/launcher3/common/base/view/CellLayout;)V
    .locals 14
    .param p1, "cl"    # Lcom/android/launcher3/common/base/view/CellLayout;

    .prologue
    .line 2477
    invoke-virtual {p1}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v11

    .line 2479
    .local v11, "count":I
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/home/Workspace;->getIdForScreen(Lcom/android/launcher3/common/base/view/CellLayout;)J

    move-result-wide v4

    .line 2480
    .local v4, "screenId":J
    const/16 v10, -0x64

    .line 2482
    .local v10, "container":I
    instance-of v0, p1, Lcom/android/launcher3/home/HotseatCellLayout;

    if-eqz v0, :cond_0

    .line 2483
    const-wide/16 v4, -0x1

    .line 2484
    const/16 v10, -0x65

    .line 2487
    :cond_0
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    if-ge v12, v11, :cond_2

    .line 2488
    invoke-virtual {p1}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 2489
    .local v13, "v":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v0, :cond_1

    .line 2490
    invoke-virtual {v13}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 2491
    .local v1, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    if-eqz v1, :cond_1

    iget-boolean v0, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->requiresDbUpdate:Z

    if-eqz v0, :cond_1

    .line 2492
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->requiresDbUpdate:Z

    .line 2493
    int-to-long v2, v10

    iget v6, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    iget v7, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    iget v8, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    iget v9, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Lcom/android/launcher3/home/HomeController;->modifyItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJIIII)V

    .line 2487
    .end local v1    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 2498
    .end local v13    # "v":Landroid/view/View;
    :cond_2
    return-void
.end method

.method public updateLiveIcon(Lcom/android/launcher3/common/base/view/CellLayout;)V
    .locals 12
    .param p1, "cell"    # Lcom/android/launcher3/common/base/view/CellLayout;

    .prologue
    .line 3495
    if-nez p1, :cond_1

    .line 3537
    :cond_0
    return-void

    .line 3498
    :cond_1
    invoke-virtual {p1}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v0

    .line 3499
    .local v0, "cl":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    if-eqz v0, :cond_0

    .line 3502
    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v5

    .line 3503
    .local v5, "itemCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_0

    .line 3504
    invoke-virtual {v0, v2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 3505
    .local v9, "view":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    instance-of v10, v10, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v10, :cond_2

    .line 3506
    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 3507
    .local v4, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    instance-of v10, v4, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v10, :cond_3

    move-object v10, v4

    .line 3508
    check-cast v10, Lcom/android/launcher3/common/base/item/IconInfo;

    iget-object v10, v10, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    if-eqz v10, :cond_2

    move-object v10, v4

    .line 3509
    check-cast v10, Lcom/android/launcher3/common/base/item/IconInfo;

    iget-object v10, v10, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 3510
    .local v8, "packageName":Ljava/lang/String;
    invoke-static {v8}, Lcom/android/launcher3/common/view/LiveIconManager;->isLiveIconPackage(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    move-object v10, v9

    .line 3511
    check-cast v10, Lcom/android/launcher3/common/view/IconView;

    check-cast v4, Lcom/android/launcher3/common/base/item/IconInfo;

    .end local v4    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/common/model/IconCache;

    move-result-object v11

    invoke-virtual {v10, v4, v11}, Lcom/android/launcher3/common/view/IconView;->applyFromShortcutInfo(Lcom/android/launcher3/common/base/item/IconInfo;Lcom/android/launcher3/common/model/IconCache;)V

    .line 3512
    invoke-virtual {v9}, Landroid/view/View;->invalidate()V

    .line 3503
    .end local v8    # "packageName":Ljava/lang/String;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3515
    .restart local v4    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_3
    instance-of v10, v4, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v10, :cond_2

    .line 3516
    const/4 v7, 0x0

    .line 3517
    .local v7, "needToRefreshFolderIcon":Z
    invoke-virtual {v0, v4}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(Lcom/android/launcher3/common/base/item/ItemInfo;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/folder/view/FolderIconView;

    .line 3518
    .local v1, "folderIconView":Lcom/android/launcher3/folder/view/FolderIconView;
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_2
    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v10

    iget-object v10, v10, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v6, v10, :cond_5

    .line 3519
    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v10

    iget-object v10, v10, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 3520
    .local v3, "insideItem":Lcom/android/launcher3/common/base/item/IconInfo;
    if-eqz v3, :cond_6

    .line 3521
    invoke-virtual {v3}, Lcom/android/launcher3/common/base/item/IconInfo;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    if-eqz v10, :cond_6

    .line 3522
    invoke-virtual {v3}, Lcom/android/launcher3/common/base/item/IconInfo;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 3523
    .restart local v8    # "packageName":Ljava/lang/String;
    if-eqz v8, :cond_6

    iget v10, v3, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    const/16 v11, 0x9

    if-ge v10, v11, :cond_6

    .line 3524
    invoke-static {v8}, Lcom/android/launcher3/common/view/LiveIconManager;->isCalendarPackage(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_4

    iget-object v10, v3, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    invoke-static {v10}, Lcom/android/launcher3/common/view/IconView;->isKnoxShortcut(Landroid/content/Intent;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 3525
    :cond_4
    const/4 v7, 0x1

    .line 3531
    .end local v3    # "insideItem":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v8    # "packageName":Ljava/lang/String;
    :cond_5
    if-eqz v7, :cond_2

    .line 3532
    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderIconView;->refreshFolderIcon()V

    goto :goto_1

    .line 3518
    .restart local v3    # "insideItem":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_2
.end method

.method updateRestoreItems(Ljava/util/HashSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2713
    .local p1, "updates":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    const/4 v0, 0x1

    new-instance v1, Lcom/android/launcher3/home/HomeController$24;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/home/HomeController$24;-><init>(Lcom/android/launcher3/home/HomeController;Ljava/util/HashSet;)V

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/home/HomeController;->mapOverItems(ZLcom/android/launcher3/common/base/item/ItemOperator;)V

    .line 2728
    return-void
.end method

.method updateShortcuts(Ljava/util/ArrayList;Lcom/android/launcher3/common/model/IconCache;)V
    .locals 6
    .param p2, "iconCache"    # Lcom/android/launcher3/common/model/IconCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;",
            "Lcom/android/launcher3/common/model/IconCache;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2654
    .local p1, "shortcuts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2655
    .local v3, "updates":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2657
    .local v1, "folderIconsToRefresh":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/folder/view/FolderIconView;>;"
    const/4 v4, 0x1

    new-instance v5, Lcom/android/launcher3/home/HomeController$22;

    invoke-direct {v5, p0, v3, p2, v1}, Lcom/android/launcher3/home/HomeController$22;-><init>(Lcom/android/launcher3/home/HomeController;Ljava/util/HashSet;Lcom/android/launcher3/common/model/IconCache;Ljava/util/ArrayList;)V

    invoke-direct {p0, v4, v5}, Lcom/android/launcher3/home/HomeController;->mapOverItems(ZLcom/android/launcher3/common/base/item/ItemOperator;)V

    .line 2680
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 2681
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/folder/view/FolderIconView;

    .line 2682
    .local v0, "folderIconView":Lcom/android/launcher3/folder/view/FolderIconView;
    if-eqz v0, :cond_0

    .line 2683
    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderIconView;->refreshFolderIcon()V

    .line 2680
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2686
    .end local v0    # "folderIconView":Lcom/android/launcher3/folder/view/FolderIconView;
    :cond_1
    return-void
.end method

.method updateWorkspaceScreenOrder(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3056
    .local p1, "screenOrder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/common/model/FavoritesUpdater;->updateScreenOrder(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 3057
    return-void
.end method

.method public updateZeroPage(I)V
    .locals 3
    .param p1, "op"    # I

    .prologue
    .line 4376
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    if-eqz v0, :cond_0

    .line 4377
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/home/ZeroPageController;->updateZeroPage(I)V

    .line 4378
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isNormalState()Z

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/home/ZeroPageController;->updatePageIndicatorForZeroPage(ZZ)V

    .line 4379
    const-string v0, "Launcher.HomeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateZeroPage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4381
    :cond_0
    return-void
.end method

.method widgetsRestored(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/home/LauncherAppWidgetInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "changedInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/home/LauncherAppWidgetInfo;>;"
    const/4 v5, 0x0

    .line 2731
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2732
    new-instance v1, Lcom/android/launcher3/home/DeferredWidgetRefresh;

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mAppWidgetHost:Lcom/android/launcher3/home/LauncherAppWidgetHost;

    invoke-direct {v1, p0, p1, v2}, Lcom/android/launcher3/home/DeferredWidgetRefresh;-><init>(Lcom/android/launcher3/home/HomeController;Ljava/util/ArrayList;Lcom/android/launcher3/home/LauncherAppWidgetHost;)V

    .line 2733
    .local v1, "widgetRefresh":Lcom/android/launcher3/home/DeferredWidgetRefresh;
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/home/Workspace;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    iget-object v4, v2, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    iget-object v2, v2, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-static {v3, v4, v2}, Lcom/android/launcher3/home/HomeLoader;->getProviderInfo(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2735
    invoke-virtual {v1}, Lcom/android/launcher3/home/DeferredWidgetRefresh;->run()V

    .line 2747
    .end local v1    # "widgetRefresh":Lcom/android/launcher3/home/DeferredWidgetRefresh;
    :cond_0
    return-void

    .line 2739
    .restart local v1    # "widgetRefresh":Lcom/android/launcher3/home/DeferredWidgetRefresh;
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    .line 2740
    .local v0, "info":Lcom/android/launcher3/home/LauncherAppWidgetInfo;
    iget-object v2, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    instance-of v2, v2, Lcom/android/launcher3/home/PendingAppWidgetHostView;

    if-eqz v2, :cond_2

    .line 2741
    const/16 v2, 0x64

    iput v2, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->installProgress:I

    .line 2742
    iget-object v2, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    check-cast v2, Lcom/android/launcher3/home/PendingAppWidgetHostView;

    invoke-virtual {v2}, Lcom/android/launcher3/home/PendingAppWidgetHostView;->applyState()V

    goto :goto_0
.end method
