.class public Lcom/android/launcher3/home/HomeBindController;
.super Ljava/lang/Object;
.source "HomeBindController.java"

# interfaces
.implements Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;


# static fields
.field static final ACTION_FIRST_LOAD_COMPLETE:Ljava/lang/String; = "com.android.launcher3.action.FIRST_LOAD_COMPLETE"

.field static final DEBUG_WIDGETS:Z = false

.field static final FIRST_LOAD_COMPLETE:Ljava/lang/String; = "launcher.first_load_complete"

.field private static NEW_APPS_ANIMATION_DELAY:I = 0x0

.field private static final TAG:Ljava/lang/String; = "HomeBindController"

.field public static sFolders:Lcom/android/launcher3/util/LongArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/LongArrayMap",
            "<",
            "Lcom/android/launcher3/folder/FolderInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final ADVANCE_MSG:I

.field private final mAdvanceInterval:I

.field private final mAdvanceStagger:I

.field private mAutoAdvanceRunning:Z

.field private mAutoAdvanceSentTime:J

.field private mAutoAdvanceTimeLeft:J

.field private mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

.field private mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

.field private mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

.field private final mHandler:Landroid/os/Handler;

.field private mHomeController:Lcom/android/launcher3/home/HomeController;

.field private mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

.field private mHotseat:Lcom/android/launcher3/home/Hotseat;

.field private mHotseatLoading:Z

.field private mIconCache:Lcom/android/launcher3/common/model/IconCache;

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private final mSynchronouslyBoundPages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUserPresent:Z

.field private mWidgetsToAdvance:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkspace:Lcom/android/launcher3/home/Workspace;

.field private mWorkspaceLoading:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    new-instance v0, Lcom/android/launcher3/util/LongArrayMap;

    invoke-direct {v0}, Lcom/android/launcher3/util/LongArrayMap;-><init>()V

    sput-object v0, Lcom/android/launcher3/home/HomeBindController;->sFolders:Lcom/android/launcher3/util/LongArrayMap;

    .line 105
    const/16 v0, 0x1f4

    sput v0, Lcom/android/launcher3/home/HomeBindController;->NEW_APPS_ANIMATION_DELAY:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/launcher3/home/HomeController;Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/common/model/IconCache;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "homeController"    # Lcom/android/launcher3/home/HomeController;
    .param p3, "model"    # Lcom/android/launcher3/LauncherModel;
    .param p4, "cache"    # Lcom/android/launcher3/common/model/IconCache;

    .prologue
    const/4 v2, 0x1

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-boolean v2, p0, Lcom/android/launcher3/home/HomeBindController;->mHotseatLoading:Z

    .line 88
    iput-boolean v2, p0, Lcom/android/launcher3/home/HomeBindController;->mWorkspaceLoading:Z

    .line 93
    iput v2, p0, Lcom/android/launcher3/home/HomeBindController;->ADVANCE_MSG:I

    .line 94
    const/16 v0, 0x4e20

    iput v0, p0, Lcom/android/launcher3/home/HomeBindController;->mAdvanceInterval:I

    .line 95
    const/16 v0, 0xfa

    iput v0, p0, Lcom/android/launcher3/home/HomeBindController;->mAdvanceStagger:I

    .line 97
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/launcher3/home/HomeBindController;->mAutoAdvanceTimeLeft:J

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/home/HomeBindController;->mAutoAdvanceRunning:Z

    .line 99
    iput-boolean v2, p0, Lcom/android/launcher3/home/HomeBindController;->mUserPresent:Z

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/home/HomeBindController;->mWidgetsToAdvance:Ljava/util/HashMap;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/home/HomeBindController;->mSynchronouslyBoundPages:Ljava/util/ArrayList;

    .line 950
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher3/home/HomeBindController$22;

    invoke-direct {v1, p0}, Lcom/android/launcher3/home/HomeBindController$22;-><init>(Lcom/android/launcher3/home/HomeBindController;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/launcher3/home/HomeBindController;->mHandler:Landroid/os/Handler;

    .line 108
    check-cast p1, Lcom/android/launcher3/Launcher;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/android/launcher3/home/HomeBindController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 109
    iput-object p4, p0, Lcom/android/launcher3/home/HomeBindController;->mIconCache:Lcom/android/launcher3/common/model/IconCache;

    .line 110
    invoke-virtual {p3}, Lcom/android/launcher3/LauncherModel;->getHomeLoader()Lcom/android/launcher3/home/HomeLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/HomeBindController;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    .line 111
    iget-object v0, p0, Lcom/android/launcher3/home/HomeBindController;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/home/HomeLoader;->registerCallbacks(Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;)V

    .line 112
    invoke-virtual {p3}, Lcom/android/launcher3/LauncherModel;->getHomeLoader()Lcom/android/launcher3/home/HomeLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeLoader;->getUpdater()Lcom/android/launcher3/common/model/DataUpdater;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/model/FavoritesUpdater;

    iput-object v0, p0, Lcom/android/launcher3/home/HomeBindController;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    .line 113
    iput-object p2, p0, Lcom/android/launcher3/home/HomeBindController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    .line 114
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFolderLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    invoke-static {}, Lcom/android/launcher3/folder/folderlock/FolderLock;->getInstance()Lcom/android/launcher3/folder/folderlock/FolderLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/HomeBindController;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    .line 117
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/home/HomeBindController;)Lcom/android/launcher3/home/Workspace;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeBindController;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/launcher3/home/HomeBindController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher3/home/HomeBindController;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeBindController;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/launcher3/home/HomeBindController;->mWidgetsToAdvance:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher3/home/HomeBindController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeBindController;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/launcher3/home/HomeBindController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher3/home/HomeBindController;J)V
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeBindController;
    .param p1, "x1"    # J

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/home/HomeBindController;->sendAdvanceMessage(J)V

    return-void
.end method

.method private addAppWidgetToWorkspace(Lcom/android/launcher3/home/LauncherAppWidgetInfo;Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;)V
    .locals 10
    .param p1, "item"    # Lcom/android/launcher3/home/LauncherAppWidgetInfo;
    .param p2, "appWidgetInfo"    # Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    .prologue
    .line 707
    iget-object v0, p1, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v0, p1}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    .line 708
    if-eqz p2, :cond_1

    .line 709
    iget-object v0, p0, Lcom/android/launcher3/home/HomeBindController;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->onBindAppWidget(Lcom/android/launcher3/Launcher;Z)V

    .line 714
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/home/HomeBindController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    iget-object v1, p1, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    iget-wide v2, p1, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->container:J

    iget-wide v4, p1, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->screenId:J

    iget v6, p1, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->cellX:I

    iget v7, p1, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->cellY:I

    iget v8, p1, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->spanX:I

    iget v9, p1, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->spanY:I

    invoke-virtual/range {v0 .. v9}, Lcom/android/launcher3/home/HomeController;->addInScreen(Landroid/view/View;JJIIII)V

    .line 717
    invoke-virtual {p1}, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->isCustomWidget()Z

    move-result v0

    if-nez v0, :cond_0

    .line 718
    iget-object v0, p1, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {p0, v0, p2}, Lcom/android/launcher3/home/HomeBindController;->addWidgetToAutoAdvanceIfNeeded(Landroid/view/View;Landroid/appwidget/AppWidgetProviderInfo;)V

    .line 720
    :cond_0
    return-void

    .line 711
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/home/HomeBindController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->onBindAppWidget(Lcom/android/launcher3/Launcher;)V

    goto :goto_0
.end method

.method private bindHotseatItems(Ljava/util/ArrayList;ZLjava/util/Collection;)V
    .locals 16
    .param p2, "animateIcons"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;Z",
            "Ljava/util/Collection",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 254
    .local p1, "shortcuts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .local p3, "bounceAnims":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/animation/Animator;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeBindController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v2}, Lcom/android/launcher3/home/Hotseat;->resetLayout()V

    .line 255
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeBindController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/launcher3/home/Hotseat;->beginBind(I)V

    .line 256
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_0
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 258
    .local v14, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget v2, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    packed-switch v2, :pswitch_data_0

    .line 275
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v4, "Invalid Item Type"

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_0
    move-object v13, v14

    .line 261
    check-cast v13, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 262
    .local v13, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/launcher3/home/HomeBindController;->createShortcut(Lcom/android/launcher3/common/base/item/IconInfo;)Landroid/view/View;

    move-result-object v3

    .line 277
    .end local v13    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    .local v3, "view":Landroid/view/View;
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeBindController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    iget-wide v4, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    iget-wide v6, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    iget v8, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    iget v9, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-virtual/range {v2 .. v11}, Lcom/android/launcher3/home/HomeController;->addInScreenFromBind(Landroid/view/View;JJIIII)V

    .line 279
    if-eqz p2, :cond_0

    .line 280
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Landroid/view/View;->setAlpha(F)V

    .line 281
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Landroid/view/View;->setScaleX(F)V

    .line 282
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Landroid/view/View;->setScaleY(F)V

    .line 283
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeBindController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/home/HomeController;->createNewAppBounceAnimation(Landroid/view/View;I)Landroid/animation/ValueAnimator;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 265
    .end local v3    # "view":Landroid/view/View;
    :pswitch_1
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFolderLock()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v12, v14

    .line 266
    check-cast v12, Lcom/android/launcher3/folder/FolderInfo;

    .line 267
    .local v12, "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeBindController;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeBindController;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    invoke-virtual {v2, v12}, Lcom/android/launcher3/folder/folderlock/FolderLock;->isLockedFolder(Lcom/android/launcher3/folder/FolderInfo;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 268
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeBindController;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    invoke-virtual {v2, v12}, Lcom/android/launcher3/folder/folderlock/FolderLock;->markAsLockedFolderWhenBind(Lcom/android/launcher3/folder/FolderInfo;)V

    .line 271
    .end local v12    # "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeBindController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/HomeBindController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    move-object v4, v14

    check-cast v4, Lcom/android/launcher3/folder/FolderInfo;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HomeBindController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/HomeBindController;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Lcom/android/launcher3/folder/view/FolderIconView;->fromXml(Lcom/android/launcher3/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher3/folder/FolderInfo;Lcom/android/launcher3/common/base/controller/ControllerBase;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;I)Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v3

    .line 273
    .restart local v3    # "view":Landroid/view/View;
    goto :goto_1

    .line 286
    .end local v3    # "view":Landroid/view/View;
    .end local v14    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_2
    return-void

    .line 258
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private bindSafeModeWidget(Lcom/android/launcher3/home/LauncherAppWidgetInfo;)V
    .locals 4
    .param p1, "item"    # Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    .prologue
    const/4 v3, 0x0

    .line 696
    new-instance v0, Lcom/android/launcher3/home/PendingAppWidgetHostView;

    iget-object v1, p0, Lcom/android/launcher3/home/HomeBindController;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v2, 0x1

    invoke-direct {v0, v1, p1, v2}, Lcom/android/launcher3/home/PendingAppWidgetHostView;-><init>(Landroid/content/Context;Lcom/android/launcher3/home/LauncherAppWidgetInfo;Z)V

    .line 697
    .local v0, "view":Lcom/android/launcher3/home/PendingAppWidgetHostView;
    iget-object v1, p0, Lcom/android/launcher3/home/HomeBindController;->mIconCache:Lcom/android/launcher3/common/model/IconCache;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/PendingAppWidgetHostView;->updateIcon(Lcom/android/launcher3/common/model/IconCache;)V

    .line 698
    iput-object v0, p1, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 699
    iget-object v1, p1, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v1, v3}, Landroid/appwidget/AppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    .line 700
    iget-object v1, p1, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    iget-object v2, p0, Lcom/android/launcher3/home/HomeBindController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetHostView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 701
    invoke-direct {p0, p1, v3}, Lcom/android/launcher3/home/HomeBindController;->addAppWidgetToWorkspace(Lcom/android/launcher3/home/LauncherAppWidgetInfo;Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;)V

    .line 702
    iget-object v1, p0, Lcom/android/launcher3/home/HomeBindController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->requestLayout()V

    .line 703
    return-void
.end method

.method private deleteWidgetInfo(Lcom/android/launcher3/home/LauncherAppWidgetInfo;)V
    .locals 4
    .param p1, "widgetInfo"    # Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    .prologue
    .line 726
    iget-object v1, p0, Lcom/android/launcher3/home/HomeBindController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->getAppWidgetHost()Lcom/android/launcher3/home/LauncherAppWidgetHost;

    move-result-object v0

    .line 727
    .local v0, "appWidgetHost":Lcom/android/launcher3/home/LauncherAppWidgetHost;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->isCustomWidget()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->isWidgetIdValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 730
    new-instance v1, Lcom/android/launcher3/home/HomeBindController$12;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/launcher3/home/HomeBindController$12;-><init>(Lcom/android/launcher3/home/HomeBindController;Lcom/android/launcher3/home/LauncherAppWidgetHost;Lcom/android/launcher3/home/LauncherAppWidgetInfo;)V

    sget-object v2, Lcom/android/launcher3/Utilities;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    .line 735
    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/home/HomeBindController$12;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 737
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/home/HomeBindController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/home/HomeController;->deleteItemFromDb(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 738
    return-void
.end method

.method private sendAdvanceMessage(J)V
    .locals 5
    .param p1, "delay"    # J

    .prologue
    const/4 v2, 0x1

    .line 984
    iget-object v1, p0, Lcom/android/launcher3/home/HomeBindController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 985
    iget-object v1, p0, Lcom/android/launcher3/home/HomeBindController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 986
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/launcher3/home/HomeBindController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 987
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/launcher3/home/HomeBindController;->mAutoAdvanceSentTime:J

    .line 988
    return-void
.end method

.method private sendLoadingCompleteBroadcastIfNecessary()V
    .locals 6

    .prologue
    .line 1058
    iget-object v3, p0, Lcom/android/launcher3/home/HomeBindController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "launcher.first_load_complete"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1059
    iget-object v3, p0, Lcom/android/launcher3/home/HomeBindController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 1060
    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080173

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1061
    .local v2, "permission":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.launcher3.action.FIRST_LOAD_COMPLETE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1062
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/launcher3/home/HomeBindController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3, v1, v2}, Lcom/android/launcher3/Launcher;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1063
    iget-object v3, p0, Lcom/android/launcher3/home/HomeBindController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1064
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "launcher.first_load_complete"

    const/4 v4, 0x1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1065
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1067
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "permission":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method addFolder(Lcom/android/launcher3/common/base/view/CellLayout;JJII)Lcom/android/launcher3/folder/view/FolderIconView;
    .locals 22
    .param p1, "layout"    # Lcom/android/launcher3/common/base/view/CellLayout;
    .param p2, "container"    # J
    .param p4, "screenId"    # J
    .param p6, "cellX"    # I
    .param p7, "cellY"    # I

    .prologue
    .line 1079
    new-instance v3, Lcom/android/launcher3/folder/FolderInfo;

    invoke-direct {v3}, Lcom/android/launcher3/folder/FolderInfo;-><init>()V

    .line 1080
    .local v3, "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeBindController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v4, 0x7f080164

    invoke-virtual {v2, v4}, Lcom/android/launcher3/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v3, Lcom/android/launcher3/folder/FolderInfo;->title:Ljava/lang/CharSequence;

    .line 1083
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeBindController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-virtual/range {v2 .. v9}, Lcom/android/launcher3/home/HomeController;->addItemToDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJII)J

    .line 1084
    sget-object v2, Lcom/android/launcher3/home/HomeBindController;->sFolders:Lcom/android/launcher3/util/LongArrayMap;

    iget-wide v4, v3, Lcom/android/launcher3/folder/FolderInfo;->id:J

    invoke-virtual {v2, v4, v5, v3}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    .line 1087
    const-wide/16 v4, -0x65

    cmp-long v2, p2, v4

    if-nez v2, :cond_0

    const/4 v10, 0x1

    .line 1089
    .local v10, "iconDisplay":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HomeBindController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/HomeBindController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/home/HomeBindController;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v9, 0x0

    move-object/from16 v5, p1

    move-object v6, v3

    invoke-static/range {v4 .. v10}, Lcom/android/launcher3/folder/view/FolderIconView;->fromXml(Lcom/android/launcher3/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher3/folder/FolderInfo;Lcom/android/launcher3/common/base/controller/ControllerBase;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;I)Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v13

    .line 1091
    .local v13, "newFolder":Lcom/android/launcher3/folder/view/FolderIconView;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/home/HomeBindController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const/16 v20, 0x1

    const/16 v21, 0x1

    move-wide/from16 v14, p2

    move-wide/from16 v16, p4

    move/from16 v18, p6

    move/from16 v19, p7

    invoke-virtual/range {v12 .. v21}, Lcom/android/launcher3/home/HomeController;->addInScreen(Landroid/view/View;JJIIII)V

    .line 1094
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v2

    invoke-virtual {v2, v13}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->measureChild(Landroid/view/View;)V

    .line 1096
    return-object v13

    .line 1087
    .end local v10    # "iconDisplay":I
    .end local v13    # "newFolder":Lcom/android/launcher3/folder/view/FolderIconView;
    :cond_0
    const/4 v10, 0x0

    goto :goto_0
.end method

.method addWidgetToAutoAdvanceIfNeeded(Landroid/view/View;Landroid/appwidget/AppWidgetProviderInfo;)V
    .locals 3
    .param p1, "hostView"    # Landroid/view/View;
    .param p2, "appWidgetInfo"    # Landroid/appwidget/AppWidgetProviderInfo;

    .prologue
    .line 1009
    if-eqz p2, :cond_0

    iget v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 1016
    :cond_0
    :goto_0
    return-void

    .line 1010
    :cond_1
    iget v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1011
    .local v0, "v":Landroid/view/View;
    instance-of v1, v0, Landroid/widget/Advanceable;

    if-eqz v1, :cond_0

    .line 1012
    iget-object v1, p0, Lcom/android/launcher3/home/HomeBindController;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1013
    check-cast v0, Landroid/widget/Advanceable;

    .end local v0    # "v":Landroid/view/View;
    invoke-interface {v0}, Landroid/widget/Advanceable;->fyiWillBeAdvancedByHostKThx()V

    .line 1014
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeBindController;->updateAutoAdvanceState()V

    goto :goto_0
.end method

.method public bindAddScreens(Ljava/util/ArrayList;)V
    .locals 4
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
    .line 411
    .local p1, "orderedScreenIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 412
    .local v0, "screenId":J
    iget-object v2, p0, Lcom/android/launcher3/home/HomeBindController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v2, v0, v1}, Lcom/android/launcher3/home/Workspace;->insertNewWorkspaceScreenBeforeEmptyScreen(J)J

    goto :goto_0

    .line 414
    .end local v0    # "screenId":J
    :cond_0
    return-void
.end method

.method public bindAppWidget(Lcom/android/launcher3/home/LauncherAppWidgetInfo;)V
    .locals 17
    .param p1, "item"    # Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    .prologue
    .line 548
    new-instance v8, Lcom/android/launcher3/home/HomeBindController$11;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v8, v0, v1}, Lcom/android/launcher3/home/HomeBindController$11;-><init>(Lcom/android/launcher3/home/HomeBindController;Lcom/android/launcher3/home/LauncherAppWidgetInfo;)V

    .line 553
    .local v8, "r":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/home/HomeBindController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v14, v8}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 693
    :goto_0
    return-void

    .line 557
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/home/HomeBindController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v14}, Lcom/android/launcher3/Launcher;->isSafeModeEnabled()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 558
    invoke-direct/range {p0 .. p1}, Lcom/android/launcher3/home/HomeBindController;->bindSafeModeWidget(Lcom/android/launcher3/home/LauncherAppWidgetInfo;)V

    goto :goto_0

    .line 562
    :cond_1
    const-wide/16 v10, 0x0

    .line 566
    .local v10, "start":J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/home/HomeBindController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    .line 569
    .local v13, "workspace":Lcom/android/launcher3/home/Workspace;
    const/4 v14, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 571
    const/4 v3, 0x0

    .line 580
    .local v3, "appWidgetInfo":Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;
    :goto_1
    const/4 v14, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v14

    if-nez v14, :cond_6

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->restoreStatus:I

    if-eqz v14, :cond_6

    .line 582
    if-nez v3, :cond_4

    .line 588
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/home/HomeBindController;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/android/launcher3/common/model/FavoritesUpdater;->deleteItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_0

    .line 572
    .end local v3    # "appWidgetInfo":Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;
    :cond_2
    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 574
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/home/HomeBindController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    iget-object v14, v14, Lcom/android/launcher3/home/HomeController;->mAppWidgetManager:Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->findProvider(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    move-result-object v3

    .restart local v3    # "appWidgetInfo":Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;
    goto :goto_1

    .line 576
    .end local v3    # "appWidgetInfo":Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/home/HomeBindController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    iget-object v14, v14, Lcom/android/launcher3/home/HomeController;->mAppWidgetManager:Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;

    move-object/from16 v0, p1

    iget v15, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v14, v15}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->getLauncherAppWidgetInfo(I)Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    move-result-object v3

    .restart local v3    # "appWidgetInfo":Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;
    goto :goto_1

    .line 593
    :cond_4
    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->restoreStatus:I

    and-int/lit8 v14, v14, 0x1

    if-eqz v14, :cond_8

    .line 597
    new-instance v7, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/home/HomeBindController;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v15, 0x0

    invoke-direct {v7, v14, v3, v15}, Lcom/android/launcher3/widget/PendingAddWidgetInfo;-><init>(Landroid/content/Context;Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;Landroid/os/Parcelable;)V

    .line 598
    .local v7, "pendingInfo":Lcom/android/launcher3/widget/PendingAddWidgetInfo;
    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->spanX:I

    iput v14, v7, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->spanX:I

    .line 599
    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->spanY:I

    iput v14, v7, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->spanY:I

    .line 600
    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->minSpanX:I

    iput v14, v7, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->minSpanX:I

    .line 601
    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->minSpanY:I

    iput v14, v7, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->minSpanY:I

    .line 602
    const/4 v5, 0x0

    .line 603
    .local v5, "options":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/home/HomeBindController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v14, v7}, Lcom/android/launcher3/widget/WidgetHostViewLoader;->getDefaultOptionsForWidget(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/widget/PendingAddWidgetInfo;)Landroid/os/Bundle;

    .line 605
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/home/HomeBindController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v14}, Lcom/android/launcher3/home/HomeController;->getAppWidgetHost()Lcom/android/launcher3/home/LauncherAppWidgetHost;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/launcher3/home/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result v4

    .line 606
    .local v4, "newWidgetId":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/home/HomeBindController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v14}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;

    move-result-object v14

    invoke-virtual {v14, v4, v3, v5}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->bindAppWidgetIdIfAllowed(ILandroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Z

    move-result v9

    .line 610
    .local v9, "success":Z
    if-nez v9, :cond_5

    .line 611
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/home/HomeBindController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v14}, Lcom/android/launcher3/home/HomeController;->getAppWidgetHost()Lcom/android/launcher3/home/LauncherAppWidgetHost;

    move-result-object v14

    invoke-virtual {v14, v4}, Lcom/android/launcher3/home/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    .line 617
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/home/HomeBindController;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/android/launcher3/common/model/FavoritesUpdater;->deleteItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto/16 :goto_0

    .line 621
    :cond_5
    move-object/from16 v0, p1

    iput v4, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->appWidgetId:I

    .line 625
    iget-object v14, v3, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-nez v14, :cond_7

    const/4 v14, 0x0

    :goto_2
    move-object/from16 v0, p1

    iput v14, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->restoreStatus:I

    .line 629
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/home/HomeBindController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/android/launcher3/home/HomeController;->updateItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 638
    .end local v4    # "newWidgetId":I
    .end local v5    # "options":Landroid/os/Bundle;
    .end local v7    # "pendingInfo":Lcom/android/launcher3/widget/PendingAddWidgetInfo;
    .end local v9    # "success":Z
    :cond_6
    :goto_3
    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->restoreStatus:I

    if-nez v14, :cond_c

    .line 639
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->appWidgetId:I

    .line 646
    .local v2, "appWidgetId":I
    if-nez v3, :cond_9

    .line 647
    const-string v14, "HomeBindController"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Removing invalid widget: id="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->appWidgetId:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    invoke-direct/range {p0 .. p1}, Lcom/android/launcher3/home/HomeBindController;->deleteWidgetInfo(Lcom/android/launcher3/home/LauncherAppWidgetInfo;)V

    goto/16 :goto_0

    .line 625
    .end local v2    # "appWidgetId":I
    .restart local v4    # "newWidgetId":I
    .restart local v5    # "options":Landroid/os/Bundle;
    .restart local v7    # "pendingInfo":Lcom/android/launcher3/widget/PendingAddWidgetInfo;
    .restart local v9    # "success":Z
    :cond_7
    const/4 v14, 0x4

    goto :goto_2

    .line 630
    .end local v4    # "newWidgetId":I
    .end local v5    # "options":Landroid/os/Bundle;
    .end local v7    # "pendingInfo":Lcom/android/launcher3/widget/PendingAddWidgetInfo;
    .end local v9    # "success":Z
    :cond_8
    const/4 v14, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v14

    if-eqz v14, :cond_6

    iget-object v14, v3, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-nez v14, :cond_6

    .line 633
    const/4 v14, 0x0

    move-object/from16 v0, p1

    iput v14, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->restoreStatus:I

    .line 634
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/home/HomeBindController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/android/launcher3/home/HomeController;->updateItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_3

    .line 652
    .restart local v2    # "appWidgetId":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/home/HomeBindController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v14}, Lcom/android/launcher3/home/HomeController;->getAppWidgetHost()Lcom/android/launcher3/home/LauncherAppWidgetHost;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/home/HomeBindController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v14, v15, v2, v3}, Lcom/android/launcher3/home/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v14

    move-object/from16 v0, p1

    iput-object v14, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 653
    invoke-virtual {v3}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->getMinSpanX()I

    move-result v14

    move-object/from16 v0, p1

    iput v14, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->minSpanX:I

    .line 654
    invoke-virtual {v3}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->getMinSpanY()I

    move-result v14

    move-object/from16 v0, p1

    iput v14, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->minSpanY:I

    .line 655
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/android/launcher3/home/HomeBindController;->addAppWidgetToWorkspace(Lcom/android/launcher3/home/LauncherAppWidgetInfo;Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;)V

    .line 657
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportGSAPreWarming()Z

    move-result v14

    if-eqz v14, :cond_a

    .line 658
    if-eqz v3, :cond_a

    .line 659
    iget-object v14, v3, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v14}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "com.google.android.googlequicksearchbox"

    .line 660
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 661
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    check-cast v14, Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    const/4 v15, 0x1

    iput-boolean v15, v14, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mIsGSB:Z

    .line 662
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 663
    .local v6, "opts":Landroid/os/Bundle;
    const-string v14, "attached-launcher-identifier"

    const-string v15, "samsung-dream-launcher"

    invoke-virtual {v6, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    const-string v14, "requested-widget-style"

    const-string v15, "cqsb"

    invoke-virtual {v6, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    const-string v14, "widget-screen-bounds-left"

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v15}, Landroid/appwidget/AppWidgetHostView;->getLeft()I

    move-result v15

    int-to-float v15, v15

    invoke-virtual {v6, v14, v15}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 666
    const-string v14, "widget-screen-bounds-top"

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v15}, Landroid/appwidget/AppWidgetHostView;->getTop()I

    move-result v15

    int-to-float v15, v15

    invoke-virtual {v6, v14, v15}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 667
    const-string v14, "widget-screen-bounds-right"

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v15}, Landroid/appwidget/AppWidgetHostView;->getRight()I

    move-result v15

    int-to-float v15, v15

    invoke-virtual {v6, v14, v15}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 668
    const-string v14, "widget-screen-bounds-bottom"

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v15}, Landroid/appwidget/AppWidgetHostView;->getBottom()I

    move-result v15

    int-to-float v15, v15

    invoke-virtual {v6, v14, v15}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 669
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v14, v6}, Landroid/appwidget/AppWidgetHostView;->updateAppWidgetOptions(Landroid/os/Bundle;)V

    .line 674
    .end local v6    # "opts":Landroid/os/Bundle;
    :cond_a
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHotword()Z

    move-result v14

    if-eqz v14, :cond_b

    .line 675
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    if-eqz v14, :cond_b

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    sget-object v15, Lcom/android/launcher3/Launcher;->GOOGLE_SEARCH_WIDGET:Landroid/content/ComponentName;

    invoke-virtual {v14, v15}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 676
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/home/HomeBindController;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/android/launcher3/Launcher;->setHotWordDetection(Z)V

    .line 687
    .end local v2    # "appWidgetId":I
    :cond_b
    :goto_4
    invoke-virtual {v13}, Lcom/android/launcher3/home/Workspace;->requestLayout()V

    goto/16 :goto_0

    .line 680
    :cond_c
    new-instance v12, Lcom/android/launcher3/home/PendingAppWidgetHostView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/home/HomeBindController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/home/HomeBindController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v15}, Lcom/android/launcher3/Launcher;->isSafeModeEnabled()Z

    move-result v15

    move-object/from16 v0, p1

    invoke-direct {v12, v14, v0, v15}, Lcom/android/launcher3/home/PendingAppWidgetHostView;-><init>(Landroid/content/Context;Lcom/android/launcher3/home/LauncherAppWidgetInfo;Z)V

    .line 681
    .local v12, "view":Lcom/android/launcher3/home/PendingAppWidgetHostView;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/home/HomeBindController;->mIconCache:Lcom/android/launcher3/common/model/IconCache;

    invoke-virtual {v12, v14}, Lcom/android/launcher3/home/PendingAppWidgetHostView;->updateIcon(Lcom/android/launcher3/common/model/IconCache;)V

    .line 682
    move-object/from16 v0, p1

    iput-object v12, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 683
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/appwidget/AppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    .line 684
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/home/HomeBindController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v14, v15}, Landroid/appwidget/AppWidgetHostView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 685
    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lcom/android/launcher3/home/HomeBindController;->addAppWidgetToWorkspace(Lcom/android/launcher3/home/LauncherAppWidgetInfo;Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;)V

    goto :goto_4
.end method

.method public bindAppsAdded(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
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
    .local p1, "newScreens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local p2, "addNotAnimated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .local p3, "addAnimated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    const/4 v3, 0x0

    .line 812
    new-instance v0, Lcom/android/launcher3/home/HomeBindController$16;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/launcher3/home/HomeBindController$16;-><init>(Lcom/android/launcher3/home/HomeBindController;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 817
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/android/launcher3/home/HomeBindController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 837
    :goto_0
    return-void

    .line 822
    :cond_0
    if-eqz p1, :cond_1

    .line 823
    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/HomeBindController;->bindAddScreens(Ljava/util/ArrayList;)V

    .line 827
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 828
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0, p2, v3, v1, v3}, Lcom/android/launcher3/home/HomeBindController;->bindItems(Ljava/util/ArrayList;IIZ)V

    .line 830
    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 831
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, p3, v3, v1, v2}, Lcom/android/launcher3/home/HomeBindController;->bindItems(Ljava/util/ArrayList;IIZ)V

    .line 834
    :cond_3
    iget-object v1, p0, Lcom/android/launcher3/home/HomeBindController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->removeExtraEmptyScreen()V

    .line 836
    iget-object v1, p0, Lcom/android/launcher3/home/HomeBindController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->onChangeChildState()V

    goto :goto_0
.end method

.method public bindAppsButton(Ljava/util/ArrayList;)V
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
    .line 152
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v0, Lcom/android/launcher3/home/HomeBindController$1;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/home/HomeBindController$1;-><init>(Lcom/android/launcher3/home/HomeBindController;Ljava/util/ArrayList;)V

    .line 157
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/android/launcher3/home/HomeBindController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Launcher;->waitUntilResumeForAppsButton(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 161
    :goto_0
    return-void

    .line 160
    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2}, Lcom/android/launcher3/home/HomeBindController;->bindHotseatItems(Ljava/util/ArrayList;ZLjava/util/Collection;)V

    goto :goto_0
.end method

.method public bindAppsInFolderRemoved(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/folder/FolderInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 854
    .local p1, "folderInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/folder/FolderInfo;>;"
    .local p2, "removed":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v1, Lcom/android/launcher3/home/HomeBindController$18;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/launcher3/home/HomeBindController$18;-><init>(Lcom/android/launcher3/home/HomeBindController;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 859
    .local v1, "r":Ljava/lang/Runnable;
    iget-object v3, p0, Lcom/android/launcher3/home/HomeBindController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3, v1}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 872
    :cond_0
    :goto_0
    return-void

    .line 862
    :cond_1
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 863
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 864
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 865
    .local v2, "removedComponents":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 866
    .local v0, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-object v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 868
    .end local v0    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_2
    invoke-static {p1, p2}, Lcom/android/launcher3/Utilities;->removeAppsInFolder(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 870
    iget-object v3, p0, Lcom/android/launcher3/home/HomeBindController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v4, v2}, Lcom/android/launcher3/common/drag/DragManager;->onAppsRemoved(Ljava/util/ArrayList;Ljava/util/HashSet;)V

    goto :goto_0
.end method

.method public bindComponentsRemoved(Ljava/util/ArrayList;Ljava/util/HashSet;Lcom/android/launcher3/common/compat/UserHandleCompat;I)V
    .locals 6
    .param p3, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .param p4, "reason"    # I
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
            ">;",
            "Lcom/android/launcher3/common/compat/UserHandleCompat;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 877
    .local p1, "packageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "ComponentsNames":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    new-instance v0, Lcom/android/launcher3/home/HomeBindController$19;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/home/HomeBindController$19;-><init>(Lcom/android/launcher3/home/HomeBindController;Ljava/util/ArrayList;Ljava/util/HashSet;Lcom/android/launcher3/common/compat/UserHandleCompat;I)V

    .line 882
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/android/launcher3/home/HomeBindController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 900
    :goto_0
    return-void

    .line 886
    :cond_0
    if-nez p4, :cond_3

    .line 887
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 888
    iget-object v1, p0, Lcom/android/launcher3/home/HomeBindController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1, p1, p3}, Lcom/android/launcher3/home/HomeController;->removeItemsByPackageName(Ljava/util/ArrayList;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    .line 890
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 891
    iget-object v1, p0, Lcom/android/launcher3/home/HomeBindController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1, p2, p3}, Lcom/android/launcher3/home/HomeController;->removeItemsByComponentName(Ljava/util/HashSet;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    .line 894
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/home/HomeBindController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v1, p1, p2}, Lcom/android/launcher3/common/drag/DragManager;->onAppsRemoved(Ljava/util/ArrayList;Ljava/util/HashSet;)V

    .line 899
    :goto_1
    iget-object v1, p0, Lcom/android/launcher3/home/HomeBindController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->onChangeChildState()V

    goto :goto_0

    .line 896
    :cond_3
    iget-object v1, p0, Lcom/android/launcher3/home/HomeBindController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    iget-object v2, p0, Lcom/android/launcher3/home/HomeBindController;->mIconCache:Lcom/android/launcher3/common/model/IconCache;

    invoke-virtual {v1, p1, p3, p4, v2}, Lcom/android/launcher3/home/HomeController;->disableShortcutsByPackageName(Ljava/util/ArrayList;Lcom/android/launcher3/common/compat/UserHandleCompat;ILcom/android/launcher3/common/model/IconCache;)V

    goto :goto_1
.end method

.method public bindFestivalPageIfNecessary()V
    .locals 2

    .prologue
    .line 904
    new-instance v0, Lcom/android/launcher3/home/HomeBindController$20;

    invoke-direct {v0, p0}, Lcom/android/launcher3/home/HomeBindController$20;-><init>(Lcom/android/launcher3/home/HomeBindController;)V

    .line 909
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/android/launcher3/home/HomeBindController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 915
    :cond_0
    :goto_0
    return-void

    .line 913
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/home/HomeBindController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->getFestivalPageController()Lcom/android/launcher3/home/FestivalPageController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 914
    iget-object v1, p0, Lcom/android/launcher3/home/HomeBindController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->getFestivalPageController()Lcom/android/launcher3/home/FestivalPageController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/home/FestivalPageController;->bindFestivalPageIfNecessary()V

    goto :goto_0
.end method

.method public bindFolderTitle(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 3
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 436
    instance-of v1, p1, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v1, :cond_0

    .line 437
    iget-object v2, p0, Lcom/android/launcher3/home/HomeBindController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/home/HomeController;->getFolderIconView(Lcom/android/launcher3/folder/FolderInfo;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/view/IconView;

    .line 438
    .local v0, "v":Lcom/android/launcher3/common/view/IconView;
    if-eqz v0, :cond_0

    .line 439
    iget-object v1, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/view/IconView;->setText(Ljava/lang/CharSequence;)V

    .line 442
    .end local v0    # "v":Lcom/android/launcher3/common/view/IconView;
    :cond_0
    return-void
.end method

.method public bindFolders(Lcom/android/launcher3/util/LongArrayMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/util/LongArrayMap",
            "<",
            "Lcom/android/launcher3/folder/FolderInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 423
    .local p1, "folders":Lcom/android/launcher3/util/LongArrayMap;, "Lcom/android/launcher3/util/LongArrayMap<Lcom/android/launcher3/folder/FolderInfo;>;"
    new-instance v0, Lcom/android/launcher3/home/HomeBindController$6;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/home/HomeBindController$6;-><init>(Lcom/android/launcher3/home/HomeBindController;Lcom/android/launcher3/util/LongArrayMap;)V

    .line 428
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/android/launcher3/home/HomeBindController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 432
    :goto_0
    return-void

    .line 431
    :cond_0
    invoke-virtual {p1}, Lcom/android/launcher3/util/LongArrayMap;->clone()Lcom/android/launcher3/util/LongArrayMap;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/home/HomeBindController;->sFolders:Lcom/android/launcher3/util/LongArrayMap;

    goto :goto_0
.end method

.method public bindInsertScreens(JI)V
    .locals 1
    .param p1, "screenId"    # J
    .param p3, "insertIndex"    # I

    .prologue
    .line 418
    iget-object v0, p0, Lcom/android/launcher3/home/HomeBindController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/launcher3/home/Workspace;->insertNewWorkspaceScreen(JI)J

    .line 419
    return-void
.end method

.method public bindItem(Lcom/android/launcher3/common/base/item/ItemInfo;Z)V
    .locals 29
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p2, "forceAnimateIcons"    # Z

    .prologue
    .line 165
    new-instance v26, Lcom/android/launcher3/home/HomeBindController$2;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher3/home/HomeBindController$2;-><init>(Lcom/android/launcher3/home/HomeBindController;Lcom/android/launcher3/common/base/item/ItemInfo;Z)V

    .line 170
    .local v26, "r":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HomeBindController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    if-eqz p2, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HomeBindController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v4}, Lcom/android/launcher3/home/HomeController;->canRunNewAppsAnimation()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v11, 0x1

    .line 179
    .local v11, "animateIcons":Z
    :goto_1
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v6, -0x65

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HomeBindController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    if-eqz v4, :cond_0

    .line 185
    :cond_2
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    packed-switch v4, :pswitch_data_0

    .line 217
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Invalid Item Type"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 176
    .end local v11    # "animateIcons":Z
    :cond_3
    const/4 v11, 0x0

    goto :goto_1

    .restart local v11    # "animateIcons":Z
    :pswitch_0
    move-object/from16 v25, p1

    .line 188
    check-cast v25, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 189
    .local v25, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/HomeBindController;->createShortcut(Lcom/android/launcher3/common/base/item/IconInfo;)Landroid/view/View;

    move-result-object v13

    .line 191
    .local v13, "view":Landroid/view/View;
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v6, -0x64

    cmp-long v4, v4, v6

    if-nez v4, :cond_5

    .line 192
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HomeBindController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-virtual {v4, v6, v7}, Lcom/android/launcher3/home/Workspace;->getScreenWithId(J)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v23

    .line 193
    .local v23, "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    if-eqz v23, :cond_5

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Lcom/android/launcher3/common/base/view/CellLayout;->isOccupied(II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 194
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Lcom/android/launcher3/common/base/view/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v28

    .line 195
    .local v28, "v":Landroid/view/View;
    if-eqz v28, :cond_4

    .line 196
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v27

    .line 197
    .local v27, "tag":Ljava/lang/Object;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Collision while binding workspace item: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Collides with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 199
    .local v24, "desc":Ljava/lang/String;
    const-string v4, "HomeBindController"

    move-object/from16 v0, v24

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    .end local v24    # "desc":Ljava/lang/String;
    .end local v27    # "tag":Ljava/lang/Object;
    :goto_2
    const-string v4, "HomeBindController"

    const-string v5, "This item will be bind after change the position"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HomeBindController;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/launcher3/home/HomeLoader;->bindItemAfterChangePosition(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto/16 :goto_0

    .line 201
    :cond_4
    const-string v4, "HomeBindController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "child view is null "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 210
    .end local v13    # "view":Landroid/view/View;
    .end local v23    # "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v25    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v28    # "v":Landroid/view/View;
    :pswitch_1
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v6, -0x65

    cmp-long v4, v4, v6

    if-nez v4, :cond_6

    const/4 v10, 0x1

    .line 212
    .local v10, "iconDisplay":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HomeBindController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HomeBindController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/HomeBindController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    .line 213
    invoke-virtual {v6}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    move-object/from16 v6, p1

    check-cast v6, Lcom/android/launcher3/folder/FolderInfo;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/HomeBindController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/home/HomeBindController;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v9, 0x0

    .line 212
    invoke-static/range {v4 .. v10}, Lcom/android/launcher3/folder/view/FolderIconView;->fromXml(Lcom/android/launcher3/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher3/folder/FolderInfo;Lcom/android/launcher3/common/base/controller/ControllerBase;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;I)Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v13

    .line 220
    .end local v10    # "iconDisplay":I
    .restart local v13    # "view":Landroid/view/View;
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/home/HomeBindController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    move/from16 v19, v0

    const/16 v20, 0x1

    const/16 v21, 0x1

    invoke-virtual/range {v12 .. v21}, Lcom/android/launcher3/home/HomeController;->addInScreenFromBind(Landroid/view/View;JJIIII)V

    .line 222
    if-eqz v11, :cond_0

    .line 224
    const/4 v4, 0x0

    invoke-virtual {v13, v4}, Landroid/view/View;->setAlpha(F)V

    .line 225
    const/4 v4, 0x0

    invoke-virtual {v13, v4}, Landroid/view/View;->setScaleX(F)V

    .line 226
    const/4 v4, 0x0

    invoke-virtual {v13, v4}, Landroid/view/View;->setScaleY(F)V

    .line 227
    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-virtual {v13, v4, v5}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 228
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HomeBindController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const/4 v5, 0x0

    invoke-virtual {v4, v13, v5}, Lcom/android/launcher3/home/HomeController;->createNewAppBounceAnimation(Landroid/view/View;I)Landroid/animation/ValueAnimator;

    move-result-object v22

    .line 229
    .local v22, "bounceAnim":Landroid/animation/Animator;
    new-instance v4, Lcom/android/launcher3/home/HomeBindController$3;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v13}, Lcom/android/launcher3/home/HomeBindController$3;-><init>(Lcom/android/launcher3/home/HomeBindController;Landroid/view/View;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 248
    invoke-virtual/range {v22 .. v22}, Landroid/animation/Animator;->start()V

    goto/16 :goto_0

    .line 210
    .end local v13    # "view":Landroid/view/View;
    .end local v22    # "bounceAnim":Landroid/animation/Animator;
    :cond_6
    const/4 v10, 0x0

    goto :goto_3

    .line 185
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bindItems(Ljava/util/ArrayList;IIZ)V
    .locals 31
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "forceAnimateIcons"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;IIZ)V"
        }
    .end annotation

    .prologue
    .line 291
    .local p1, "shortcuts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v4, Lcom/android/launcher3/home/HomeBindController$4;

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    invoke-direct/range {v4 .. v9}, Lcom/android/launcher3/home/HomeBindController$4;-><init>(Lcom/android/launcher3/home/HomeBindController;Ljava/util/ArrayList;IIZ)V

    .line 296
    .local v4, "r":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HomeBindController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5, v4}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 397
    :goto_0
    return-void

    .line 301
    :cond_0
    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v16

    .line 302
    .local v16, "anim":Landroid/animation/AnimatorSet;
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 303
    .local v18, "bounceAnims":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/animation/Animator;>;"
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 304
    .local v22, "hotseatItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    if-eqz p4, :cond_2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HomeBindController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v5}, Lcom/android/launcher3/home/HomeController;->canRunNewAppsAnimation()Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v17, 0x1

    .line 306
    .local v17, "animateIcons":Z
    :goto_1
    const-wide/16 v26, -0x1

    .line 307
    .local v26, "newShortcutsScreenId":J
    move/from16 v23, p2

    .local v23, "i":I
    :goto_2
    move/from16 v0, v23

    move/from16 v1, p3

    if-ge v0, v1, :cond_9

    .line 308
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 311
    .local v25, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object/from16 v0, v25

    iget-wide v8, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v10, -0x65

    cmp-long v5, v8, v10

    if-nez v5, :cond_3

    .line 312
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HomeBindController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    if-eqz v5, :cond_1

    .line 313
    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    :cond_1
    :goto_3
    add-int/lit8 v23, v23, 0x1

    goto :goto_2

    .line 304
    .end local v17    # "animateIcons":Z
    .end local v23    # "i":I
    .end local v25    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v26    # "newShortcutsScreenId":J
    :cond_2
    const/16 v17, 0x0

    goto :goto_1

    .line 319
    .restart local v17    # "animateIcons":Z
    .restart local v23    # "i":I
    .restart local v25    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    .restart local v26    # "newShortcutsScreenId":J
    :cond_3
    move-object/from16 v0, v25

    iget v5, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    packed-switch v5, :pswitch_data_0

    .line 362
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Invalid Item Type"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    :pswitch_0
    move-object/from16 v24, v25

    .line 322
    check-cast v24, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 323
    .local v24, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/HomeBindController;->createShortcut(Lcom/android/launcher3/common/base/item/IconInfo;)Landroid/view/View;

    move-result-object v7

    .line 325
    .local v7, "view":Landroid/view/View;
    move-object/from16 v0, v25

    iget-wide v8, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v10, -0x64

    cmp-long v5, v8, v10

    if-nez v5, :cond_8

    .line 326
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HomeBindController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v0, v25

    iget-wide v8, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-virtual {v5, v8, v9}, Lcom/android/launcher3/home/Workspace;->getScreenWithId(J)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v19

    .line 327
    .local v19, "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    move-object/from16 v0, v25

    iget v5, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_4

    move-object/from16 v0, v25

    iget v5, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_5

    .line 328
    :cond_4
    const-string v5, "HomeBindController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bindItems item cellXY is -1 : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v24 .. v24}, Lcom/android/launcher3/common/base/item/IconInfo;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    move-object/from16 v0, v25

    iget v5, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->hidden:I

    if-eqz v5, :cond_5

    .line 330
    const-string v5, "HomeBindController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bind hidden item. skip... "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v24 .. v24}, Lcom/android/launcher3/common/base/item/IconInfo;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 334
    :cond_5
    if-eqz v19, :cond_8

    move-object/from16 v0, v25

    iget v5, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    move-object/from16 v0, v25

    iget v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v6}, Lcom/android/launcher3/common/base/view/CellLayout;->isOccupied(II)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 335
    move-object/from16 v0, v25

    iget v5, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    move-object/from16 v0, v25

    iget v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v6}, Lcom/android/launcher3/common/base/view/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v30

    .line 336
    .local v30, "v":Landroid/view/View;
    if-eqz v30, :cond_6

    .line 337
    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v29

    .line 338
    .local v29, "tag":Ljava/lang/Object;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Collision while binding workspace item: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". Collides with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 340
    .local v20, "desc":Ljava/lang/String;
    const-string v5, "HomeBindController"

    move-object/from16 v0, v20

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    .end local v20    # "desc":Ljava/lang/String;
    .end local v29    # "tag":Ljava/lang/Object;
    :goto_4
    const-string v5, "HomeBindController"

    const-string v6, "This item will be bind after change the position"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HomeBindController;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Lcom/android/launcher3/home/HomeLoader;->bindItemAfterChangePosition(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto/16 :goto_3

    .line 342
    :cond_6
    const-string v5, "HomeBindController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "child view is null "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 351
    .end local v7    # "view":Landroid/view/View;
    .end local v19    # "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v24    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v30    # "v":Landroid/view/View;
    :pswitch_1
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFolderLock()Z

    move-result v5

    if-eqz v5, :cond_7

    move-object/from16 v21, v25

    .line 352
    check-cast v21, Lcom/android/launcher3/folder/FolderInfo;

    .line 353
    .local v21, "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HomeBindController;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    if-eqz v5, :cond_7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HomeBindController;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Lcom/android/launcher3/folder/folderlock/FolderLock;->isLockedFolder(Lcom/android/launcher3/folder/FolderInfo;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 354
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HomeBindController;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Lcom/android/launcher3/folder/folderlock/FolderLock;->markAsLockedFolderWhenBind(Lcom/android/launcher3/folder/FolderInfo;)V

    .line 357
    .end local v21    # "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    :cond_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HomeBindController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/HomeBindController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/home/HomeBindController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    .line 358
    invoke-virtual {v8}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    move-object/from16 v7, v25

    check-cast v7, Lcom/android/launcher3/folder/FolderInfo;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/home/HomeBindController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/home/HomeBindController;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 357
    invoke-static/range {v5 .. v11}, Lcom/android/launcher3/folder/view/FolderIconView;->fromXml(Lcom/android/launcher3/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher3/folder/FolderInfo;Lcom/android/launcher3/common/base/controller/ControllerBase;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;I)Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v7

    .line 365
    .restart local v7    # "view":Landroid/view/View;
    :cond_8
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/HomeBindController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, v25

    iget-wide v8, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-object/from16 v0, v25

    iget-wide v10, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    move-object/from16 v0, v25

    iget v12, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    move-object/from16 v0, v25

    iget v13, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-virtual/range {v6 .. v15}, Lcom/android/launcher3/home/HomeController;->addInScreenFromBind(Landroid/view/View;JJIIII)V

    .line 366
    if-eqz v17, :cond_1

    .line 368
    const/4 v5, 0x0

    invoke-virtual {v7, v5}, Landroid/view/View;->setAlpha(F)V

    .line 369
    const/4 v5, 0x0

    invoke-virtual {v7, v5}, Landroid/view/View;->setScaleX(F)V

    .line 370
    const/4 v5, 0x0

    invoke-virtual {v7, v5}, Landroid/view/View;->setScaleY(F)V

    .line 371
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HomeBindController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move/from16 v0, v23

    invoke-virtual {v5, v7, v0}, Lcom/android/launcher3/home/HomeController;->createNewAppBounceAnimation(Landroid/view/View;I)Landroid/animation/ValueAnimator;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 372
    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    move-wide/from16 v26, v0

    goto/16 :goto_3

    .line 376
    .end local v7    # "view":Landroid/view/View;
    .end local v25    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_9
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_b

    .line 377
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v17

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher3/home/HomeBindController;->bindHotseatItems(Ljava/util/ArrayList;ZLjava/util/Collection;)V

    .line 378
    if-eqz v17, :cond_a

    const-wide/16 v8, 0x0

    cmp-long v5, v26, v8

    if-gez v5, :cond_a

    .line 379
    const-wide/16 v26, 0x0

    .line 381
    :cond_a
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/launcher3/home/HomeBindController;->mHotseatLoading:Z

    .line 384
    :cond_b
    if-eqz v17, :cond_c

    .line 386
    const-wide/16 v8, -0x1

    cmp-long v5, v26, v8

    if-lez v5, :cond_c

    .line 387
    new-instance v28, Lcom/android/launcher3/home/HomeBindController$5;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher3/home/HomeBindController$5;-><init>(Lcom/android/launcher3/home/HomeBindController;Landroid/animation/AnimatorSet;Ljava/util/Collection;)V

    .line 393
    .local v28, "startBounceAnimRunnable":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HomeBindController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    sget v6, Lcom/android/launcher3/home/HomeBindController;->NEW_APPS_ANIMATION_DELAY:I

    int-to-long v8, v6

    move-object/from16 v0, v28

    invoke-virtual {v5, v0, v8, v9}, Lcom/android/launcher3/home/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 396
    .end local v28    # "startBounceAnimRunnable":Ljava/lang/Runnable;
    :cond_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HomeBindController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher3/home/Workspace;->requestLayout()V

    goto/16 :goto_0

    .line 319
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bindItemsRemoved(Ljava/util/ArrayList;)V
    .locals 4
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
    .line 792
    .local p1, "removed":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v1, Lcom/android/launcher3/home/HomeBindController$15;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/home/HomeBindController$15;-><init>(Lcom/android/launcher3/home/HomeBindController;Ljava/util/ArrayList;)V

    .line 797
    .local v1, "r":Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/android/launcher3/home/HomeBindController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 806
    :cond_0
    return-void

    .line 801
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 802
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 803
    .local v0, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-object v3, p0, Lcom/android/launcher3/home/HomeBindController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v3, v0}, Lcom/android/launcher3/home/HomeController;->removeHomeItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_0
.end method

.method public bindRestoreItemsChange(Ljava/util/HashSet;)V
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
    .line 747
    .local p1, "updates":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v0, Lcom/android/launcher3/home/HomeBindController$13;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/home/HomeBindController$13;-><init>(Lcom/android/launcher3/home/HomeBindController;Ljava/util/HashSet;)V

    .line 752
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/android/launcher3/home/HomeBindController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 756
    :goto_0
    return-void

    .line 755
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/home/HomeBindController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/home/HomeController;->updateRestoreItems(Ljava/util/HashSet;)V

    goto :goto_0
.end method

.method public bindScreens(Ljava/util/ArrayList;)V
    .locals 1
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
    .line 401
    .local p1, "orderedScreenIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/HomeBindController;->bindAddScreens(Ljava/util/ArrayList;)V

    .line 404
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/android/launcher3/home/HomeBindController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->addExtraEmptyScreen()Z

    .line 407
    :cond_0
    return-void
.end method

.method public bindShortcutsChanged(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/launcher3/common/compat/UserHandleCompat;)V
    .locals 5
    .param p3, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;",
            "Lcom/android/launcher3/common/compat/UserHandleCompat;",
            ")V"
        }
    .end annotation

    .prologue
    .line 766
    .local p1, "updated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    .local p2, "removed":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    new-instance v0, Lcom/android/launcher3/home/HomeBindController$14;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/launcher3/home/HomeBindController$14;-><init>(Lcom/android/launcher3/home/HomeBindController;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    .line 771
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v3, p0, Lcom/android/launcher3/home/HomeBindController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3, v0}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 788
    :cond_0
    :goto_0
    return-void

    .line 775
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 776
    iget-object v3, p0, Lcom/android/launcher3/home/HomeBindController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    iget-object v4, p0, Lcom/android/launcher3/home/HomeBindController;->mIconCache:Lcom/android/launcher3/common/model/IconCache;

    invoke-virtual {v3, p1, v4}, Lcom/android/launcher3/home/HomeController;->updateShortcuts(Ljava/util/ArrayList;Lcom/android/launcher3/common/model/IconCache;)V

    .line 779
    :cond_2
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz p3, :cond_0

    .line 780
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 781
    .local v1, "removedComponents":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 782
    .local v2, "si":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-virtual {v2}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 784
    .end local v2    # "si":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_3
    iget-object v3, p0, Lcom/android/launcher3/home/HomeBindController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v3, v1, p3}, Lcom/android/launcher3/home/HomeController;->removeItemsByComponentName(Ljava/util/HashSet;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    .line 786
    iget-object v3, p0, Lcom/android/launcher3/home/HomeBindController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v4, v1}, Lcom/android/launcher3/common/drag/DragManager;->onAppsRemoved(Ljava/util/ArrayList;Ljava/util/HashSet;)V

    goto :goto_0
.end method

.method public bindUpdateContainer(ZLcom/android/launcher3/folder/FolderInfo;Lcom/android/launcher3/common/base/item/IconInfo;)V
    .locals 8
    .param p1, "addToFolder"    # Z
    .param p2, "folder"    # Lcom/android/launcher3/folder/FolderInfo;
    .param p3, "item"    # Lcom/android/launcher3/common/base/item/IconInfo;

    .prologue
    .line 446
    new-instance v2, Lcom/android/launcher3/home/HomeBindController$7;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/android/launcher3/home/HomeBindController$7;-><init>(Lcom/android/launcher3/home/HomeBindController;ZLcom/android/launcher3/folder/FolderInfo;Lcom/android/launcher3/common/base/item/IconInfo;)V

    .line 451
    .local v2, "r":Ljava/lang/Runnable;
    iget-object v3, p0, Lcom/android/launcher3/home/HomeBindController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 471
    :cond_0
    :goto_0
    return-void

    .line 455
    :cond_1
    invoke-virtual {p3}, Lcom/android/launcher3/common/base/item/IconInfo;->getPrevContainer()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-eqz v3, :cond_2

    .line 456
    iget-wide v0, p3, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    .line 457
    .local v0, "container":J
    invoke-virtual {p3}, Lcom/android/launcher3/common/base/item/IconInfo;->getPrevContainer()J

    move-result-wide v4

    iput-wide v4, p3, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    .line 458
    iget-object v3, p0, Lcom/android/launcher3/home/HomeBindController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v3, p3}, Lcom/android/launcher3/home/HomeController;->removeHomeItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 459
    iput-wide v0, p3, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    .line 462
    .end local v0    # "container":J
    :cond_2
    if-eqz p2, :cond_0

    .line 463
    if-eqz p1, :cond_3

    .line 464
    iget-object v3, p2, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 465
    invoke-virtual {p2, p3}, Lcom/android/launcher3/folder/FolderInfo;->add(Lcom/android/launcher3/common/base/item/IconInfo;)V

    goto :goto_0

    .line 468
    :cond_3
    invoke-virtual {p2, p3}, Lcom/android/launcher3/folder/FolderInfo;->remove(Lcom/android/launcher3/common/base/item/IconInfo;)V

    goto :goto_0
.end method

.method public bindWidgetsRestored(Ljava/util/ArrayList;)V
    .locals 2
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
    .line 841
    .local p1, "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/home/LauncherAppWidgetInfo;>;"
    new-instance v0, Lcom/android/launcher3/home/HomeBindController$17;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/home/HomeBindController$17;-><init>(Lcom/android/launcher3/home/HomeBindController;Ljava/util/ArrayList;)V

    .line 846
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/android/launcher3/home/HomeBindController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 850
    :goto_0
    return-void

    .line 849
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/home/HomeBindController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/home/HomeController;->widgetsRestored(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method clearWidgetsToAdvance()V
    .locals 1

    .prologue
    .line 980
    iget-object v0, p0, Lcom/android/launcher3/home/HomeBindController;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 981
    return-void
.end method

.method createShortcut(Landroid/view/ViewGroup;Lcom/android/launcher3/common/base/item/IconInfo;)Landroid/view/View;
    .locals 7
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "info"    # Lcom/android/launcher3/common/base/item/IconInfo;

    .prologue
    const/4 v6, 0x0

    .line 1046
    iget-object v1, p0, Lcom/android/launcher3/home/HomeBindController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03002a

    invoke-virtual {v1, v2, p1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/view/IconView;

    .line 1047
    .local v0, "favorite":Lcom/android/launcher3/common/view/IconView;
    iget-wide v2, p2, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    const-wide/16 v4, -0x65

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 1048
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/view/IconView;->setIconDisplay(I)V

    .line 1052
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/home/HomeBindController;->mIconCache:Lcom/android/launcher3/common/model/IconCache;

    invoke-virtual {v0, p2, v1}, Lcom/android/launcher3/common/view/IconView;->applyFromShortcutInfo(Lcom/android/launcher3/common/base/item/IconInfo;Lcom/android/launcher3/common/model/IconCache;)V

    .line 1053
    iget-object v1, p0, Lcom/android/launcher3/home/HomeBindController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/view/IconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1054
    return-object v0

    .line 1050
    :cond_0
    invoke-virtual {v0, v6}, Lcom/android/launcher3/common/view/IconView;->setIconDisplay(I)V

    goto :goto_0
.end method

.method createShortcut(Lcom/android/launcher3/common/base/item/IconInfo;)Landroid/view/View;
    .locals 2
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/IconInfo;

    .prologue
    .line 1035
    iget-object v0, p0, Lcom/android/launcher3/home/HomeBindController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-object v1, p0, Lcom/android/launcher3/home/HomeBindController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/home/HomeBindController;->createShortcut(Landroid/view/ViewGroup;Lcom/android/launcher3/common/base/item/IconInfo;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public finishBindingItems()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 475
    new-instance v1, Lcom/android/launcher3/home/HomeBindController$8;

    invoke-direct {v1, p0}, Lcom/android/launcher3/home/HomeBindController$8;-><init>(Lcom/android/launcher3/home/HomeBindController;)V

    .line 480
    .local v1, "r":Ljava/lang/Runnable;
    iget-object v4, p0, Lcom/android/launcher3/home/HomeBindController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4, v1}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 539
    :goto_0
    return-void

    .line 483
    :cond_0
    iget-object v4, p0, Lcom/android/launcher3/home/HomeBindController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getSavedState()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 484
    iget-object v4, p0, Lcom/android/launcher3/home/HomeBindController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher3/home/Workspace;->hasFocus()Z

    move-result v4

    if-nez v4, :cond_1

    .line 485
    iget-object v4, p0, Lcom/android/launcher3/home/HomeBindController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-object v5, p0, Lcom/android/launcher3/home/HomeBindController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 486
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 487
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 490
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    iget-object v4, p0, Lcom/android/launcher3/home/HomeBindController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4, v8}, Lcom/android/launcher3/Launcher;->setSavedState(Landroid/os/Bundle;)V

    .line 493
    :cond_2
    iget-object v4, p0, Lcom/android/launcher3/home/HomeBindController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher3/home/Workspace;->restoreInstanceStateForRemainingPages()V

    .line 495
    iget-boolean v4, p0, Lcom/android/launcher3/home/HomeBindController;->mHotseatLoading:Z

    if-eqz v4, :cond_3

    .line 496
    iput-boolean v6, p0, Lcom/android/launcher3/home/HomeBindController;->mHotseatLoading:Z

    .line 498
    :cond_3
    invoke-virtual {p0, v6}, Lcom/android/launcher3/home/HomeBindController;->setWorkspaceLoading(Z)V

    .line 499
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeBindController;->sendLoadingCompleteBroadcastIfNecessary()V

    .line 503
    iget-object v4, p0, Lcom/android/launcher3/home/HomeBindController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v4}, Lcom/android/launcher3/home/HomeController;->getPendingAddItem()Lcom/android/launcher3/home/HomeController$PendingAddArguments;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 504
    iget-object v4, p0, Lcom/android/launcher3/home/HomeBindController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    iget-object v5, p0, Lcom/android/launcher3/home/HomeBindController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v5}, Lcom/android/launcher3/home/HomeController;->getPendingAddItem()Lcom/android/launcher3/home/HomeController$PendingAddArguments;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/launcher3/home/HomeController;->completeAdd(Lcom/android/launcher3/home/HomeController$PendingAddArguments;)J

    move-result-wide v2

    .line 509
    .local v2, "screenId":J
    iget-object v4, p0, Lcom/android/launcher3/home/HomeBindController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    new-instance v5, Lcom/android/launcher3/home/HomeBindController$9;

    invoke-direct {v5, p0, v2, v3}, Lcom/android/launcher3/home/HomeBindController$9;-><init>(Lcom/android/launcher3/home/HomeBindController;J)V

    invoke-virtual {v4, v5}, Lcom/android/launcher3/home/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 515
    iget-object v4, p0, Lcom/android/launcher3/home/HomeBindController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v4, v8}, Lcom/android/launcher3/home/HomeController;->setPendingAddItem(Lcom/android/launcher3/home/HomeController$PendingAddArguments;)V

    .line 518
    .end local v2    # "screenId":J
    :cond_4
    iget-object v4, p0, Lcom/android/launcher3/home/HomeBindController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v4}, Lcom/android/launcher3/home/ExternalRequestQueue;->disableAndFlushExternalRequestQueue(Lcom/android/launcher3/Launcher;)V

    .line 520
    iget-object v4, p0, Lcom/android/launcher3/home/HomeBindController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v4, v7}, Lcom/android/launcher3/home/HomeController;->notifyCapture(Z)V

    .line 522
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/home/HomeBindController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/util/logging/SALogging;->setDefaultValueForHomeStatusLog(Landroid/content/Context;)V

    .line 524
    new-instance v4, Landroid/os/Handler;

    invoke-static {}, Lcom/android/launcher3/LauncherModel;->getWorkerLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v5, Lcom/android/launcher3/home/HomeBindController$10;

    invoke-direct {v5, p0}, Lcom/android/launcher3/home/HomeBindController$10;-><init>(Lcom/android/launcher3/home/HomeBindController;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 531
    iget-object v4, p0, Lcom/android/launcher3/home/HomeBindController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v4}, Lcom/android/launcher3/home/HomeController;->isOverviewState()Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/android/launcher3/home/HomeBindController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v4}, Lcom/android/launcher3/home/HomeController;->getZeroPageController()Lcom/android/launcher3/home/ZeroPageController;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/launcher3/home/HomeBindController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    .line 532
    invoke-virtual {v4}, Lcom/android/launcher3/home/Workspace;->getPageIndicator()Lcom/android/launcher3/common/view/PageIndicator;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 533
    iget-object v4, p0, Lcom/android/launcher3/home/HomeBindController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v4}, Lcom/android/launcher3/home/HomeController;->getZeroPageController()Lcom/android/launcher3/home/ZeroPageController;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/home/HomeBindController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    .line 534
    invoke-virtual {v5}, Lcom/android/launcher3/home/HomeController;->isNormalState()Z

    move-result v5

    invoke-virtual {v4, v5, v7}, Lcom/android/launcher3/home/ZeroPageController;->updatePageIndicatorForZeroPage(ZZ)V

    .line 536
    :cond_5
    iget-object v4, p0, Lcom/android/launcher3/home/HomeBindController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    iget-object v5, p0, Lcom/android/launcher3/home/HomeBindController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher3/home/Workspace;->getToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/launcher3/common/drag/DragManager;->setWindowToken(Landroid/os/IBinder;)V

    .line 538
    iget-object v4, p0, Lcom/android/launcher3/home/HomeBindController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v4}, Lcom/android/launcher3/home/HomeController;->createAndShowSwipeAffordance()V

    goto/16 :goto_0
.end method

.method public getCurrentWorkspaceScreen()I
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/launcher3/home/HomeBindController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/android/launcher3/home/HomeBindController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v0

    .line 130
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initFestivalPageIfNecessary()V
    .locals 2

    .prologue
    .line 919
    new-instance v0, Lcom/android/launcher3/home/HomeBindController$21;

    invoke-direct {v0, p0}, Lcom/android/launcher3/home/HomeBindController$21;-><init>(Lcom/android/launcher3/home/HomeBindController;)V

    .line 924
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/android/launcher3/home/HomeBindController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 931
    :cond_0
    :goto_0
    return-void

    .line 928
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/home/HomeBindController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->getFestivalPageController()Lcom/android/launcher3/home/FestivalPageController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 929
    iget-object v1, p0, Lcom/android/launcher3/home/HomeBindController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->getFestivalPageController()Lcom/android/launcher3/home/FestivalPageController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/home/FestivalPageController;->initFestivalPageIfNecessary()V

    goto :goto_0
.end method

.method public isHotseatLoading()Z
    .locals 1

    .prologue
    .line 947
    iget-boolean v0, p0, Lcom/android/launcher3/home/HomeBindController;->mHotseatLoading:Z

    return v0
.end method

.method public isWorkspaceLoading()Z
    .locals 1

    .prologue
    .line 939
    iget-boolean v0, p0, Lcom/android/launcher3/home/HomeBindController;->mWorkspaceLoading:Z

    return v0
.end method

.method public onPageBoundSynchronously(I)V
    .locals 2
    .param p1, "page"    # I

    .prologue
    .line 935
    iget-object v0, p0, Lcom/android/launcher3/home/HomeBindController;->mSynchronouslyBoundPages:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 936
    return-void
.end method

.method public removeAdvanceMessage()V
    .locals 2

    .prologue
    .line 975
    iget-object v0, p0, Lcom/android/launcher3/home/HomeBindController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 976
    iget-object v0, p0, Lcom/android/launcher3/home/HomeBindController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 977
    return-void
.end method

.method removeAppWidget(Lcom/android/launcher3/home/LauncherAppWidgetInfo;)V
    .locals 7
    .param p1, "launcherInfo"    # Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    .prologue
    .line 1070
    iget-object v0, p1, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/HomeBindController;->removeWidgetToAutoAdvance(Landroid/view/View;)V

    .line 1071
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 1072
    iget-object v0, p1, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    .line 1073
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v1

    const-string v2, "WGDT"

    iget-object v0, p1, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    .line 1074
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    .line 1073
    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 1076
    :cond_0
    return-void
.end method

.method removeWidgetToAutoAdvance(Landroid/view/View;)V
    .locals 1
    .param p1, "hostView"    # Landroid/view/View;

    .prologue
    .line 1019
    iget-object v0, p0, Lcom/android/launcher3/home/HomeBindController;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1020
    iget-object v0, p0, Lcom/android/launcher3/home/HomeBindController;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1021
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeBindController;->updateAutoAdvanceState()V

    .line 1023
    :cond_0
    return-void
.end method

.method restoreInstanceState()V
    .locals 3

    .prologue
    .line 1100
    iget-object v1, p0, Lcom/android/launcher3/home/HomeBindController;->mSynchronouslyBoundPages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1101
    .local v0, "page":I
    iget-object v1, p0, Lcom/android/launcher3/home/HomeBindController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/home/Workspace;->restoreInstanceStateForChild(I)V

    goto :goto_0

    .line 1103
    .end local v0    # "page":I
    :cond_0
    return-void
.end method

.method public setUserPresent(Z)V
    .locals 0
    .param p1, "userPresent"    # Z

    .prologue
    .line 1026
    iput-boolean p1, p0, Lcom/android/launcher3/home/HomeBindController;->mUserPresent:Z

    .line 1027
    return-void
.end method

.method public setWorkspaceLoading(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 943
    iput-boolean p1, p0, Lcom/android/launcher3/home/HomeBindController;->mWorkspaceLoading:Z

    .line 944
    return-void
.end method

.method setup(Lcom/android/launcher3/common/drag/DragManager;Lcom/android/launcher3/home/Workspace;Lcom/android/launcher3/home/Hotseat;)V
    .locals 0
    .param p1, "dragMgr"    # Lcom/android/launcher3/common/drag/DragManager;
    .param p2, "workspace"    # Lcom/android/launcher3/home/Workspace;
    .param p3, "hotseat"    # Lcom/android/launcher3/home/Hotseat;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/launcher3/home/HomeBindController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    .line 121
    iput-object p2, p0, Lcom/android/launcher3/home/HomeBindController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    .line 122
    iput-object p3, p0, Lcom/android/launcher3/home/HomeBindController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    .line 123
    return-void
.end method

.method public startBinding()V
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/HomeBindController;->setWorkspaceLoading(Z)V

    .line 141
    iget-object v0, p0, Lcom/android/launcher3/home/HomeBindController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getBindOnResumeCallbacks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 144
    iget-object v0, p0, Lcom/android/launcher3/home/HomeBindController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->clearDropTargets()V

    .line 145
    iget-object v0, p0, Lcom/android/launcher3/home/HomeBindController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->removeAllWorkspaceScreens()V

    .line 147
    iget-object v0, p0, Lcom/android/launcher3/home/HomeBindController;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 148
    return-void
.end method

.method public updateAutoAdvanceState()V
    .locals 12

    .prologue
    const-wide/16 v2, 0x4e20

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 991
    iget-object v5, p0, Lcom/android/launcher3/home/HomeBindController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getVisible()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/android/launcher3/home/HomeBindController;->mUserPresent:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/launcher3/home/HomeBindController;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    move v0, v1

    .line 992
    .local v0, "autoAdvanceRunning":Z
    :goto_0
    iget-boolean v5, p0, Lcom/android/launcher3/home/HomeBindController;->mAutoAdvanceRunning:Z

    if-eq v0, v5, :cond_0

    .line 993
    iput-boolean v0, p0, Lcom/android/launcher3/home/HomeBindController;->mAutoAdvanceRunning:Z

    .line 994
    if-eqz v0, :cond_3

    .line 995
    iget-wide v4, p0, Lcom/android/launcher3/home/HomeBindController;->mAutoAdvanceTimeLeft:J

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-nez v1, :cond_2

    .line 996
    .local v2, "delay":J
    :goto_1
    invoke-direct {p0, v2, v3}, Lcom/android/launcher3/home/HomeBindController;->sendAdvanceMessage(J)V

    .line 1006
    .end local v2    # "delay":J
    :cond_0
    :goto_2
    return-void

    .end local v0    # "autoAdvanceRunning":Z
    :cond_1
    move v0, v4

    .line 991
    goto :goto_0

    .line 995
    .restart local v0    # "autoAdvanceRunning":Z
    :cond_2
    iget-wide v2, p0, Lcom/android/launcher3/home/HomeBindController;->mAutoAdvanceTimeLeft:J

    goto :goto_1

    .line 998
    :cond_3
    iget-object v5, p0, Lcom/android/launcher3/home/HomeBindController;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 999
    const-wide/16 v6, 0x0

    .line 1000
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/android/launcher3/home/HomeBindController;->mAutoAdvanceSentTime:J

    sub-long/2addr v8, v10

    sub-long v8, v2, v8

    .line 999
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/launcher3/home/HomeBindController;->mAutoAdvanceTimeLeft:J

    .line 1002
    :cond_4
    iget-object v5, p0, Lcom/android/launcher3/home/HomeBindController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1003
    iget-object v1, p0, Lcom/android/launcher3/home/HomeBindController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_2
.end method
