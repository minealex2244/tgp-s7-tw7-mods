.class public Lcom/android/launcher3/home/WorkspaceDragController;
.super Ljava/lang/Object;
.source "WorkspaceDragController.java"

# interfaces
.implements Lcom/android/launcher3/common/drag/DropTarget;
.implements Lcom/android/launcher3/common/drag/DragSource;
.implements Lcom/android/launcher3/common/drag/DragScroller;
.implements Lcom/android/launcher3/common/drag/DragState;
.implements Lcom/android/launcher3/common/drag/DragManager$DragListener;


# static fields
.field private static final ADJACENT_SCREEN_DROP_DURATION:I = 0x12c

.field private static final ANIMATE_INTO_POSITION_AND_DISAPPEAR:I = 0x0

.field private static final ANIMATE_INTO_POSITION_AND_REMAIN:I = 0x1

.field private static final ANIMATE_INTO_POSITION_AND_RESIZE:I = 0x2

.field static final CANCEL_TWO_STAGE_WIDGET_DROP_ANIMATION:I = 0x4

.field static final COMPLETE_TWO_STAGE_WIDGET_DROP_ANIMATION:I = 0x3

.field private static final WIDGET_DROP_ANIMATION_DELAY:I = 0xc8


# instance fields
.field private mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

.field private mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

.field private mDragMode:I

.field private mDragOverX:I

.field private mDragOverY:I

.field private mDragOverlappingLayout:Lcom/android/launcher3/common/base/view/CellLayout;

.field private mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

.field private mDragViewVisualCenter:[F

.field private mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

.field private mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

.field private mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

.field private mHomeController:Lcom/android/launcher3/home/HomeController;

.field private mInScrollArea:Z

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mReorderController:Lcom/android/launcher3/home/WorkspaceReorderController;

.field private mRestorePosition:Z

.field private mTargetCell:[I

.field private mWorkspace:Lcom/android/launcher3/home/Workspace;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/launcher3/home/Workspace;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "workspace"    # Lcom/android/launcher3/home/Workspace;

    .prologue
    const/4 v4, 0x2

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    .line 91
    iput v3, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragOverX:I

    .line 92
    iput v3, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragOverY:I

    .line 97
    iput-object v2, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    .line 99
    iput-object v2, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragOverlappingLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    .line 104
    iput-object v2, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    .line 106
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    .line 108
    iput-boolean v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mInScrollArea:Z

    .line 109
    iput-boolean v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mRestorePosition:Z

    .line 111
    iput v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragMode:I

    .line 126
    check-cast p1, Lcom/android/launcher3/Launcher;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 127
    iput-object p2, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    .line 129
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFolderLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    invoke-static {}, Lcom/android/launcher3/folder/folderlock/FolderLock;->getInstance()Lcom/android/launcher3/folder/folderlock/FolderLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    .line 132
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/home/WorkspaceDragController;)Lcom/android/launcher3/home/HomeController;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/WorkspaceDragController;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher3/home/WorkspaceDragController;Ljava/util/ArrayList;Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/WorkspaceDragController;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p3, "x3"    # Landroid/view/View;
    .param p4, "x4"    # Z

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher3/home/WorkspaceDragController;->addItemOnNewPage(Ljava/util/ArrayList;Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/launcher3/home/WorkspaceDragController;)Lcom/android/launcher3/common/base/view/CellLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/WorkspaceDragController;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher3/home/WorkspaceDragController;)Lcom/android/launcher3/home/Workspace;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/WorkspaceDragController;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher3/home/WorkspaceDragController;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/WorkspaceDragController;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher3/home/WorkspaceDragController;Ljava/util/ArrayList;Ljava/lang/Runnable;ZZZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/WorkspaceDragController;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # Ljava/lang/Runnable;
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z
    .param p5, "x5"    # Z
    .param p6, "x6"    # Z

    .prologue
    .line 70
    invoke-direct/range {p0 .. p6}, Lcom/android/launcher3/home/WorkspaceDragController;->onDropExtraObjects(Ljava/util/ArrayList;Ljava/lang/Runnable;ZZZZ)V

    return-void
.end method

.method private addItemOnNewPage(Ljava/util/ArrayList;Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;Z)V
    .locals 32
    .param p2, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p3, "cell"    # Landroid/view/View;
    .param p4, "removeOriginalView"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            ">;",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            "Landroid/view/View;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 1843
    .local p1, "objects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v6}, Lcom/android/launcher3/home/Workspace;->addExtraEmptyScreen()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1959
    :goto_0
    return-void

    .line 1846
    :cond_0
    const-wide/16 v20, -0x64

    .line 1847
    .local v20, "container":J
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v6}, Lcom/android/launcher3/home/Workspace;->commitExtraEmptyScreen()J

    move-result-wide v10

    .line 1848
    .local v10, "screenId":J
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v6, v10, v11}, Lcom/android/launcher3/home/Workspace;->getScreenWithId(J)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    .line 1849
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/launcher3/home/WorkspaceDragController;->setCurrentDropLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    .line 1851
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput v8, v6, v7

    .line 1852
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v7, 0x1

    const/4 v8, 0x0

    aput v8, v6, v7

    .line 1854
    const/16 v19, 0x0

    .line 1855
    .local v19, "canEnterResizeMode":Z
    const/16 v23, 0x0

    .line 1857
    .local v23, "hostView":Lcom/android/launcher3/home/LauncherAppWidgetHostView;
    if-eqz p2, :cond_1

    move-object/from16 v0, p2

    instance-of v6, v0, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;

    if-eqz v6, :cond_1

    .line 1858
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/launcher3/home/HomeController;->enterDragState(Z)V

    .line 1859
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v7, p2

    check-cast v7, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;

    const-wide/16 v8, -0x64

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    move-object/from16 v0, p2

    iget v13, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move-object/from16 v0, p2

    iget v14, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    invoke-virtual/range {v6 .. v14}, Lcom/android/launcher3/home/HomeController;->addPendingItem(Lcom/android/launcher3/common/base/item/PendingAddItemInfo;JJ[III)V

    .line 1861
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v6, v10, v11}, Lcom/android/launcher3/home/Workspace;->getPageIndexForScreenId(J)I

    move-result v28

    .line 1862
    .local v28, "snapScreen":I
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    new-instance v7, Lcom/android/launcher3/home/WorkspaceDragController$15;

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v7, v0, v1}, Lcom/android/launcher3/home/WorkspaceDragController$15;-><init>(Lcom/android/launcher3/home/WorkspaceDragController;I)V

    const-wide/16 v8, 0xc8

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1871
    .end local v28    # "snapScreen":I
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v31

    :goto_1
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .line 1872
    .local v26, "object":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    const/16 v24, 0x0

    .line 1873
    .local v24, "localInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    move-object/from16 p2, v0

    .end local p2    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    check-cast p2, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1875
    .restart local p2    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object/from16 v0, v26

    iget-object v6, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    move-object/from16 v0, v26

    iget-object v6, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    instance-of v6, v6, Lcom/android/launcher3/home/HotseatDragController;

    if-eqz v6, :cond_8

    .line 1877
    :cond_2
    move-object/from16 v0, v26

    iget-object v6, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    if-eqz v6, :cond_7

    .line 1878
    move-object/from16 v0, v26

    iget-object v6, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v6}, Lcom/android/launcher3/common/drag/DragView;->getSourceView()Landroid/view/View;

    move-result-object v29

    .line 1903
    .local v29, "view":Landroid/view/View;
    :goto_2
    if-eqz v24, :cond_3

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_3

    .line 1904
    move-object/from16 p2, v24

    .line 1907
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x1

    move-object/from16 v12, p0

    invoke-direct/range {v12 .. v17}, Lcom/android/launcher3/home/WorkspaceDragController;->findEmptyCellForExtraDragObject([IZZZZ)Z

    .line 1908
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v6, v7}, Lcom/android/launcher3/home/Workspace;->getIdForScreen(Lcom/android/launcher3/common/base/view/CellLayout;)J

    move-result-wide v10

    .line 1910
    move-object/from16 v0, v29

    instance-of v6, v0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    if-eqz v6, :cond_b

    .line 1911
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/launcher3/home/HomeController;->enterDragState(Z)V

    move-object/from16 v23, v29

    .line 1912
    check-cast v23, Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    .line 1913
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v0, v23

    invoke-virtual {v6, v0, v7}, Lcom/android/launcher3/home/HomeController;->canEnterResizeMode(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/common/base/view/CellLayout;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1914
    const/16 v19, 0x1

    .line 1916
    :cond_4
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Lcom/android/launcher3/home/HomeController;->removeHomeItem(Landroid/view/View;)V

    .line 1923
    :cond_5
    :goto_3
    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v25

    check-cast v25, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    .line 1924
    .local v25, "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    const/4 v6, 0x1

    move-object/from16 v0, v25

    iput-boolean v6, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 1926
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const-wide/16 v8, -0x64

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v12, 0x0

    aget v12, v7, v12

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v13, 0x1

    aget v13, v7, v13

    const/4 v14, -0x1

    move-object/from16 v7, p2

    invoke-virtual/range {v6 .. v14}, Lcom/android/launcher3/home/HomeController;->addOrMoveItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJIII)V

    .line 1929
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/LauncherAppState;->getCloneItemEnabled()Z

    move-result v6

    if-eqz v6, :cond_6

    move-object/from16 v0, p2

    instance-of v6, v0, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v6, :cond_6

    if-nez p4, :cond_6

    .line 1931
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    new-instance v8, Ljava/util/ArrayList;

    move-object/from16 v6, p2

    check-cast v6, Lcom/android/launcher3/folder/FolderInfo;

    iget-object v6, v6, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-direct {v8, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    invoke-virtual {v7, v8, v12, v13}, Lcom/android/launcher3/home/HomeController;->addFolderItemsToDb(Ljava/util/ArrayList;J)V

    .line 1933
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    if-eqz v6, :cond_6

    move-object/from16 v6, p2

    check-cast v6, Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v6}, Lcom/android/launcher3/folder/FolderInfo;->isLocked()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1934
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    move-object/from16 v6, p2

    check-cast v6, Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v7, v6}, Lcom/android/launcher3/folder/folderlock/FolderLock;->addLockedRecords(Lcom/android/launcher3/folder/FolderInfo;)V

    .line 1938
    :cond_6
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const-wide/16 v8, -0x64

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v12, 0x0

    aget v12, v7, v12

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v13, 0x1

    aget v13, v7, v13

    move-object/from16 v0, p2

    iget v14, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move-object/from16 v0, p2

    iget v15, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move-object/from16 v7, v29

    invoke-virtual/range {v6 .. v15}, Lcom/android/launcher3/home/HomeController;->addInScreen(Landroid/view/View;JJIIII)V

    goto/16 :goto_1

    .line 1880
    .end local v25    # "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    .end local v29    # "view":Landroid/view/View;
    :cond_7
    move-object/from16 v29, p3

    .restart local v29    # "view":Landroid/view/View;
    goto/16 :goto_2

    .line 1883
    .end local v29    # "view":Landroid/view/View;
    :cond_8
    move-object/from16 v0, p2

    iget v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    packed-switch v6, :pswitch_data_0

    .line 1899
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown item type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    iget v8, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1886
    :pswitch_0
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/LauncherAppState;->getCloneItemEnabled()Z

    move-result v6

    if-eqz v6, :cond_9

    if-nez p4, :cond_9

    move-object/from16 v6, p2

    check-cast v6, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 1887
    invoke-virtual {v6}, Lcom/android/launcher3/common/base/item/IconInfo;->makeCloneInfo()Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v24

    .line 1888
    :goto_4
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v6}, Lcom/android/launcher3/home/HomeController;->getBindController()Lcom/android/launcher3/home/HomeBindController;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v6, v24

    check-cast v6, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v7, v8, v6}, Lcom/android/launcher3/home/HomeBindController;->createShortcut(Landroid/view/ViewGroup;Lcom/android/launcher3/common/base/item/IconInfo;)Landroid/view/View;

    move-result-object v29

    .line 1890
    .restart local v29    # "view":Landroid/view/View;
    goto/16 :goto_2

    .end local v29    # "view":Landroid/view/View;
    :cond_9
    move-object/from16 v24, p2

    .line 1887
    goto :goto_4

    .line 1892
    :pswitch_1
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/LauncherAppState;->getCloneItemEnabled()Z

    move-result v6

    if-eqz v6, :cond_a

    move-object/from16 v6, p2

    check-cast v6, Lcom/android/launcher3/folder/FolderInfo;

    .line 1893
    invoke-virtual {v6}, Lcom/android/launcher3/folder/FolderInfo;->makeCloneInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v24

    .line 1894
    :goto_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v14, v24

    check-cast v14, Lcom/android/launcher3/folder/FolderInfo;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v12 .. v18}, Lcom/android/launcher3/folder/view/FolderIconView;->fromXml(Lcom/android/launcher3/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher3/folder/FolderInfo;Lcom/android/launcher3/common/base/controller/ControllerBase;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;I)Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v29

    .line 1897
    .restart local v29    # "view":Landroid/view/View;
    goto/16 :goto_2

    .end local v29    # "view":Landroid/view/View;
    :cond_a
    move-object/from16 v24, p2

    .line 1893
    goto :goto_5

    .line 1918
    .restart local v29    # "view":Landroid/view/View;
    :cond_b
    if-eqz p4, :cond_5

    .line 1919
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Lcom/android/launcher3/home/HomeController;->removeHomeItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto/16 :goto_3

    .line 1943
    .end local v24    # "localInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v26    # "object":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .end local v29    # "view":Landroid/view/View;
    :cond_c
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v6, v10, v11}, Lcom/android/launcher3/home/Workspace;->getPageIndexForScreenId(J)I

    move-result v28

    .line 1944
    .restart local v28    # "snapScreen":I
    move/from16 v22, v19

    .line 1945
    .local v22, "enterResizeMode":Z
    move-object/from16 v30, v23

    .line 1946
    .local v30, "widgetHostView":Lcom/android/launcher3/home/LauncherAppWidgetHostView;
    new-instance v27, Lcom/android/launcher3/home/WorkspaceDragController$16;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move/from16 v2, v28

    move/from16 v3, v22

    move-object/from16 v4, v30

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/launcher3/home/WorkspaceDragController$16;-><init>(Lcom/android/launcher3/home/WorkspaceDragController;IZLcom/android/launcher3/home/LauncherAppWidgetHostView;)V

    .line 1958
    .local v27, "onComplete":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    const/16 v7, 0xc8

    move-object/from16 v0, v27

    invoke-virtual {v6, v0, v7}, Lcom/android/launcher3/home/Workspace;->removeExtraEmptyScreenDelayed(Ljava/lang/Runnable;I)V

    goto/16 :goto_0

    .line 1883
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private checkSingleInstanceAppWidget(Ljava/util/HashMap;Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Z
    .locals 8
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;>;",
            "Ljava/lang/String;",
            "Lcom/android/launcher3/common/compat/UserHandleCompat;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/util/LongSparseArray<Ljava/lang/Integer;>;>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1644
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1645
    iget-object v3, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v3}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-result-object v1

    .line 1646
    .local v1, "userManager":Lcom/android/launcher3/common/compat/UserManagerCompat;
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/LongSparseArray;

    .line 1647
    .local v2, "userMap":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    invoke-virtual {v1, p3}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/common/compat/UserHandleCompat;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1648
    .local v0, "profileId":Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v3, v4, :cond_0

    move v3, v4

    .line 1650
    .end local v0    # "profileId":Ljava/lang/Long;
    .end local v1    # "userManager":Lcom/android/launcher3/common/compat/UserManagerCompat;
    .end local v2    # "userMap":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    :goto_0
    return v3

    .restart local v0    # "profileId":Ljava/lang/Long;
    .restart local v1    # "userManager":Lcom/android/launcher3/common/compat/UserManagerCompat;
    .restart local v2    # "userMap":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    :cond_0
    move v3, v5

    .line 1648
    goto :goto_0

    .end local v0    # "profileId":Ljava/lang/Long;
    .end local v1    # "userManager":Lcom/android/launcher3/common/compat/UserManagerCompat;
    .end local v2    # "userMap":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    :cond_1
    move v3, v5

    .line 1650
    goto :goto_0
.end method

.method private findEmptyCellForExtraDragObject([IZZZZ)Z
    .locals 15
    .param p1, "targetCell"    # [I
    .param p2, "canceled"    # Z
    .param p3, "cancelDropFolder"    # Z
    .param p4, "addEmptyScreen"    # Z
    .param p5, "findTotalPage"    # Z

    .prologue
    .line 1580
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/Workspace;->getIdForScreen(Lcom/android/launcher3/common/base/view/CellLayout;)J

    move-result-wide v12

    .line 1581
    .local v12, "screenId":J
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0, v12, v13}, Lcom/android/launcher3/home/Workspace;->getPageIndexForScreenId(J)I

    move-result v11

    .line 1584
    .local v11, "screen":I
    if-eqz p5, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->getPageCount()I

    move-result v14

    .line 1591
    .local v14, "totalPage":I
    :goto_0
    move v10, v11

    .local v10, "i":I
    :goto_1
    if-ge v10, v14, :cond_7

    .line 1592
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0, v10}, Lcom/android/launcher3/home/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 1593
    .local v8, "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    if-nez v8, :cond_2

    .line 1591
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1584
    .end local v8    # "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v10    # "i":I
    .end local v14    # "totalPage":I
    :cond_1
    add-int/lit8 v14, v11, 0x1

    goto :goto_0

    .line 1597
    .restart local v8    # "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    .restart local v10    # "i":I
    .restart local v14    # "totalPage":I
    :cond_2
    invoke-virtual {v8}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountX()I

    move-result v3

    .line 1598
    .local v3, "countX":I
    invoke-virtual {v8}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountY()I

    move-result v4

    .line 1599
    .local v4, "countY":I
    invoke-virtual {v8}, Lcom/android/launcher3/common/base/view/CellLayout;->getOccupied()[[Z

    move-result-object v5

    .line 1600
    .local v5, "occupied":[[Z
    if-ne v10, v11, :cond_5

    if-eqz p2, :cond_3

    if-eqz p3, :cond_5

    .line 1601
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v1, 0x0

    aget v6, v0, v1

    .line 1602
    .local v6, "prevTargetX":I
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v1, 0x1

    aget v7, v0, v1

    .line 1608
    .local v7, "prevTargetY":I
    :goto_2
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0, v10}, Lcom/android/launcher3/home/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v12

    .line 1609
    const-wide/16 v0, -0xc9

    cmp-long v0, v12, v0

    if-nez v0, :cond_4

    .line 1610
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->commitExtraEmptyScreen()J

    .line 1613
    :cond_4
    const/4 v1, 0x1

    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v7}, Lcom/android/launcher3/Utilities;->findVacantCellToRightBottom([IIIII[[ZII)Z

    move-result v9

    .line 1614
    .local v9, "foundCell":Z
    if-eqz v9, :cond_6

    .line 1615
    iput-object v8, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    .line 1616
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-direct {p0, v0}, Lcom/android/launcher3/home/WorkspaceDragController;->setCurrentDropLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    .line 1617
    const/4 v0, 0x1

    .line 1639
    .end local v3    # "countX":I
    .end local v4    # "countY":I
    .end local v5    # "occupied":[[Z
    .end local v6    # "prevTargetX":I
    .end local v7    # "prevTargetY":I
    .end local v8    # "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v9    # "foundCell":Z
    :goto_3
    return v0

    .line 1604
    .restart local v3    # "countX":I
    .restart local v4    # "countY":I
    .restart local v5    # "occupied":[[Z
    .restart local v8    # "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    :cond_5
    const/4 v6, 0x0

    .line 1605
    .restart local v6    # "prevTargetX":I
    const/4 v7, 0x0

    .restart local v7    # "prevTargetY":I
    goto :goto_2

    .line 1620
    .restart local v9    # "foundCell":Z
    :cond_6
    const/4 v1, 0x1

    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v7}, Lcom/android/launcher3/Utilities;->findVacantCellToLeftTop([IIIII[[ZII)Z

    move-result v9

    .line 1621
    if-eqz v9, :cond_0

    .line 1622
    iput-object v8, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    .line 1623
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-direct {p0, v0}, Lcom/android/launcher3/home/WorkspaceDragController;->setCurrentDropLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    .line 1624
    const/4 v0, 0x1

    goto :goto_3

    .line 1628
    .end local v3    # "countX":I
    .end local v4    # "countY":I
    .end local v5    # "occupied":[[Z
    .end local v6    # "prevTargetX":I
    .end local v7    # "prevTargetY":I
    .end local v8    # "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v9    # "foundCell":Z
    :cond_7
    if-eqz p4, :cond_9

    .line 1629
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->hasExtraEmptyScreen()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1630
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->addExtraEmptyScreen()Z

    .line 1632
    :cond_8
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->commitExtraEmptyScreen()J

    move-result-wide v12

    .line 1633
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0, v12, v13}, Lcom/android/launcher3/home/Workspace;->getScreenWithId(J)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    .line 1634
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-direct {p0, v0}, Lcom/android/launcher3/home/WorkspaceDragController;->setCurrentDropLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    .line 1635
    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v1, p1, v0

    .line 1636
    const/4 v0, 0x1

    const/4 v1, 0x0

    aput v1, p1, v0

    .line 1639
    :cond_9
    const/4 v0, 0x0

    goto :goto_3
.end method

.method private findEmptySpace(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
    .locals 12
    .param p1, "d"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .prologue
    .line 1532
    iget-object v7, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v7}, Lcom/android/launcher3/home/Workspace;->hasExtraEmptyScreen()Z

    move-result v0

    .line 1533
    .local v0, "checkExtra":Z
    if-eqz v0, :cond_1

    iget-object v7, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    .line 1534
    invoke-virtual {v7}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v7

    add-int/lit8 v3, v7, -0x1

    .line 1541
    .local v3, "count":I
    :goto_0
    iget-object v5, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v5, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1542
    .local v5, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-object v7, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-object v10, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v7, v10}, Lcom/android/launcher3/home/Workspace;->getIdForScreen(Lcom/android/launcher3/common/base/view/CellLayout;)J

    move-result-wide v8

    .line 1543
    .local v8, "screenId":J
    iget-object v7, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v7, v8, v9}, Lcom/android/launcher3/home/Workspace;->getPageIndexForScreenId(J)I

    move-result v6

    .line 1544
    .local v6, "screen":I
    const/4 v1, 0x1

    .line 1546
    .local v1, "checkToEnd":Z
    add-int/lit8 v4, v6, 0x1

    .line 1548
    .local v4, "i":I
    :goto_1
    if-eqz v1, :cond_0

    if-lt v4, v3, :cond_0

    .line 1549
    const/4 v1, 0x0

    .line 1550
    const/4 v4, 0x0

    .line 1553
    :cond_0
    if-nez v1, :cond_3

    if-lt v4, v6, :cond_3

    .line 1554
    if-nez v0, :cond_2

    .line 1576
    :goto_2
    return-void

    .line 1534
    .end local v1    # "checkToEnd":Z
    .end local v3    # "count":I
    .end local v4    # "i":I
    .end local v5    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v6    # "screen":I
    .end local v8    # "screenId":J
    :cond_1
    iget-object v7, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    .line 1535
    invoke-virtual {v7}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v3

    goto :goto_0

    .line 1557
    .restart local v1    # "checkToEnd":Z
    .restart local v3    # "count":I
    .restart local v4    # "i":I
    .restart local v5    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .restart local v6    # "screen":I
    .restart local v8    # "screenId":J
    :cond_2
    move v4, v3

    .line 1558
    const/4 v0, 0x0

    .line 1561
    :cond_3
    iget-object v7, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v7, v4}, Lcom/android/launcher3/home/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v8

    .line 1562
    iget-object v7, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v7, v8, v9}, Lcom/android/launcher3/home/Workspace;->getScreenWithId(J)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v2

    .line 1563
    .local v2, "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    if-eqz v2, :cond_5

    iget-object v7, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    iget v10, v5, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    iget v11, v5, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    invoke-virtual {v2, v7, v10, v11}, Lcom/android/launcher3/common/base/view/CellLayout;->findCellForSpan([III)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1564
    iput-object v2, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    .line 1565
    iget-object v7, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-direct {p0, v7}, Lcom/android/launcher3/home/WorkspaceDragController;->setCurrentDropLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    .line 1566
    const-wide/16 v10, -0xc9

    cmp-long v7, v8, v10

    if-nez v7, :cond_4

    .line 1567
    iget-object v7, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v7}, Lcom/android/launcher3/home/Workspace;->commitExtraEmptyScreen()J

    .line 1570
    :cond_4
    iget-object v7, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v7}, Lcom/android/launcher3/home/HomeController;->showOutOfSpaceMessage()V

    goto :goto_2

    .line 1574
    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 1575
    goto :goto_1
.end method

.method private getCurrentDropLayout()Lcom/android/launcher3/common/base/view/CellLayout;
    .locals 2

    .prologue
    .line 1386
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->getNextPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    return-object v0
.end method

.method private getFinalPositionForDropAnimation([I[FLcom/android/launcher3/common/drag/DragView;Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/base/item/ItemInfo;[IZ)V
    .locals 10
    .param p1, "loc"    # [I
    .param p2, "scaleXY"    # [F
    .param p3, "dragView"    # Lcom/android/launcher3/common/drag/DragView;
    .param p4, "layout"    # Lcom/android/launcher3/common/base/view/CellLayout;
    .param p5, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p6, "targetCell"    # [I
    .param p7, "scale"    # Z

    .prologue
    .line 1498
    iget v4, p5, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    .line 1499
    .local v4, "spanX":I
    iget v5, p5, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    .line 1501
    .local v5, "spanY":I
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    const/4 v1, 0x0

    aget v2, p6, v1

    const/4 v1, 0x1

    aget v3, p6, v1

    move-object v1, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/home/Workspace;->estimateItemPosition(Lcom/android/launcher3/common/base/view/CellLayout;IIII)Landroid/graphics/Rect;

    move-result-object v9

    .line 1502
    .local v9, "r":Landroid/graphics/Rect;
    const/4 v0, 0x0

    iget v1, v9, Landroid/graphics/Rect;->left:I

    aput v1, p1, v0

    .line 1503
    const/4 v0, 0x1

    iget v1, v9, Landroid/graphics/Rect;->top:I

    aput v1, p1, v0

    .line 1505
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    const/4 v1, 0x1

    invoke-virtual {v0, p4, p1, v1}, Lcom/android/launcher3/common/view/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[IZ)F

    move-result v6

    .line 1509
    .local v6, "cellLayoutScale":F
    if-eqz p7, :cond_0

    .line 1510
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-virtual {p3}, Lcom/android/launcher3/common/drag/DragView;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v7, v0, v1

    .line 1511
    .local v7, "dragViewScaleX":F
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-virtual {p3}, Lcom/android/launcher3/common/drag/DragView;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v8, v0, v1

    .line 1519
    .local v8, "dragViewScaleY":F
    :goto_0
    instance-of v0, p5, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    if-eqz v0, :cond_1

    .line 1520
    const/4 v0, 0x0

    aget v1, p1, v0

    int-to-float v1, v1

    invoke-virtual {p3}, Lcom/android/launcher3/common/drag/DragView;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v6

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    aput v1, p1, v0

    .line 1521
    const/4 v0, 0x1

    aget v1, p1, v0

    int-to-float v1, v1

    invoke-virtual {p4}, Lcom/android/launcher3/common/base/view/CellLayout;->getContentTop()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v6

    add-float/2addr v1, v2

    float-to-int v1, v1

    aput v1, p1, v0

    .line 1527
    :goto_1
    const/4 v0, 0x0

    mul-float v1, v7, v6

    aput v1, p2, v0

    .line 1528
    const/4 v0, 0x1

    mul-float v1, v8, v6

    aput v1, p2, v0

    .line 1529
    return-void

    .line 1513
    .end local v7    # "dragViewScaleX":F
    .end local v8    # "dragViewScaleY":F
    :cond_0
    const/high16 v7, 0x3f800000    # 1.0f

    .line 1514
    .restart local v7    # "dragViewScaleX":F
    const/high16 v8, 0x3f800000    # 1.0f

    .restart local v8    # "dragViewScaleY":F
    goto :goto_0

    .line 1523
    :cond_1
    const/4 v0, 0x0

    aget v1, p1, v0

    int-to-float v1, v1

    invoke-virtual {p3}, Lcom/android/launcher3/common/drag/DragView;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v6

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    aput v1, p1, v0

    .line 1524
    const/4 v0, 0x1

    aget v1, p1, v0

    int-to-float v1, v1

    invoke-virtual {p3}, Lcom/android/launcher3/common/drag/DragView;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v6

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    aput v1, p1, v0

    goto :goto_1
.end method

.method private isExistSingleInstanceAppWidget(Lcom/android/launcher3/common/base/item/PendingAddItemInfo;)Z
    .locals 12
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/PendingAddItemInfo;

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 1654
    sget-object v8, Lcom/android/launcher3/home/HomeController;->sSingleInstanceAppWidgetPackageList:Ljava/util/HashMap;

    iget-object v9, p1, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    .line 1655
    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p1, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 1654
    invoke-direct {p0, v8, v9, v10}, Lcom/android/launcher3/home/WorkspaceDragController;->checkSingleInstanceAppWidget(Ljava/util/HashMap;Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Z

    move-result v1

    .line 1656
    .local v1, "isExistPackageListWidget":Z
    sget-object v8, Lcom/android/launcher3/home/HomeController;->sSingleInstanceAppWidgetList:Ljava/util/HashMap;

    iget-object v9, p1, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    .line 1657
    invoke-virtual {v9}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p1, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 1656
    invoke-direct {p0, v8, v9, v10}, Lcom/android/launcher3/home/WorkspaceDragController;->checkSingleInstanceAppWidget(Ljava/util/HashMap;Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Z

    move-result v0

    .line 1659
    .local v0, "isExistComponentListWidget":Z
    if-nez v1, :cond_0

    if-eqz v0, :cond_2

    .line 1660
    :cond_0
    iget-object v8, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v8}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c0001

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 1661
    .local v2, "isLightTheme":Z
    if-eqz v2, :cond_1

    .line 1662
    iget-object v8, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v9, 0x1030132

    invoke-virtual {v8, v9}, Lcom/android/launcher3/Launcher;->setTheme(I)V

    .line 1667
    :cond_1
    iget-object v8, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v8}, Lcom/android/launcher3/Launcher;->getLauncherModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher3/LauncherModel;->getHomeLoader()Lcom/android/launcher3/home/HomeLoader;

    move-result-object v8

    invoke-virtual {v8, p1}, Lcom/android/launcher3/home/HomeLoader;->checkDuplicatedSingleInstanceWidgetExist(Lcom/android/launcher3/common/base/item/PendingAddItemInfo;)Ljava/lang/String;

    move-result-object v5

    .line 1669
    .local v5, "widgetLabel":Ljava/lang/String;
    if-eqz v5, :cond_3

    if-eqz v1, :cond_3

    .line 1670
    iget-object v8, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v9, 0x7f080025

    new-array v10, v7, [Ljava/lang/Object;

    aput-object v5, v10, v6

    invoke-virtual {v8, v9, v10}, Lcom/android/launcher3/Launcher;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1675
    .local v4, "popupSting":Ljava/lang/String;
    :goto_0
    iget-object v6, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v6, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 1676
    .local v3, "onlyOneToast":Landroid/widget/Toast;
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    move v6, v7

    .line 1679
    .end local v2    # "isLightTheme":Z
    .end local v3    # "onlyOneToast":Landroid/widget/Toast;
    .end local v4    # "popupSting":Ljava/lang/String;
    .end local v5    # "widgetLabel":Ljava/lang/String;
    :cond_2
    return v6

    .line 1672
    .restart local v2    # "isLightTheme":Z
    .restart local v5    # "widgetLabel":Ljava/lang/String;
    :cond_3
    iget-object v8, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v9, 0x7f08006a

    new-array v10, v7, [Ljava/lang/Object;

    iget-object v11, p1, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->mLabel:Ljava/lang/String;

    aput-object v11, v10, v6

    invoke-virtual {v8, v9, v10}, Lcom/android/launcher3/Launcher;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "popupSting":Ljava/lang/String;
    goto :goto_0
.end method

.method private onDropExternal(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
    .locals 6
    .param p1, "d"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .prologue
    .line 493
    iget-object v0, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 495
    .local v0, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    instance-of v1, v0, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;

    if-eqz v1, :cond_1

    .line 496
    invoke-direct {p0, p1}, Lcom/android/launcher3/home/WorkspaceDragController;->onDropExternalFromWidget(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V

    .line 501
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-object v4, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v1, v4}, Lcom/android/launcher3/home/Workspace;->getIdForScreen(Lcom/android/launcher3/common/base/view/CellLayout;)J

    move-result-wide v2

    .line 502
    .local v2, "screenId":J
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->getDefaultPage()I

    move-result v1

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 503
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/android/launcher3/home/HomeController;->notifyCapture(Z)V

    .line 505
    :cond_0
    return-void

    .line 498
    .end local v2    # "screenId":J
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/launcher3/home/WorkspaceDragController;->onDropExternalFromOther(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V

    goto :goto_0
.end method

.method private onDropExternalFromOther(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
    .locals 42
    .param p1, "d"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .prologue
    .line 644
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 645
    .local v34, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object/from16 v0, v34

    instance-of v5, v0, Lcom/android/launcher3/common/base/item/IconInfo;

    if-nez v5, :cond_0

    move-object/from16 v0, v34

    instance-of v5, v0, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v5, :cond_1

    .line 646
    :cond_0
    invoke-virtual/range {v34 .. v34}, Lcom/android/launcher3/common/base/item/ItemInfo;->isAppOrShortcutType()Z

    move-result v5

    if-nez v5, :cond_2

    .line 821
    :cond_1
    :goto_0
    return-void

    .line 649
    :cond_2
    new-instance v22, Lcom/android/launcher3/home/WorkspaceDragController$8;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher3/home/WorkspaceDragController$8;-><init>(Lcom/android/launcher3/home/WorkspaceDragController;)V

    .line 656
    .local v22, "exitDragStateRunnable":Ljava/lang/Runnable;
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v0, v5, Lcom/android/launcher3/folder/FolderInfo;

    move/from16 v35, v0

    .line 657
    .local v35, "isFolderDrop":Z
    const/16 v26, 0x0

    .line 658
    .local v26, "cancelDropFolder":Z
    invoke-virtual/range {v34 .. v34}, Lcom/android/launcher3/common/base/item/ItemInfo;->isContainApps()Z

    move-result v5

    if-nez v5, :cond_3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, v34

    iget-wide v8, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    .line 659
    invoke-virtual {v5, v8, v9}, Lcom/android/launcher3/home/HomeController;->getHomescreenIconByItemId(J)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_3

    const/16 v36, 0x1

    .line 665
    .local v36, "isFromHomeFolder":Z
    :goto_1
    move-object/from16 v0, v34

    iget v5, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    packed-switch v5, :pswitch_data_0

    .line 681
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown item type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v34

    iget v8, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 659
    .end local v36    # "isFromHomeFolder":Z
    :cond_3
    const/16 v36, 0x0

    goto :goto_1

    .line 668
    .restart local v36    # "isFromHomeFolder":Z
    :pswitch_0
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherAppState;->getCloneItemEnabled()Z

    move-result v5

    if-eqz v5, :cond_8

    if-nez v36, :cond_8

    move-object/from16 v5, v34

    check-cast v5, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 669
    invoke-virtual {v5}, Lcom/android/launcher3/common/base/item/IconInfo;->makeCloneInfo()Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v37

    .line 670
    .local v37, "localInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v5}, Lcom/android/launcher3/home/HomeController;->getBindController()Lcom/android/launcher3/home/HomeBindController;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v5, v37

    check-cast v5, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v7, v8, v5}, Lcom/android/launcher3/home/HomeBindController;->createShortcut(Landroid/view/ViewGroup;Lcom/android/launcher3/common/base/item/IconInfo;)Landroid/view/View;

    move-result-object v41

    .line 684
    .local v41, "view":Landroid/view/View;
    :goto_3
    move-object/from16 v0, v34

    move-object/from16 v1, v37

    if-eq v0, v1, :cond_4

    .line 685
    move-object/from16 v34, v37

    .line 688
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    const/4 v7, 0x0

    aget v5, v5, v7

    float-to-int v5, v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    const/4 v8, 0x1

    aget v7, v7, v8

    float-to-int v6, v7

    move-object/from16 v0, v34

    iget v7, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move-object/from16 v0, v34

    iget v8, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher3/common/base/view/CellLayout;->findNearestArea(IIII[I)[I

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    .line 691
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    move-object/from16 v0, p1

    invoke-virtual {v5, v7, v8, v0, v9}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->acceptDrop([F[ILcom/android/launcher3/common/drag/DropTarget$DragObject;Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;)Z

    move-result v33

    .line 693
    .local v33, "foundCell":Z
    if-nez v33, :cond_c

    .line 694
    new-instance v4, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v9}, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;-><init>(IIIILjava/util/ArrayList;)V

    .line 695
    .local v4, "spanInfo":Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mReorderController:Lcom/android/launcher3/home/WorkspaceReorderController;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    float-to-int v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    const/4 v8, 0x1

    aget v7, v7, v8

    float-to-int v7, v7

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v11, 0x0

    const/4 v12, 0x3

    move-object v8, v4

    invoke-virtual/range {v5 .. v12}, Lcom/android/launcher3/home/WorkspaceReorderController;->performReorder(IILcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;Landroid/view/View;[I[II)[I

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    .line 699
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v7, 0x0

    aget v5, v5, v7

    if-ltz v5, :cond_a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v7, 0x1

    aget v5, v5, v7

    if-ltz v5, :cond_a

    const/16 v33, 0x1

    .line 701
    :goto_4
    if-nez v33, :cond_c

    .line 702
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportChinaDA()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 703
    if-eqz v36, :cond_5

    .line 704
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lcom/android/launcher3/home/WorkspaceDragController;->restoreExtraDropItems(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V

    .line 706
    :cond_5
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 707
    .local v32, "finalAddItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 708
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    if-eqz v5, :cond_6

    .line 709
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 711
    :cond_6
    new-instance v24, Lcom/android/launcher3/home/WorkspaceDragController$9;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v32

    move/from16 v3, v36

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher3/home/WorkspaceDragController$9;-><init>(Lcom/android/launcher3/home/WorkspaceDragController;Ljava/util/ArrayList;Z)V

    .line 717
    .local v24, "addItemRunnable":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-static {v5, v0}, Lcom/android/launcher3/home/AddItemOnNewPageDialog;->createAndShow(Landroid/app/FragmentManager;Ljava/lang/Runnable;)V

    .line 719
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v5}, Lcom/android/launcher3/common/drag/DragView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 720
    const/4 v5, 0x0

    move-object/from16 v0, p1

    iput-boolean v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    .line 721
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v5, v7}, Lcom/android/launcher3/common/view/DragLayer;->removeView(Landroid/view/View;)V

    .line 723
    :cond_7
    invoke-interface/range {v22 .. v22}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    .end local v4    # "spanInfo":Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;
    .end local v24    # "addItemRunnable":Ljava/lang/Runnable;
    .end local v32    # "finalAddItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    .end local v33    # "foundCell":Z
    .end local v37    # "localInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v41    # "view":Landroid/view/View;
    :cond_8
    move-object/from16 v37, v34

    .line 669
    goto/16 :goto_2

    .line 673
    :pswitch_1
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherAppState;->getCloneItemEnabled()Z

    move-result v5

    if-eqz v5, :cond_9

    move-object/from16 v5, v34

    check-cast v5, Lcom/android/launcher3/folder/FolderInfo;

    .line 674
    invoke-virtual {v5}, Lcom/android/launcher3/folder/FolderInfo;->makeCloneInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v37

    .line 676
    .restart local v37    # "localInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v6, v37

    check-cast v6, Lcom/android/launcher3/folder/FolderInfo;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lcom/android/launcher3/folder/view/FolderIconView;->fromXml(Lcom/android/launcher3/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher3/folder/FolderInfo;Lcom/android/launcher3/common/base/controller/ControllerBase;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;I)Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v41

    .line 679
    .restart local v41    # "view":Landroid/view/View;
    goto/16 :goto_3

    .end local v37    # "localInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v41    # "view":Landroid/view/View;
    :cond_9
    move-object/from16 v37, v34

    .line 674
    goto :goto_5

    .line 699
    .restart local v4    # "spanInfo":Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;
    .restart local v33    # "foundCell":Z
    .restart local v37    # "localInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    .restart local v41    # "view":Landroid/view/View;
    :cond_a
    const/16 v33, 0x0

    goto/16 :goto_4

    .line 726
    :cond_b
    invoke-direct/range {p0 .. p1}, Lcom/android/launcher3/home/WorkspaceDragController;->findEmptySpace(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V

    .line 730
    .end local v4    # "spanInfo":Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;
    :cond_c
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->postAnimationRunnable:Ljava/lang/Runnable;

    .line 732
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v9, 0x0

    move-object/from16 v8, v41

    move-object/from16 v10, p1

    invoke-virtual/range {v5 .. v10}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->onDropCreateUserFolder([F[ILandroid/view/View;Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/drag/DropTarget$DragObject;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 733
    if-nez v35, :cond_d

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getMultiSelectManager()Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->hasFolderItem()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 736
    :cond_d
    const/4 v10, 0x1

    .line 738
    .end local v26    # "cancelDropFolder":Z
    .local v10, "cancelDropFolder":Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    move-object/from16 v0, p1

    invoke-virtual {v5, v7, v8, v0}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->onDropAddToExistingFolder([F[ILcom/android/launcher3/common/drag/DropTarget$DragObject;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 739
    if-nez v35, :cond_e

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getMultiSelectManager()Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->hasFolderItem()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 742
    :cond_e
    const/4 v10, 0x1

    .line 745
    :cond_f
    if-eqz v10, :cond_11

    .line 746
    if-nez v35, :cond_10

    .line 747
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    if-eqz v5, :cond_1

    .line 748
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x1

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/android/launcher3/home/WorkspaceDragController;->onDropExtraObjects(Ljava/util/ArrayList;Ljava/lang/Runnable;ZZZZ)V

    goto/16 :goto_0

    .line 752
    :cond_10
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    move-object/from16 v0, p1

    iget-boolean v13, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelled:Z

    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelDropFolder:Z

    const/4 v15, 0x1

    const/16 v16, 0x1

    move-object/from16 v11, p0

    invoke-direct/range {v11 .. v16}, Lcom/android/launcher3/home/WorkspaceDragController;->findEmptyCellForExtraDragObject([IZZZZ)Z

    .line 755
    :cond_11
    const-wide/16 v30, -0x64

    .line 756
    .local v30, "container":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v5, v7}, Lcom/android/launcher3/home/Workspace;->getIdForScreen(Lcom/android/launcher3/common/base/view/CellLayout;)J

    move-result-wide v16

    .line 758
    .local v16, "screenId":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v7}, Lcom/android/launcher3/home/Workspace;->getNextPage()I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/android/launcher3/home/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v8

    cmp-long v5, v8, v16

    if-eqz v5, :cond_12

    .line 759
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-wide/from16 v0, v16

    invoke-virtual {v5, v0, v1}, Lcom/android/launcher3/home/Workspace;->getPageIndexForScreenId(J)I

    move-result v40

    .line 760
    .local v40, "snapScreen":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move/from16 v0, v40

    invoke-virtual {v5, v0}, Lcom/android/launcher3/home/Workspace;->snapToPage(I)V

    .line 765
    .end local v40    # "snapScreen":I
    :cond_12
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const-wide/16 v14, -0x64

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v7, 0x0

    aget v18, v5, v7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v7, 0x1

    aget v19, v5, v7

    const/16 v20, -0x1

    move-object/from16 v13, v34

    invoke-virtual/range {v12 .. v20}, Lcom/android/launcher3/home/HomeController;->addOrMoveItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJIII)V

    .line 767
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherAppState;->getCloneItemEnabled()Z

    move-result v5

    if-eqz v5, :cond_13

    move-object/from16 v0, v34

    instance-of v5, v0, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v5, :cond_13

    .line 768
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    new-instance v8, Ljava/util/ArrayList;

    move-object/from16 v5, v34

    check-cast v5, Lcom/android/launcher3/folder/FolderInfo;

    iget-object v5, v5, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-direct {v8, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, v34

    iget-wide v12, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    invoke-virtual {v7, v8, v12, v13}, Lcom/android/launcher3/home/HomeController;->addFolderItemsToDb(Ljava/util/ArrayList;J)V

    .line 769
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    if-eqz v5, :cond_13

    move-object/from16 v5, v34

    check-cast v5, Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v5}, Lcom/android/launcher3/folder/FolderInfo;->isLocked()Z

    move-result v5

    if-eqz v5, :cond_13

    .line 770
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    move-object/from16 v5, v34

    check-cast v5, Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v7, v5}, Lcom/android/launcher3/folder/folderlock/FolderLock;->addLockedRecords(Lcom/android/launcher3/folder/FolderInfo;)V

    .line 774
    :cond_13
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const-wide/16 v14, -0x64

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v7, 0x0

    aget v18, v5, v7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v7, 0x1

    aget v19, v5, v7

    move-object/from16 v0, v34

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move/from16 v20, v0

    move-object/from16 v0, v34

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move/from16 v21, v0

    move-object/from16 v13, v41

    invoke-virtual/range {v12 .. v21}, Lcom/android/launcher3/home/HomeController;->addInScreen(Landroid/view/View;JJIIII)V

    .line 777
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v11, 0x1

    aget v9, v9, v11

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v7, v8, v9}, Lcom/android/launcher3/home/WorkspaceDragController;->sayDragTalkBack(ZZII)V

    .line 779
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v0, v41

    invoke-virtual {v5, v0}, Lcom/android/launcher3/common/base/view/CellLayout;->onDropChild(Landroid/view/View;)V

    .line 780
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v5}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v5

    move-object/from16 v0, v41

    invoke-virtual {v5, v0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->measureChild(Landroid/view/View;)V

    .line 782
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    if-eqz v5, :cond_14

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->isAppsStage()Z

    move-result v5

    if-nez v5, :cond_14

    .line 783
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    move-object/from16 v19, v0

    const/16 v21, 0x12c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v23, v0

    move-object/from16 v20, v41

    invoke-virtual/range {v18 .. v23}, Lcom/android/launcher3/common/view/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/common/drag/DragView;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;)V

    .line 790
    :goto_7
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    if-eqz v5, :cond_1

    .line 791
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v5

    iget-object v5, v5, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v5}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v27

    .line 792
    .local v27, "cellX":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v5

    iget-object v5, v5, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v5}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v28

    .line 793
    .local v28, "cellY":I
    mul-int v5, v27, v28

    add-int/lit8 v38, v5, -0x1

    .line 795
    .local v38, "maxItemsPerPage":I
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move/from16 v0, v38

    if-lt v0, v5, :cond_15

    .line 796
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x1

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/android/launcher3/home/WorkspaceDragController;->onDropExtraObjects(Ljava/util/ArrayList;Ljava/lang/Runnable;ZZZZ)V

    goto/16 :goto_0

    .line 787
    .end local v27    # "cellX":I
    .end local v28    # "cellY":I
    .end local v38    # "maxItemsPerPage":I
    :cond_14
    const/4 v5, 0x0

    move-object/from16 v0, p1

    iput-boolean v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    goto :goto_7

    .line 798
    .restart local v27    # "cellX":I
    .restart local v28    # "cellY":I
    .restart local v38    # "maxItemsPerPage":I
    :cond_15
    move/from16 v25, v10

    .line 799
    .local v25, "cancelDrop":Z
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 800
    .local v6, "firstObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    new-instance v39, Ljava/util/ArrayList;

    invoke-direct/range {v39 .. v39}, Ljava/util/ArrayList;-><init>()V

    .line 802
    .local v39, "secondObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_17

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .line 803
    .local v29, "dragObj":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    move/from16 v0, v38

    if-le v0, v7, :cond_16

    .line 804
    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 806
    :cond_16
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    move-object/from16 v0, v29

    iget-object v8, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v7, v8}, Lcom/android/launcher3/common/view/DragLayer;->removeView(Landroid/view/View;)V

    .line 807
    move-object/from16 v0, v39

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 811
    .end local v29    # "dragObj":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    :cond_17
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x1

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/android/launcher3/home/WorkspaceDragController;->onDropExtraObjects(Ljava/util/ArrayList;Ljava/lang/Runnable;ZZZZ)V

    .line 813
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    new-instance v7, Lcom/android/launcher3/home/WorkspaceDragController$10;

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move/from16 v2, v25

    invoke-direct {v7, v0, v1, v2}, Lcom/android/launcher3/home/WorkspaceDragController$10;-><init>(Lcom/android/launcher3/home/WorkspaceDragController;Ljava/util/ArrayList;Z)V

    const-wide/16 v8, 0x3e8

    invoke-virtual {v5, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .end local v6    # "firstObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    .end local v10    # "cancelDropFolder":Z
    .end local v16    # "screenId":J
    .end local v25    # "cancelDrop":Z
    .end local v27    # "cellX":I
    .end local v28    # "cellY":I
    .end local v30    # "container":J
    .end local v38    # "maxItemsPerPage":I
    .end local v39    # "secondObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    .restart local v26    # "cancelDropFolder":Z
    :cond_18
    move/from16 v10, v26

    .end local v26    # "cancelDropFolder":Z
    .restart local v10    # "cancelDropFolder":Z
    goto/16 :goto_6

    .line 665
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onDropExternalFromWidget(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
    .locals 45
    .param p1, "d"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .prologue
    .line 508
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;

    .line 510
    .local v20, "info":Lcom/android/launcher3/common/base/item/PendingAddItemInfo;
    const/16 v38, 0x1

    .line 511
    .local v38, "findNearestVacantCell":Z
    move-object/from16 v0, v20

    iget v6, v0, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->itemType:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_6

    .line 512
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    float-to-int v7, v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    const/4 v9, 0x1

    aget v8, v8, v9

    float-to-int v8, v8

    move-object/from16 v0, v20

    iget v9, v0, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->spanX:I

    move-object/from16 v0, v20

    iget v10, v0, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->spanY:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    invoke-virtual/range {v6 .. v11}, Lcom/android/launcher3/common/base/view/CellLayout;->findNearestArea(IIII[I)[I

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    .line 515
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    const/4 v9, 0x1

    aget v8, v8, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/launcher3/common/base/view/CellLayout;->getDistanceFromCell(FF[I)F

    move-result v10

    .line 518
    .local v10, "distance":F
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v7, Lcom/android/launcher3/common/base/item/ItemInfo;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v11, 0x1

    invoke-virtual/range {v6 .. v11}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->willCreateUserFolder(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;[IFZ)Z

    move-result v6

    if-nez v6, :cond_0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v6, Lcom/android/launcher3/common/base/item/ItemInfo;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    .line 520
    invoke-virtual {v7, v6, v8, v10}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->willAddToExistingUserFolder(Lcom/android/launcher3/common/base/item/ItemInfo;[IF)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 522
    :cond_0
    const/16 v38, 0x0

    .line 529
    .end local v10    # "distance":F
    :cond_1
    :goto_0
    move-object/from16 v0, v20

    iget v6, v0, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->itemType:I

    const/4 v7, 0x4

    if-eq v6, v7, :cond_2

    move-object/from16 v0, v20

    iget v6, v0, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->itemType:I

    const/4 v7, 0x5

    if-ne v6, v7, :cond_7

    :cond_2
    const/16 v40, 0x1

    .line 531
    .local v40, "isWidget":Z
    :goto_1
    if-eqz v40, :cond_8

    move-object/from16 v6, v20

    check-cast v6, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iget-object v0, v6, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->boundWidget:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v24, v0

    .line 532
    .local v24, "finalView":Landroid/view/View;
    :goto_2
    const/16 v44, 0x0

    .line 533
    .local v44, "updateWidgetSize":Z
    if-eqz v38, :cond_c

    .line 534
    invoke-static/range {v20 .. v20}, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->getSpanInfo(Lcom/android/launcher3/common/base/item/ItemInfo;)Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;

    move-result-object v14

    .line 535
    .local v14, "spanInfo":Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;
    const/4 v6, 0x2

    new-array v0, v6, [I

    move-object/from16 v17, v0

    .line 536
    .local v17, "resultSpan":[I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mReorderController:Lcom/android/launcher3/home/WorkspaceReorderController;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    const/4 v7, 0x0

    aget v6, v6, v7

    float-to-int v12, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    const/4 v7, 0x1

    aget v6, v6, v7

    float-to-int v13, v6

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    move-object/from16 v16, v0

    const/16 v18, 0x3

    invoke-virtual/range {v11 .. v18}, Lcom/android/launcher3/home/WorkspaceReorderController;->performReorder(IILcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;Landroid/view/View;[I[II)[I

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    .line 540
    const/4 v6, 0x0

    aget v6, v17, v6

    move-object/from16 v0, v20

    iget v7, v0, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->spanX:I

    if-ne v6, v7, :cond_3

    const/4 v6, 0x1

    aget v6, v17, v6

    move-object/from16 v0, v20

    iget v7, v0, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->spanY:I

    if-eq v6, v7, :cond_4

    .line 541
    :cond_3
    const/16 v44, 0x1

    .line 544
    :cond_4
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    if-ltz v6, :cond_9

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    if-ltz v6, :cond_9

    const/4 v6, 0x0

    aget v6, v17, v6

    if-lez v6, :cond_9

    const/4 v6, 0x1

    aget v6, v17, v6

    if-lez v6, :cond_9

    const/16 v39, 0x1

    .line 547
    .local v39, "foundCell":Z
    :goto_3
    if-nez v39, :cond_b

    .line 548
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportChinaDA()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 549
    new-instance v33, Lcom/android/launcher3/home/WorkspaceDragController$4;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher3/home/WorkspaceDragController$4;-><init>(Lcom/android/launcher3/home/WorkspaceDragController;Landroid/view/View;Lcom/android/launcher3/common/base/item/PendingAddItemInfo;)V

    .line 558
    .local v33, "addItemRunnable":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    move-object/from16 v0, v33

    invoke-static {v6, v0}, Lcom/android/launcher3/home/AddItemOnNewPageDialog;->createAndShow(Landroid/app/FragmentManager;Ljava/lang/Runnable;)V

    .line 560
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v6}, Lcom/android/launcher3/common/drag/DragView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 561
    const/4 v6, 0x0

    move-object/from16 v0, p1

    iput-boolean v6, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    .line 562
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v6, v7}, Lcom/android/launcher3/common/view/DragLayer;->removeView(Landroid/view/View;)V

    .line 564
    :cond_5
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v6}, Lcom/android/launcher3/home/HomeController;->exitDragStateDelayed()V

    .line 641
    .end local v14    # "spanInfo":Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;
    .end local v17    # "resultSpan":[I
    .end local v33    # "addItemRunnable":Ljava/lang/Runnable;
    .end local v39    # "foundCell":Z
    :goto_4
    return-void

    .line 525
    .end local v24    # "finalView":Landroid/view/View;
    .end local v40    # "isWidget":Z
    .end local v44    # "updateWidgetSize":Z
    :cond_6
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v11

    const-string v12, "IWAR"

    const-string v13, "Home_Background_Longpress"

    const-wide/16 v14, -0x1

    const/16 v16, 0x0

    invoke-virtual/range {v11 .. v16}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    goto/16 :goto_0

    .line 529
    :cond_7
    const/16 v40, 0x0

    goto/16 :goto_1

    .line 531
    .restart local v40    # "isWidget":Z
    :cond_8
    const/16 v24, 0x0

    goto/16 :goto_2

    .line 544
    .restart local v14    # "spanInfo":Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;
    .restart local v17    # "resultSpan":[I
    .restart local v24    # "finalView":Landroid/view/View;
    .restart local v44    # "updateWidgetSize":Z
    :cond_9
    const/16 v39, 0x0

    goto :goto_3

    .line 567
    .restart local v39    # "foundCell":Z
    :cond_a
    invoke-direct/range {p0 .. p1}, Lcom/android/launcher3/home/WorkspaceDragController;->findEmptySpace(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V

    .line 568
    const/4 v6, 0x0

    move-object/from16 v0, v20

    iget v7, v0, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->spanX:I

    aput v7, v17, v6

    .line 569
    const/4 v6, 0x1

    move-object/from16 v0, v20

    iget v7, v0, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->spanY:I

    aput v7, v17, v6

    .line 572
    :cond_b
    const/4 v6, 0x0

    aget v6, v17, v6

    move-object/from16 v0, v20

    iput v6, v0, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->spanX:I

    .line 573
    const/4 v6, 0x1

    aget v6, v17, v6

    move-object/from16 v0, v20

    iput v6, v0, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->spanY:I

    .line 576
    .end local v14    # "spanInfo":Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;
    .end local v17    # "resultSpan":[I
    .end local v39    # "foundCell":Z
    :cond_c
    const-wide/16 v36, -0x64

    .line 577
    .local v36, "container":J
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v6, v7}, Lcom/android/launcher3/home/Workspace;->getIdForScreen(Lcom/android/launcher3/common/base/view/CellLayout;)J

    move-result-wide v42

    .line 578
    .local v42, "screenId":J
    const/16 v35, 0x0

    .line 580
    .local v35, "delay":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v7}, Lcom/android/launcher3/home/Workspace;->getNextPage()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/launcher3/home/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v6

    cmp-long v6, v6, v42

    if-eqz v6, :cond_d

    .line 581
    new-instance v41, Lcom/android/launcher3/home/WorkspaceDragController$5;

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    move-wide/from16 v2, v42

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher3/home/WorkspaceDragController$5;-><init>(Lcom/android/launcher3/home/WorkspaceDragController;J)V

    .line 590
    .local v41, "r":Ljava/lang/Runnable;
    sget-boolean v6, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v6, :cond_f

    .line 591
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v0, v41

    invoke-virtual {v6, v0}, Lcom/android/launcher3/home/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 595
    :goto_5
    const/16 v35, 0xc8

    .line 598
    .end local v41    # "r":Ljava/lang/Runnable;
    :cond_d
    new-instance v22, Lcom/android/launcher3/home/WorkspaceDragController$6;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    move-wide/from16 v3, v42

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/launcher3/home/WorkspaceDragController$6;-><init>(Lcom/android/launcher3/home/WorkspaceDragController;Lcom/android/launcher3/common/base/item/PendingAddItemInfo;J)V

    .line 613
    .local v22, "onAnimationCompleteRunnable":Ljava/lang/Runnable;
    move-object/from16 v0, v24

    instance-of v6, v0, Landroid/appwidget/AppWidgetHostView;

    if-eqz v6, :cond_e

    if-eqz v44, :cond_e

    move-object/from16 v34, v24

    .line 614
    check-cast v34, Landroid/appwidget/AppWidgetHostView;

    .line 615
    .local v34, "awhv":Landroid/appwidget/AppWidgetHostView;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, v20

    iget v7, v0, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->spanX:I

    move-object/from16 v0, v20

    iget v8, v0, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->spanY:I

    move-object/from16 v0, v34

    invoke-static {v6, v0, v7, v8}, Lcom/android/launcher3/home/AppWidgetResizeFrame;->updateWidgetSizeRanges(Lcom/android/launcher3/Launcher;Landroid/appwidget/AppWidgetHostView;II)V

    .line 619
    .end local v34    # "awhv":Landroid/appwidget/AppWidgetHostView;
    :cond_e
    if-eqz v40, :cond_10

    move-object/from16 v6, v20

    check-cast v6, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iget-object v6, v6, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->info:Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    if-eqz v6, :cond_10

    move-object/from16 v6, v20

    check-cast v6, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iget-object v6, v6, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->info:Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    iget-object v6, v6, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v6, :cond_10

    .line 621
    const/16 v23, 0x1

    .line 622
    .local v23, "animationStyle":I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    move-object/from16 v21, v0

    .line 623
    .local v21, "dragView":Lcom/android/launcher3/common/drag/DragView;
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    new-instance v18, Lcom/android/launcher3/home/WorkspaceDragController$7;

    move-object/from16 v19, p0

    invoke-direct/range {v18 .. v24}, Lcom/android/launcher3/home/WorkspaceDragController$7;-><init>(Lcom/android/launcher3/home/WorkspaceDragController;Lcom/android/launcher3/common/base/item/PendingAddItemInfo;Lcom/android/launcher3/common/drag/DragView;Ljava/lang/Runnable;ILandroid/view/View;)V

    move/from16 v0, v35

    int-to-long v8, v0

    move-object/from16 v0, v18

    invoke-virtual {v6, v0, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 640
    .end local v21    # "dragView":Lcom/android/launcher3/common/drag/DragView;
    :goto_6
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v11, 0x1

    aget v9, v9, v11

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7, v8, v9}, Lcom/android/launcher3/home/WorkspaceDragController;->sayDragTalkBack(ZZII)V

    goto/16 :goto_4

    .line 593
    .end local v22    # "onAnimationCompleteRunnable":Ljava/lang/Runnable;
    .end local v23    # "animationStyle":I
    .restart local v41    # "r":Ljava/lang/Runnable;
    :cond_f
    invoke-interface/range {v41 .. v41}, Ljava/lang/Runnable;->run()V

    goto :goto_5

    .line 630
    .end local v41    # "r":Ljava/lang/Runnable;
    .restart local v22    # "onAnimationCompleteRunnable":Ljava/lang/Runnable;
    :cond_10
    if-eqz v40, :cond_11

    .line 631
    const/16 v23, 0x0

    .line 632
    .restart local v23    # "animationStyle":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v27, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    move-object/from16 v28, v0

    const/16 v32, 0x1

    move-object/from16 v25, p0

    move-object/from16 v26, v20

    move-object/from16 v29, v22

    move/from16 v30, v23

    move-object/from16 v31, v24

    invoke-virtual/range {v25 .. v32}, Lcom/android/launcher3/home/WorkspaceDragController;->animateWidgetDrop(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/drag/DragView;Ljava/lang/Runnable;ILandroid/view/View;Z)V

    goto :goto_6

    .line 635
    .end local v23    # "animationStyle":I
    :cond_11
    const/16 v23, 0x1

    .line 636
    .restart local v23    # "animationStyle":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v27, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    move-object/from16 v28, v0

    const/16 v32, 0x1

    move-object/from16 v25, p0

    move-object/from16 v26, v20

    move-object/from16 v29, v22

    move/from16 v30, v23

    move-object/from16 v31, v24

    invoke-virtual/range {v25 .. v32}, Lcom/android/launcher3/home/WorkspaceDragController;->animateWidgetDrop(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/drag/DragView;Ljava/lang/Runnable;ILandroid/view/View;Z)V

    goto :goto_6
.end method

.method private onDropExtraObjects(Ljava/util/ArrayList;Ljava/lang/Runnable;ZZZZ)V
    .locals 30
    .param p2, "postRunnable"    # Ljava/lang/Runnable;
    .param p3, "restored"    # Z
    .param p4, "canceled"    # Z
    .param p5, "cancelDropFolder"    # Z
    .param p6, "fromOther"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            ">;",
            "Ljava/lang/Runnable;",
            "ZZZZ)V"
        }
    .end annotation

    .prologue
    .line 825
    .local p1, "extraDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 826
    .local v27, "restoredHotseatObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 828
    .local v26, "restoreExtraDropItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v29

    :cond_0
    :goto_0
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .line 829
    .local v17, "d":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    if-eqz p5, :cond_1

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v4, v4, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v4, :cond_0

    .line 832
    :cond_1
    move-object/from16 v0, v17

    iget-boolean v4, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->restored:Z

    or-int p3, p3, v4

    .line 834
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 836
    .local v21, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    if-eqz p3, :cond_2

    move-object/from16 v0, v21

    iget-wide v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v10, -0x65

    cmp-long v4, v4, v10

    if-nez v4, :cond_2

    .line 837
    move-object/from16 v0, v27

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 841
    :cond_2
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFolderSelect()Z

    move-result v4

    if-nez v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    .line 842
    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/android/launcher3/home/HomeController;->isItemInFolder(Lcom/android/launcher3/common/base/item/ItemInfo;)Z

    move-result v4

    if-eqz v4, :cond_a

    const/16 v23, 0x1

    .line 843
    .local v23, "isItemInFolder":Z
    :goto_1
    const/16 v18, 0x0

    .line 845
    .local v18, "folder":Landroid/view/View;
    if-eqz v23, :cond_3

    .line 846
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, v21

    iget-wide v10, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-virtual {v4, v10, v11}, Lcom/android/launcher3/home/HomeController;->getHomescreenIconByItemId(J)Landroid/view/View;

    move-result-object v18

    .line 847
    if-nez p3, :cond_3

    .line 848
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0, v5}, Lcom/android/launcher3/home/HomeController;->removeHomeOrFolderItem(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;)Z

    .line 852
    :cond_3
    const/16 v24, 0x0

    .line 853
    .local v24, "localInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    instance-of v4, v4, Lcom/android/launcher3/home/HotseatDragController;

    if-eqz v4, :cond_b

    .line 854
    :cond_4
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v4}, Lcom/android/launcher3/common/drag/DragView;->getSourceView()Landroid/view/View;

    move-result-object v28

    .line 876
    .local v28, "view":Landroid/view/View;
    :goto_2
    if-eqz v24, :cond_5

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_5

    .line 877
    move-object/from16 v21, v24

    .line 880
    :cond_5
    if-eqz p3, :cond_e

    .line 881
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v5, 0x0

    move-object/from16 v0, v21

    iget v10, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    aput v10, v4, v5

    .line 882
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v5, 0x1

    move-object/from16 v0, v21

    iget v10, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    aput v10, v4, v5

    .line 900
    :cond_6
    :goto_3
    if-eqz p3, :cond_7

    if-nez v23, :cond_13

    .line 901
    :cond_7
    if-eqz p3, :cond_11

    move-object/from16 v0, v21

    iget-wide v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    .line 902
    .local v6, "container":J
    :goto_4
    if-eqz p3, :cond_12

    move-object/from16 v0, v21

    iget-wide v8, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    .line 906
    .local v8, "screenId":J
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v10, 0x0

    aget v10, v5, v10

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v11, 0x1

    aget v11, v5, v11

    const/4 v12, -0x1

    move-object/from16 v5, v21

    invoke-virtual/range {v4 .. v12}, Lcom/android/launcher3/home/HomeController;->addOrMoveItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJIII)V

    .line 908
    if-eqz p6, :cond_8

    .line 909
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getCloneItemEnabled()Z

    move-result v4

    if-eqz v4, :cond_8

    move-object/from16 v0, v21

    instance-of v4, v0, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v4, :cond_8

    .line 910
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    new-instance v10, Ljava/util/ArrayList;

    move-object/from16 v4, v21

    check-cast v4, Lcom/android/launcher3/folder/FolderInfo;

    iget-object v4, v4, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-direct {v10, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, v21

    iget-wide v12, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    invoke-virtual {v5, v10, v12, v13}, Lcom/android/launcher3/home/HomeController;->addFolderItemsToDb(Ljava/util/ArrayList;J)V

    .line 914
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v10, 0x0

    aget v10, v5, v10

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v11, 0x1

    aget v11, v5, v11

    move-object/from16 v0, v21

    iget v12, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move-object/from16 v0, v21

    iget v13, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move-object/from16 v5, v28

    invoke-virtual/range {v4 .. v13}, Lcom/android/launcher3/home/HomeController;->addInScreen(Landroid/view/View;JJIIII)V

    .line 917
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-eqz v4, :cond_9

    .line 918
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Lcom/android/launcher3/common/base/view/CellLayout;->onDropChild(Landroid/view/View;)V

    .line 919
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v4}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->measureChild(Landroid/view/View;)V

    .line 922
    :cond_9
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->isAppsStage()Z

    move-result v4

    if-nez v4, :cond_0

    .line 923
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    move-object/from16 v0, v17

    iget-object v11, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    const/16 v13, 0x12c

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v12, v28

    move-object/from16 v14, p2

    invoke-virtual/range {v10 .. v15}, Lcom/android/launcher3/common/view/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/common/drag/DragView;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;)V

    goto/16 :goto_0

    .line 842
    .end local v6    # "container":J
    .end local v8    # "screenId":J
    .end local v18    # "folder":Landroid/view/View;
    .end local v23    # "isItemInFolder":Z
    .end local v24    # "localInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v28    # "view":Landroid/view/View;
    :cond_a
    const/16 v23, 0x0

    goto/16 :goto_1

    .line 856
    .restart local v18    # "folder":Landroid/view/View;
    .restart local v23    # "isItemInFolder":Z
    .restart local v24    # "localInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_b
    move-object/from16 v0, v21

    iget v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    packed-switch v4, :pswitch_data_0

    .line 872
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown item type: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v21

    iget v10, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 859
    :pswitch_0
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getCloneItemEnabled()Z

    move-result v4

    if-eqz v4, :cond_c

    move-object/from16 v4, v21

    check-cast v4, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 860
    invoke-virtual {v4}, Lcom/android/launcher3/common/base/item/IconInfo;->makeCloneInfo()Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v24

    .line 861
    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v4}, Lcom/android/launcher3/home/HomeController;->getBindController()Lcom/android/launcher3/home/HomeBindController;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v4, v24

    check-cast v4, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v5, v10, v4}, Lcom/android/launcher3/home/HomeBindController;->createShortcut(Landroid/view/ViewGroup;Lcom/android/launcher3/common/base/item/IconInfo;)Landroid/view/View;

    move-result-object v28

    .line 863
    .restart local v28    # "view":Landroid/view/View;
    goto/16 :goto_2

    .end local v28    # "view":Landroid/view/View;
    :cond_c
    move-object/from16 v24, v21

    .line 860
    goto :goto_6

    .line 865
    :pswitch_1
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getCloneItemEnabled()Z

    move-result v4

    if-eqz v4, :cond_d

    move-object/from16 v4, v21

    check-cast v4, Lcom/android/launcher3/folder/FolderInfo;

    .line 866
    invoke-virtual {v4}, Lcom/android/launcher3/folder/FolderInfo;->makeCloneInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v24

    .line 867
    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v6, v24

    check-cast v6, Lcom/android/launcher3/folder/FolderInfo;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lcom/android/launcher3/folder/view/FolderIconView;->fromXml(Lcom/android/launcher3/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher3/folder/FolderInfo;Lcom/android/launcher3/common/base/controller/ControllerBase;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;I)Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v28

    .line 870
    .restart local v28    # "view":Landroid/view/View;
    goto/16 :goto_2

    .end local v28    # "view":Landroid/view/View;
    :cond_d
    move-object/from16 v24, v21

    .line 866
    goto :goto_7

    .line 884
    .restart local v28    # "view":Landroid/view/View;
    :cond_e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    move-object/from16 v0, v17

    iget-boolean v7, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelDropFolder:Z

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    move/from16 v6, p4

    invoke-direct/range {v4 .. v9}, Lcom/android/launcher3/home/WorkspaceDragController;->findEmptyCellForExtraDragObject([IZZZZ)Z

    move-result v20

    .line 886
    .local v20, "foundCell":Z
    if-nez v20, :cond_6

    .line 887
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportChinaDA()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 888
    move-object/from16 v0, v21

    iget-wide v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v10, -0x65

    cmp-long v4, v4, v10

    if-nez v4, :cond_f

    .line 889
    move-object/from16 v0, v27

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 891
    :cond_f
    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 894
    :cond_10
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    move-object/from16 v0, v17

    iget-boolean v7, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelDropFolder:Z

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object/from16 v4, p0

    move/from16 v6, p4

    invoke-direct/range {v4 .. v9}, Lcom/android/launcher3/home/WorkspaceDragController;->findEmptyCellForExtraDragObject([IZZZZ)Z

    goto/16 :goto_3

    .line 901
    .end local v20    # "foundCell":Z
    :cond_11
    const-wide/16 v6, -0x64

    goto/16 :goto_4

    .line 902
    .restart local v6    # "container":J
    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/home/Workspace;->getIdForScreen(Lcom/android/launcher3/common/base/view/CellLayout;)J

    move-result-wide v8

    goto/16 :goto_5

    .line 927
    .end local v6    # "container":J
    :cond_13
    if-eqz v18, :cond_0

    .line 928
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/launcher3/folder/FolderInfo;

    .line 929
    .local v19, "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v5, 0x0

    move-object/from16 v0, v19

    iget v10, v0, Lcom/android/launcher3/folder/FolderInfo;->cellX:I

    aput v10, v4, v5

    .line 930
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v5, 0x1

    move-object/from16 v0, v19

    iget v10, v0, Lcom/android/launcher3/folder/FolderInfo;->cellY:I

    aput v10, v4, v5

    .line 931
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Lcom/android/launcher3/home/WorkspaceDragController;->addToExistingFolderIfNecessary([ILcom/android/launcher3/common/drag/DropTarget$DragObject;)Z

    goto/16 :goto_0

    .line 936
    .end local v17    # "d":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .end local v18    # "folder":Landroid/view/View;
    .end local v19    # "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    .end local v21    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v23    # "isItemInFolder":Z
    .end local v24    # "localInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v28    # "view":Landroid/view/View;
    :cond_14
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_15

    .line 937
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v4}, Lcom/android/launcher3/home/HomeController;->getHotseat()Lcom/android/launcher3/home/Hotseat;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/home/Hotseat;->getDragController()Lcom/android/launcher3/home/HotseatDragController;

    move-result-object v4

    .line 938
    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Lcom/android/launcher3/home/HotseatDragController;->restoreHotseatObjects(Ljava/util/ArrayList;)V

    .line 941
    :cond_15
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1a

    .line 942
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_16
    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .line 943
    .local v25, "object":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 944
    .restart local v21    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object/from16 v0, v21

    iget-wide v10, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v12, -0x65

    cmp-long v5, v10, v12

    if-eqz v5, :cond_16

    .line 947
    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher3/common/base/item/ItemInfo;->isContainApps()Z

    move-result v5

    if-nez v5, :cond_17

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, v21

    iget-wide v10, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    .line 948
    invoke-virtual {v5, v10, v11}, Lcom/android/launcher3/home/HomeController;->getHomescreenIconByItemId(J)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_17

    const/16 v22, 0x1

    .line 949
    .local v22, "isFromHomeFolder":Z
    :goto_9
    if-eqz p6, :cond_18

    if-nez v22, :cond_18

    .line 950
    move-object/from16 v0, v25

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v5}, Lcom/android/launcher3/common/drag/DragView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_16

    .line 951
    const/4 v5, 0x0

    move-object/from16 v0, v25

    iput-boolean v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    .line 952
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    move-object/from16 v0, v25

    iget-object v10, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v5, v10}, Lcom/android/launcher3/common/view/DragLayer;->removeView(Landroid/view/View;)V

    goto :goto_8

    .line 948
    .end local v22    # "isFromHomeFolder":Z
    :cond_17
    const/16 v22, 0x0

    goto :goto_9

    .line 955
    .restart local v22    # "isFromHomeFolder":Z
    :cond_18
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/home/WorkspaceDragController;->restoreExtraDropItems(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V

    goto :goto_8

    .line 959
    .end local v21    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v22    # "isFromHomeFolder":Z
    .end local v25    # "object":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    :cond_19
    new-instance v16, Lcom/android/launcher3/home/WorkspaceDragController$11;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/home/WorkspaceDragController$11;-><init>(Lcom/android/launcher3/home/WorkspaceDragController;Ljava/util/ArrayList;)V

    .line 965
    .local v16, "addItemRunnable":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-static {v4, v0}, Lcom/android/launcher3/home/AddItemOnNewPageDialog;->createAndShow(Landroid/app/FragmentManager;Ljava/lang/Runnable;)V

    .line 967
    .end local v16    # "addItemRunnable":Ljava/lang/Runnable;
    :cond_1a
    return-void

    .line 856
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onDropInternal(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
    .locals 66
    .param p1, "d"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .prologue
    .line 255
    new-instance v49, Lcom/android/launcher3/home/WorkspaceDragController$1;

    move-object/from16 v0, v49

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher3/home/WorkspaceDragController$1;-><init>(Lcom/android/launcher3/home/WorkspaceDragController;)V

    .line 263
    .local v49, "exitDragStateRunnable":Ljava/lang/Runnable;
    const/16 v62, 0x0

    .line 264
    .local v62, "resizeOnDrop":Z
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v0, v5, Lcom/android/launcher3/folder/FolderInfo;

    move/from16 v56, v0

    .line 265
    .local v56, "isFolderDrop":Z
    const/16 v47, 0x0

    .line 267
    .local v47, "cancelDropFolder":Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v0, v5, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    move-object/from16 v16, v0

    .line 268
    .local v16, "cell":Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 269
    .local v48, "cellInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v0, v5, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->layout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v60, v0

    .line 271
    .local v60, "originalLayout":Lcom/android/launcher3/common/base/view/CellLayout;
    const/16 v46, 0x0

    .line 272
    .local v46, "canEnterResizeMode":Z
    const/16 v54, 0x0

    .line 273
    .local v54, "hostView":Lcom/android/launcher3/home/LauncherAppWidgetHostView;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-eqz v5, :cond_1e

    move-object/from16 v0, p1

    iget-boolean v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelled:Z

    if-nez v5, :cond_1e

    .line 274
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-wide v8, v5, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->container:J

    const-wide/16 v14, -0x64

    cmp-long v5, v8, v14

    if-eqz v5, :cond_2

    const/16 v52, 0x1

    .line 275
    .local v52, "hasMovedFromHotseat":Z
    :goto_0
    if-eqz v52, :cond_0

    .line 276
    if-eqz v56, :cond_3

    .line 277
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v5

    const-string v6, "HSDT"

    const-string v7, "Folder"

    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 287
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget v11, v5, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->spanX:I

    .line 288
    .local v11, "spanX":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget v12, v5, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->spanY:I

    .line 290
    .local v12, "spanY":I
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    float-to-int v9, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    float-to-int v10, v5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    invoke-virtual/range {v8 .. v13}, Lcom/android/launcher3/common/base/view/CellLayout;->findNearestArea(IIII[I)[I

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    .line 293
    move-object/from16 v0, v49

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->postAnimationRunnable:Ljava/lang/Runnable;

    .line 295
    if-eqz v52, :cond_5

    const/16 v17, 0x0

    .line 296
    .local v17, "parent":Lcom/android/launcher3/common/base/view/CellLayout;
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mInScrollArea:Z

    if-nez v5, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    move-object/from16 v18, p1

    .line 297
    invoke-virtual/range {v13 .. v18}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->onDropCreateUserFolder([F[ILandroid/view/View;Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/drag/DropTarget$DragObject;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 299
    if-nez v56, :cond_6

    .line 490
    .end local v11    # "spanX":I
    .end local v12    # "spanY":I
    .end local v52    # "hasMovedFromHotseat":Z
    :cond_1
    :goto_3
    return-void

    .line 274
    .end local v17    # "parent":Lcom/android/launcher3/common/base/view/CellLayout;
    :cond_2
    const/16 v52, 0x0

    goto :goto_0

    .line 280
    .restart local v52    # "hasMovedFromHotseat":Z
    :cond_3
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    move-object/from16 v55, v0

    check-cast v55, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 281
    .local v55, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    invoke-virtual/range {v55 .. v55}, Lcom/android/launcher3/common/base/item/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 282
    invoke-virtual/range {v55 .. v55}, Lcom/android/launcher3/common/base/item/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 283
    .local v7, "extra":Ljava/lang/String;
    :goto_4
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v5

    const-string v6, "HSDT"

    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    goto :goto_1

    .line 282
    .end local v7    # "extra":Ljava/lang/String;
    :cond_4
    const/4 v7, 0x0

    goto :goto_4

    .end local v55    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .restart local v11    # "spanX":I
    .restart local v12    # "spanY":I
    :cond_5
    move-object/from16 v17, v60

    .line 295
    goto :goto_2

    .line 302
    .restart local v17    # "parent":Lcom/android/launcher3/common/base/view/CellLayout;
    :cond_6
    const/16 v47, 0x1

    .line 305
    :cond_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    move-object/from16 v0, p1

    invoke-virtual {v5, v6, v8, v0}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->onDropAddToExistingFolder([F[ILcom/android/launcher3/common/drag/DropTarget$DragObject;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 307
    if-nez v56, :cond_a

    .line 308
    if-nez v52, :cond_8

    if-eqz v60, :cond_8

    .line 309
    move-object/from16 v0, v60

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/view/CellLayout;->removeView(Landroid/view/View;)V

    .line 311
    :cond_8
    if-nez v52, :cond_9

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-wide v8, v5, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->screenId:J

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher3/home/Workspace;->getDefaultPage()I

    move-result v5

    int-to-long v14, v5

    cmp-long v5, v8, v14

    if-nez v5, :cond_1

    .line 312
    :cond_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/launcher3/home/HomeController;->notifyCapture(Z)V

    goto :goto_3

    .line 316
    :cond_a
    const/16 v47, 0x1

    .line 319
    :cond_b
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    move-object/from16 v55, v0

    check-cast v55, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 320
    .restart local v55    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    invoke-static/range {v55 .. v55}, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->getSpanInfo(Lcom/android/launcher3/common/base/item/ItemInfo;)Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;

    move-result-object v21

    .line 321
    .local v21, "spanInfo":Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;
    const/4 v5, 0x2

    new-array v0, v5, [I

    move-object/from16 v24, v0

    .line 322
    .local v24, "resultSpan":[I
    if-eqz v47, :cond_c

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelled:Z

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelDropFolder:Z

    move/from16 v21, v0

    .end local v21    # "spanInfo":Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;
    const/16 v22, 0x1

    const/16 v23, 0x1

    move-object/from16 v18, p0

    invoke-direct/range {v18 .. v23}, Lcom/android/launcher3/home/WorkspaceDragController;->findEmptyCellForExtraDragObject([IZZZZ)Z

    .line 325
    const/4 v5, 0x0

    const/4 v6, 0x1

    aput v6, v24, v5

    .line 326
    const/4 v5, 0x1

    const/4 v6, 0x1

    aput v6, v24, v5

    .line 333
    :goto_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    if-ltz v5, :cond_d

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    if-ltz v5, :cond_d

    const/4 v5, 0x0

    aget v5, v24, v5

    if-lez v5, :cond_d

    const/4 v5, 0x1

    aget v5, v24, v5

    if-lez v5, :cond_d

    const/16 v51, 0x1

    .line 336
    .local v51, "foundCell":Z
    :goto_6
    if-nez v51, :cond_15

    .line 337
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportChinaDA()Z

    move-result v5

    if-eqz v5, :cond_14

    .line 338
    new-instance v63, Ljava/util/ArrayList;

    invoke-direct/range {v63 .. v63}, Ljava/util/ArrayList;-><init>()V

    .line 339
    .local v63, "restoredHotseatObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    move-object/from16 v0, v48

    iget-wide v8, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v14, -0x64

    cmp-long v5, v8, v14

    if-nez v5, :cond_e

    .line 340
    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 345
    :goto_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const/4 v6, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v5, v0, v6}, Lcom/android/launcher3/home/HomeController;->updateCountBadge(Landroid/view/View;Z)V

    .line 346
    new-instance v50, Ljava/util/ArrayList;

    invoke-direct/range {v50 .. v50}, Ljava/util/ArrayList;-><init>()V

    .line 347
    .local v50, "finalAddItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    move-object/from16 v0, v50

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    if-eqz v5, :cond_11

    .line 349
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .line 350
    .local v59, "object":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    move-object/from16 v0, v59

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v5, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v8, v5, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v14, -0x65

    cmp-long v5, v8, v14

    if-nez v5, :cond_f

    .line 351
    move-object/from16 v0, v63

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 328
    .end local v50    # "finalAddItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    .end local v51    # "foundCell":Z
    .end local v59    # "object":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .end local v63    # "restoredHotseatObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    .restart local v21    # "spanInfo":Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mReorderController:Lcom/android/launcher3/home/WorkspaceReorderController;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    float-to-int v0, v5

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    float-to-int v0, v5

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    move-object/from16 v23, v0

    const/16 v25, 0x2

    move-object/from16 v22, v16

    invoke-virtual/range {v18 .. v25}, Lcom/android/launcher3/home/WorkspaceReorderController;->performReorder(IILcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;Landroid/view/View;[I[II)[I

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    goto/16 :goto_5

    .line 333
    .end local v21    # "spanInfo":Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;
    :cond_d
    const/16 v51, 0x0

    goto/16 :goto_6

    .line 342
    .restart local v51    # "foundCell":Z
    .restart local v63    # "restoredHotseatObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    :cond_e
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lcom/android/launcher3/common/drag/DragView;->setSourceView(Landroid/view/View;)V

    .line 343
    move-object/from16 v0, v63

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 353
    .restart local v50    # "finalAddItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    .restart local v59    # "object":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    :cond_f
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v1, v5}, Lcom/android/launcher3/home/WorkspaceDragController;->restoreExtraDropItems(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V

    goto :goto_8

    .line 356
    .end local v59    # "object":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    :cond_10
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    move-object/from16 v0, v50

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 358
    :cond_11
    invoke-virtual/range {v63 .. v63}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_12

    .line 359
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v5}, Lcom/android/launcher3/home/HomeController;->getHotseat()Lcom/android/launcher3/home/Hotseat;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/home/Hotseat;->getDragController()Lcom/android/launcher3/home/HotseatDragController;

    move-result-object v5

    .line 360
    move-object/from16 v0, v63

    invoke-virtual {v5, v0}, Lcom/android/launcher3/home/HotseatDragController;->restoreHotseatObjects(Ljava/util/ArrayList;)V

    .line 362
    :cond_12
    new-instance v4, Lcom/android/launcher3/home/WorkspaceDragController$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v16

    invoke-direct {v4, v0, v1, v2}, Lcom/android/launcher3/home/WorkspaceDragController$2;-><init>(Lcom/android/launcher3/home/WorkspaceDragController;Ljava/util/ArrayList;Landroid/view/View;)V

    .line 368
    .local v4, "addItemRunnable":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/android/launcher3/home/AddItemOnNewPageDialog;->createAndShow(Landroid/app/FragmentManager;Ljava/lang/Runnable;)V

    .line 370
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v5}, Lcom/android/launcher3/common/drag/DragView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_13

    .line 371
    const/4 v5, 0x0

    move-object/from16 v0, p1

    iput-boolean v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    .line 372
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v5, v6}, Lcom/android/launcher3/common/view/DragLayer;->removeView(Landroid/view/View;)V

    .line 374
    :cond_13
    invoke-interface/range {v49 .. v49}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_3

    .line 377
    .end local v4    # "addItemRunnable":Ljava/lang/Runnable;
    .end local v50    # "finalAddItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    .end local v63    # "restoredHotseatObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    :cond_14
    invoke-direct/range {p0 .. p1}, Lcom/android/launcher3/home/WorkspaceDragController;->findEmptySpace(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V

    .line 378
    const/4 v5, 0x0

    move-object/from16 v0, v55

    iget v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    aput v6, v24, v5

    .line 379
    const/4 v5, 0x1

    move-object/from16 v0, v55

    iget v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    aput v6, v24, v5

    .line 383
    :cond_15
    move-object/from16 v0, v16

    instance-of v5, v0, Landroid/appwidget/AppWidgetHostView;

    if-eqz v5, :cond_17

    const/4 v5, 0x0

    aget v5, v24, v5

    move-object/from16 v0, v55

    iget v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    if-ne v5, v6, :cond_16

    const/4 v5, 0x1

    aget v5, v24, v5

    move-object/from16 v0, v55

    iget v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    if-eq v5, v6, :cond_17

    .line 385
    :cond_16
    const/16 v62, 0x1

    .line 386
    const/4 v5, 0x0

    aget v5, v24, v5

    move-object/from16 v0, v55

    iput v5, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    .line 387
    const/4 v5, 0x1

    aget v5, v24, v5

    move-object/from16 v0, v55

    iput v5, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move-object/from16 v45, v16

    .line 388
    check-cast v45, Landroid/appwidget/AppWidgetHostView;

    .line 389
    .local v45, "awhv":Landroid/appwidget/AppWidgetHostView;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v6, 0x0

    aget v6, v24, v6

    const/4 v8, 0x1

    aget v8, v24, v8

    move-object/from16 v0, v45

    invoke-static {v5, v0, v6, v8}, Lcom/android/launcher3/home/AppWidgetResizeFrame;->updateWidgetSizeRanges(Lcom/android/launcher3/Launcher;Landroid/appwidget/AppWidgetHostView;II)V

    .line 393
    .end local v45    # "awhv":Landroid/appwidget/AppWidgetHostView;
    :cond_17
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v0, v60

    if-ne v0, v5, :cond_18

    if-eqz v47, :cond_20

    :cond_18
    const/16 v53, 0x1

    .line 394
    .local v53, "hasMovedLayout":Z
    :goto_9
    const-wide/16 v28, -0x64

    .line 395
    .local v28, "container":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    if-gez v5, :cond_21

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-wide v0, v5, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->screenId:J

    move-wide/from16 v30, v0

    .line 398
    .local v30, "screenId":J
    :goto_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v6}, Lcom/android/launcher3/home/Workspace;->getNextPage()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/launcher3/home/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v8

    cmp-long v5, v8, v30

    if-eqz v5, :cond_19

    .line 399
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-wide/from16 v0, v30

    invoke-virtual {v5, v0, v1}, Lcom/android/launcher3/home/Workspace;->getPageIndexForScreenId(J)I

    move-result v64

    .line 400
    .local v64, "snapScreen":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move/from16 v0, v64

    invoke-virtual {v5, v0}, Lcom/android/launcher3/home/Workspace;->snapToPage(I)V

    .line 403
    .end local v64    # "snapScreen":I
    :cond_19
    if-eqz v53, :cond_1a

    .line 404
    if-nez v52, :cond_22

    if-eqz v60, :cond_22

    .line 405
    move-object/from16 v0, v60

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/view/CellLayout;->removeView(Landroid/view/View;)V

    .line 410
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v6, 0x0

    aget v32, v5, v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v6, 0x1

    aget v33, v5, v6

    move-object/from16 v0, v48

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move/from16 v34, v0

    move-object/from16 v0, v48

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move/from16 v35, v0

    move-object/from16 v27, v16

    invoke-virtual/range {v26 .. v35}, Lcom/android/launcher3/home/HomeController;->addInScreen(Landroid/view/View;JJIIII)V

    .line 412
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v8}, Lcom/android/launcher3/util/logging/SALogging;->insertMoveToPageLog(Ljava/lang/Object;Z)V

    .line 413
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getMultiSelectManager()Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isMultiSelectMode()Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 414
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v61

    .line 415
    .local v61, "res":Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v5

    const v6, 0x7f08018f

    move-object/from16 v0, v61

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v8, 0x7f080158

    .line 416
    move-object/from16 v0, v61

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 415
    invoke-virtual {v5, v6, v8}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    .end local v61    # "res":Landroid/content/res/Resources;
    :cond_1a
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v58

    check-cast v58, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    .line 422
    .local v58, "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    move-object/from16 v0, v58

    iput v5, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->tmpCellX:I

    move-object/from16 v0, v58

    iput v5, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    .line 423
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    move-object/from16 v0, v58

    iput v5, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->tmpCellY:I

    move-object/from16 v0, v58

    iput v5, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    .line 424
    move-object/from16 v0, v55

    iget v5, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move-object/from16 v0, v58

    iput v5, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellHSpan:I

    .line 425
    move-object/from16 v0, v55

    iget v5, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move-object/from16 v0, v58

    iput v5, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellVSpan:I

    .line 426
    const/4 v5, 0x1

    move-object/from16 v0, v58

    iput-boolean v5, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 427
    if-nez v53, :cond_1b

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-eqz v5, :cond_1b

    .line 428
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lcom/android/launcher3/common/base/view/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    .line 431
    :cond_1b
    move-object/from16 v0, v16

    instance-of v5, v0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    if-eqz v5, :cond_1c

    move-object/from16 v54, v16

    .line 432
    check-cast v54, Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    .line 433
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v0, v54

    invoke-virtual {v5, v0, v6}, Lcom/android/launcher3/home/HomeController;->canEnterResizeMode(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/common/base/view/CellLayout;)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 434
    const/16 v46, 0x1

    .line 438
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v26, v0

    move-object/from16 v0, v58

    iget v0, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    move/from16 v32, v0

    move-object/from16 v0, v58

    iget v0, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    move/from16 v33, v0

    move-object/from16 v0, v55

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move/from16 v34, v0

    move-object/from16 v0, v55

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move/from16 v35, v0

    move-object/from16 v27, v48

    invoke-virtual/range {v26 .. v35}, Lcom/android/launcher3/home/HomeController;->modifyItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJIIII)V

    .line 441
    const/4 v6, 0x1

    if-eqz v53, :cond_23

    if-nez v52, :cond_23

    const/4 v5, 0x1

    :goto_c
    move-object/from16 v0, v58

    iget v8, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    move-object/from16 v0, v58

    iget v9, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v5, v8, v9}, Lcom/android/launcher3/home/WorkspaceDragController;->sayDragTalkBack(ZZII)V

    .line 443
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher3/home/Workspace;->getDefaultPage()I

    move-result v5

    int-to-long v8, v5

    cmp-long v5, v30, v8

    if-nez v5, :cond_1e

    .line 444
    if-nez v53, :cond_1d

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget v5, v5, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cellX:I

    move-object/from16 v0, v58

    iget v6, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    if-ne v5, v6, :cond_1d

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget v5, v5, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cellY:I

    move-object/from16 v0, v58

    iget v6, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    if-eq v5, v6, :cond_1e

    .line 445
    :cond_1d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/launcher3/home/HomeController;->notifyCapture(Z)V

    .line 450
    .end local v11    # "spanX":I
    .end local v12    # "spanY":I
    .end local v17    # "parent":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v24    # "resultSpan":[I
    .end local v28    # "container":J
    .end local v30    # "screenId":J
    .end local v51    # "foundCell":Z
    .end local v52    # "hasMovedFromHotseat":Z
    .end local v53    # "hasMovedLayout":Z
    .end local v55    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v58    # "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    :cond_1e
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v17

    check-cast v17, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 453
    .restart local v17    # "parent":Lcom/android/launcher3/common/base/view/CellLayout;
    if-eqz v46, :cond_24

    .line 454
    move-object/from16 v65, v54

    .line 455
    .local v65, "widgetHostView":Lcom/android/launcher3/home/LauncherAppWidgetHostView;
    new-instance v36, Lcom/android/launcher3/home/WorkspaceDragController$3;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    move-object/from16 v2, v65

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/home/WorkspaceDragController$3;-><init>(Lcom/android/launcher3/home/WorkspaceDragController;Lcom/android/launcher3/home/LauncherAppWidgetHostView;)V

    .line 465
    .end local v65    # "widgetHostView":Lcom/android/launcher3/home/LauncherAppWidgetHostView;
    .local v36, "onCompleteRunnable":Ljava/lang/Runnable;
    :goto_d
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v5}, Lcom/android/launcher3/common/drag/DragView;->hasDrawn()Z

    move-result v5

    if-eqz v5, :cond_28

    .line 466
    move-object/from16 v0, v48

    iget v5, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    const/4 v6, 0x4

    if-eq v5, v6, :cond_1f

    move-object/from16 v0, v48

    iget v5, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_25

    :cond_1f
    const/16 v57, 0x1

    .line 468
    .local v57, "isWidget":Z
    :goto_e
    if-eqz v57, :cond_27

    .line 469
    if-eqz v62, :cond_26

    const/16 v37, 0x2

    .line 471
    .local v37, "animationType":I
    :goto_f
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    move-object/from16 v35, v0

    const/16 v39, 0x0

    move-object/from16 v32, p0

    move-object/from16 v33, v48

    move-object/from16 v34, v17

    move-object/from16 v38, v16

    invoke-virtual/range {v32 .. v39}, Lcom/android/launcher3/home/WorkspaceDragController;->animateWidgetDrop(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/drag/DragView;Ljava/lang/Runnable;ILandroid/view/View;Z)V

    .line 484
    .end local v37    # "animationType":I
    .end local v57    # "isWidget":Z
    :goto_10
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/view/CellLayout;->onDropChild(Landroid/view/View;)V

    .line 486
    if-nez v47, :cond_1

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    if-eqz v5, :cond_1

    .line 487
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mRestorePosition:Z

    move/from16 v41, v0

    const/16 v42, 0x0

    const/16 v44, 0x0

    move-object/from16 v38, p0

    move/from16 v43, v47

    invoke-direct/range {v38 .. v44}, Lcom/android/launcher3/home/WorkspaceDragController;->onDropExtraObjects(Ljava/util/ArrayList;Ljava/lang/Runnable;ZZZZ)V

    goto/16 :goto_3

    .line 393
    .end local v36    # "onCompleteRunnable":Ljava/lang/Runnable;
    .restart local v11    # "spanX":I
    .restart local v12    # "spanY":I
    .restart local v24    # "resultSpan":[I
    .restart local v51    # "foundCell":Z
    .restart local v52    # "hasMovedFromHotseat":Z
    .restart local v55    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_20
    const/16 v53, 0x0

    goto/16 :goto_9

    .line 395
    .restart local v28    # "container":J
    .restart local v53    # "hasMovedLayout":Z
    :cond_21
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    .line 396
    invoke-virtual {v5, v6}, Lcom/android/launcher3/home/Workspace;->getIdForScreen(Lcom/android/launcher3/common/base/view/CellLayout;)J

    move-result-wide v30

    goto/16 :goto_a

    .line 407
    .restart local v30    # "screenId":J
    :cond_22
    const-string v5, "DropTarget"

    const-string v6, "mDragInfo.cell has null parent"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 441
    .restart local v58    # "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    :cond_23
    const/4 v5, 0x0

    goto/16 :goto_c

    .line 462
    .end local v11    # "spanX":I
    .end local v12    # "spanY":I
    .end local v24    # "resultSpan":[I
    .end local v28    # "container":J
    .end local v30    # "screenId":J
    .end local v51    # "foundCell":Z
    .end local v52    # "hasMovedFromHotseat":Z
    .end local v53    # "hasMovedLayout":Z
    .end local v55    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v58    # "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    :cond_24
    move-object/from16 v36, v49

    .restart local v36    # "onCompleteRunnable":Ljava/lang/Runnable;
    goto :goto_d

    .line 466
    :cond_25
    const/16 v57, 0x0

    goto :goto_e

    .line 469
    .restart local v57    # "isWidget":Z
    :cond_26
    const/16 v37, 0x0

    goto :goto_f

    .line 474
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    move-object/from16 v38, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    move-object/from16 v39, v0

    const/16 v41, 0x12c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v43, v0

    move-object/from16 v40, v16

    move-object/from16 v42, v36

    invoke-virtual/range {v38 .. v43}, Lcom/android/launcher3/common/view/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/common/drag/DragView;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;)V

    goto :goto_10

    .line 478
    .end local v57    # "isWidget":Z
    :cond_28
    const/4 v5, 0x0

    move-object/from16 v0, p1

    iput-boolean v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    .line 479
    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 480
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const/4 v6, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v5, v0, v6}, Lcom/android/launcher3/home/HomeController;->updateCountBadge(Landroid/view/View;Z)V

    .line 481
    invoke-interface/range {v36 .. v36}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_10
.end method

.method private onResetScrollArea()V
    .locals 1

    .prologue
    .line 1345
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/home/WorkspaceDragController;->setCurrentDragOverlappingLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    .line 1346
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mInScrollArea:Z

    .line 1347
    return-void
.end method

.method private restoreExtraDropItems(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V
    .locals 23
    .param p1, "d"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .param p2, "isFromFolder"    # Z

    .prologue
    .line 1790
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1791
    .local v19, "objectInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v2}, Lcom/android/launcher3/common/drag/DragView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1792
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    .line 1793
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/common/view/DragLayer;->removeView(Landroid/view/View;)V

    .line 1795
    :cond_0
    if-eqz p2, :cond_3

    .line 1796
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, v19

    iget-wide v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-virtual {v2, v4, v5}, Lcom/android/launcher3/home/HomeController;->getHomescreenIconByItemId(J)Landroid/view/View;

    move-result-object v15

    .line 1797
    .local v15, "folder":Landroid/view/View;
    if-eqz v15, :cond_1

    .line 1798
    invoke-virtual {v15}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/launcher3/folder/FolderInfo;

    .line 1800
    .local v18, "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    move-object/from16 v0, v18

    iget-wide v2, v0, Lcom/android/launcher3/folder/FolderInfo;->container:J

    const-wide/16 v4, -0x65

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 1801
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeController;->getHotseat()Lcom/android/launcher3/home/Hotseat;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/home/Hotseat;->getLayout()Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v21

    .line 1805
    .local v21, "original":Lcom/android/launcher3/common/base/view/CellLayout;
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->setReorderTarget(Lcom/android/launcher3/common/base/view/CellLayout;)V

    .line 1806
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v3, 0x0

    move-object/from16 v0, v18

    iget v4, v0, Lcom/android/launcher3/folder/FolderInfo;->cellX:I

    aput v4, v2, v3

    .line 1807
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v3, 0x1

    move-object/from16 v0, v18

    iget v4, v0, Lcom/android/launcher3/folder/FolderInfo;->cellY:I

    aput v4, v2, v3

    .line 1808
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/home/WorkspaceDragController;->addToExistingFolderIfNecessary([ILcom/android/launcher3/common/drag/DropTarget$DragObject;)Z

    .line 1838
    .end local v15    # "folder":Landroid/view/View;
    .end local v18    # "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    .end local v21    # "original":Lcom/android/launcher3/common/base/view/CellLayout;
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/common/drag/DragManager;->onDeferredEndDrag(Lcom/android/launcher3/common/drag/DragView;)V

    .line 1839
    return-void

    .line 1803
    .restart local v15    # "folder":Landroid/view/View;
    .restart local v18    # "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v0, v18

    iget-wide v4, v0, Lcom/android/launcher3/folder/FolderInfo;->screenId:J

    invoke-virtual {v2, v4, v5}, Lcom/android/launcher3/home/Workspace;->getScreenWithId(J)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v21

    .restart local v21    # "original":Lcom/android/launcher3/common/base/view/CellLayout;
    goto :goto_0

    .line 1811
    .end local v15    # "folder":Landroid/view/View;
    .end local v18    # "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    .end local v21    # "original":Lcom/android/launcher3/common/base/view/CellLayout;
    :cond_3
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v2}, Lcom/android/launcher3/common/drag/DragView;->getSourceView()Landroid/view/View;

    move-result-object v20

    .line 1814
    .local v20, "objectView":Landroid/view/View;
    move-object/from16 v0, v19

    iget-wide v2, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v4, -0x64

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    .line 1815
    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1816
    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-wide/from16 v16, v0

    .line 1817
    .local v16, "container":J
    move-object/from16 v0, v19

    iget-wide v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    .line 1818
    .local v6, "screenId":J
    move-object/from16 v0, v19

    iget v8, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    .line 1819
    .local v8, "cellX":I
    move-object/from16 v0, v19

    iget v9, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    .line 1820
    .local v9, "cellY":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v0, v19

    iget-wide v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-virtual {v2, v4, v5}, Lcom/android/launcher3/home/Workspace;->getScreenWithId(J)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v14

    .line 1821
    .local v14, "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    if-eqz v14, :cond_4

    invoke-virtual {v14, v8, v9}, Lcom/android/launcher3/common/base/view/CellLayout;->isOccupied(II)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1822
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher3/home/WorkspaceDragController;->findEmptyCellForExtraDragObject([IZZZZ)Z

    .line 1823
    .end local v6    # "screenId":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v3, 0x0

    aget v12, v2, v3

    .line 1824
    .end local v8    # "cellX":I
    .local v12, "cellX":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v3, 0x1

    aget v13, v2, v3

    .line 1825
    .end local v9    # "cellY":I
    .local v13, "cellY":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/home/Workspace;->getIdForScreen(Lcom/android/launcher3/common/base/view/CellLayout;)J

    move-result-wide v6

    .line 1826
    .restart local v6    # "screenId":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v4, 0x0

    aget v8, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v4, 0x1

    aget v9, v3, v4

    const/4 v10, -0x1

    move-object/from16 v3, v19

    move-wide/from16 v4, v16

    invoke-virtual/range {v2 .. v10}, Lcom/android/launcher3/home/HomeController;->addOrMoveItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJIII)V

    move v9, v13

    .end local v13    # "cellY":I
    .restart local v9    # "cellY":I
    move v8, v12

    .line 1829
    .end local v12    # "cellX":I
    .restart local v8    # "cellX":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, v19

    iget v10, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move-object/from16 v0, v19

    iget v11, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move-object/from16 v3, v20

    move-wide/from16 v4, v16

    invoke-virtual/range {v2 .. v11}, Lcom/android/launcher3/home/HomeController;->addInScreen(Landroid/view/View;JJIIII)V

    goto/16 :goto_1

    .line 1832
    .end local v6    # "screenId":J
    .end local v8    # "cellX":I
    .end local v9    # "cellY":I
    .end local v14    # "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v16    # "container":J
    :cond_5
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 1833
    .local v22, "restoredHotseatObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1834
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeController;->getHotseat()Lcom/android/launcher3/home/Hotseat;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/home/Hotseat;->getDragController()Lcom/android/launcher3/home/HotseatDragController;

    move-result-object v2

    .line 1835
    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Lcom/android/launcher3/home/HotseatDragController;->restoreHotseatObjects(Ljava/util/ArrayList;)V

    goto/16 :goto_1
.end method

.method private sayDragTalkBack(ZZII)V
    .locals 9
    .param p1, "internal"    # Z
    .param p2, "isMovedLayout"    # Z
    .param p3, "cellX"    # I
    .param p4, "cellY"    # I

    .prologue
    .line 1765
    iget-object v4, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1766
    .local v3, "res":Landroid/content/res/Resources;
    if-eqz p1, :cond_3

    .line 1767
    if-eqz p2, :cond_2

    .line 1768
    iget-object v4, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v4

    add-int/lit8 v0, v4, 0x1

    .line 1769
    .local v0, "currentPage":I
    iget-object v4, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher3/home/Workspace;->getPageCount()I

    move-result v2

    .line 1770
    .local v2, "maxPages":I
    if-eq v0, v2, :cond_0

    .line 1771
    add-int/lit8 v2, v2, -0x1

    .line 1774
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f0800aa

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

    invoke-virtual {v3, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f0800a7

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    add-int/lit8 v8, p4, 0x1

    .line 1775
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    add-int/lit8 v8, p3, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1784
    .end local v0    # "currentPage":I
    .end local v2    # "maxPages":I
    .local v1, "description":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_1

    .line 1785
    sget-object v4, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    invoke-virtual {v4, v1}, Lcom/android/launcher3/util/Talk;->say(Ljava/lang/String;)V

    .line 1787
    :cond_1
    return-void

    .line 1777
    .end local v1    # "description":Ljava/lang/String;
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f0800a8

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f0800a7

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    add-int/lit8 v8, p4, 0x1

    .line 1778
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    add-int/lit8 v8, p3, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "description":Ljava/lang/String;
    goto :goto_0

    .line 1781
    .end local v1    # "description":Ljava/lang/String;
    :cond_3
    const v4, 0x7f0800a6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "description":Ljava/lang/String;
    goto :goto_0
.end method

.method private setCurrentDragOverlappingLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V
    .locals 0
    .param p1, "layout"    # Lcom/android/launcher3/common/base/view/CellLayout;

    .prologue
    .line 1406
    iput-object p1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragOverlappingLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    .line 1407
    return-void
.end method

.method private setCurrentDropLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V
    .locals 3
    .param p1, "layout"    # Lcom/android/launcher3/common/base/view/CellLayout;

    .prologue
    const/4 v2, -0x1

    .line 1390
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-eqz v0, :cond_0

    .line 1391
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mReorderController:Lcom/android/launcher3/home/WorkspaceReorderController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/WorkspaceReorderController;->revertTempState()V

    .line 1392
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mReorderController:Lcom/android/launcher3/home/WorkspaceReorderController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/WorkspaceReorderController;->setUseTempCoords(Z)V

    .line 1393
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->onDragExit()V

    .line 1395
    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    .line 1396
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-eqz v0, :cond_1

    .line 1397
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->onDragEnter()V

    .line 1398
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mReorderController:Lcom/android/launcher3/home/WorkspaceReorderController;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/WorkspaceReorderController;->setReorderTarget(Lcom/android/launcher3/common/base/view/CellLayout;)V

    .line 1399
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->setReorderTarget(Lcom/android/launcher3/common/base/view/CellLayout;)V

    .line 1401
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mReorderController:Lcom/android/launcher3/home/WorkspaceReorderController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/WorkspaceReorderController;->cleanupReorder(Z)V

    .line 1402
    invoke-direct {p0, v2, v2}, Lcom/android/launcher3/home/WorkspaceDragController;->setCurrentDropOverCell(II)V

    .line 1403
    return-void
.end method

.method private setCurrentDropOverCell(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1410
    iget v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragOverX:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragOverY:I

    if-eq p2, v0, :cond_1

    .line 1411
    :cond_0
    iput p1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragOverX:I

    .line 1412
    iput p2, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragOverY:I

    .line 1413
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/WorkspaceDragController;->setDragMode(I)V

    .line 1415
    :cond_1
    return-void
.end method


# virtual methods
.method public acceptDrop(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)Z
    .locals 6
    .param p1, "d"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .prologue
    .line 1149
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    if-nez v1, :cond_0

    .line 1150
    iget-object v1, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;

    if-eqz v1, :cond_0

    .line 1151
    iget-object v0, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;

    .line 1152
    .local v0, "info":Lcom/android/launcher3/common/base/item/PendingAddItemInfo;
    invoke-direct {p0, v0}, Lcom/android/launcher3/home/WorkspaceDragController;->isExistSingleInstanceAppWidget(Lcom/android/launcher3/common/base/item/PendingAddItemInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1153
    const/4 v1, 0x0

    .line 1162
    .end local v0    # "info":Lcom/android/launcher3/common/base/item/PendingAddItemInfo;
    :goto_0
    return v1

    .line 1157
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-object v4, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v1, v4}, Lcom/android/launcher3/home/Workspace;->getIdForScreen(Lcom/android/launcher3/common/base/view/CellLayout;)J

    move-result-wide v2

    .line 1158
    .local v2, "screenId":J
    const-wide/16 v4, -0xc9

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 1159
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->commitExtraEmptyScreen()J

    .line 1162
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public addFolder(Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/base/item/IconInfo;)Lcom/android/launcher3/folder/view/FolderIconView;
    .locals 8
    .param p1, "layout"    # Lcom/android/launcher3/common/base/view/CellLayout;
    .param p2, "destInfo"    # Lcom/android/launcher3/common/base/item/IconInfo;

    .prologue
    .line 1379
    const-wide/16 v2, -0x64

    .line 1380
    .local v2, "container":J
    iget-wide v4, p2, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    .line 1381
    .local v4, "screenId":J
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->getBindController()Lcom/android/launcher3/home/HomeBindController;

    move-result-object v0

    iget v6, p2, Lcom/android/launcher3/common/base/item/IconInfo;->cellX:I

    iget v7, p2, Lcom/android/launcher3/common/base/item/IconInfo;->cellY:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/home/HomeBindController;->addFolder(Lcom/android/launcher3/common/base/view/CellLayout;JJII)Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v0

    return-object v0
.end method

.method addToExistingFolderIfNecessary([ILcom/android/launcher3/common/drag/DropTarget$DragObject;)Z
    .locals 2
    .param p1, "targetCell"    # [I
    .param p2, "d"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .prologue
    .line 1422
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->onDropAddToExistingFolder([F[ILcom/android/launcher3/common/drag/DropTarget$DragObject;)Z

    move-result v0

    return v0
.end method

.method animateWidgetDrop(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/drag/DragView;Ljava/lang/Runnable;ILandroid/view/View;Z)V
    .locals 42
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p2, "cellLayout"    # Lcom/android/launcher3/common/base/view/CellLayout;
    .param p3, "dragView"    # Lcom/android/launcher3/common/drag/DragView;
    .param p4, "onCompleteRunnable"    # Ljava/lang/Runnable;
    .param p5, "animationType"    # I
    .param p6, "finalView"    # Landroid/view/View;
    .param p7, "external"    # Z

    .prologue
    .line 1428
    new-instance v37, Landroid/graphics/Rect;

    invoke-direct/range {v37 .. v37}, Landroid/graphics/Rect;-><init>()V

    .line 1429
    .local v37, "from":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    move-object/from16 v0, p3

    move-object/from16 v1, v37

    invoke-virtual {v4, v0, v1}, Lcom/android/launcher3/common/view/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1431
    const/4 v4, 0x2

    new-array v5, v4, [I

    .line 1432
    .local v5, "finalPos":[I
    const/4 v4, 0x2

    new-array v6, v4, [F

    .line 1433
    .local v6, "scaleXY":[F
    move-object/from16 v0, p1

    instance-of v4, v0, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    if-nez v4, :cond_5

    const/4 v11, 0x1

    .line 1434
    .local v11, "scalePreview":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    move-object/from16 v4, p0

    move-object/from16 v7, p3

    move-object/from16 v8, p2

    move-object/from16 v9, p1

    invoke-direct/range {v4 .. v11}, Lcom/android/launcher3/home/WorkspaceDragController;->getFinalPositionForDropAnimation([I[FLcom/android/launcher3/common/drag/DragView;Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/base/item/ItemInfo;[IZ)V

    .line 1437
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v39

    .line 1438
    .local v39, "res":Landroid/content/res/Resources;
    const v4, 0x7f0b0019

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    add-int/lit16 v0, v4, -0xc8

    move/from16 v20, v0

    .line 1441
    .local v20, "duration":I
    move-object/from16 v0, p6

    instance-of v4, v0, Landroid/appwidget/AppWidgetHostView;

    if-eqz v4, :cond_0

    if-eqz p7, :cond_0

    .line 1442
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    move-object/from16 v0, p6

    invoke-virtual {v4, v0}, Lcom/android/launcher3/common/view/DragLayer;->removeView(Landroid/view/View;)V

    .line 1445
    :cond_0
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    const/4 v7, 0x4

    if-eq v4, v7, :cond_1

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    const/4 v7, 0x5

    if-ne v4, v7, :cond_6

    :cond_1
    const/16 v38, 0x1

    .line 1447
    .local v38, "isWidget":Z
    :goto_1
    const/4 v4, 0x2

    move/from16 v0, p5

    if-eq v0, v4, :cond_2

    if-eqz p7, :cond_7

    :cond_2
    if-eqz p6, :cond_7

    .line 1448
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/launcher3/home/Workspace;->estimateItemSize(Lcom/android/launcher3/common/base/item/ItemInfo;)[I

    move-result-object v41

    .line 1449
    .local v41, "unScaledSize":[I
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFlexibleGrid()Z

    move-result v4

    if-eqz v4, :cond_3

    move-object/from16 v0, p6

    instance-of v4, v0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    if-eqz v4, :cond_3

    .line 1451
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    const/4 v8, 0x0

    aget v8, v41, v8

    const/4 v9, 0x1

    aget v9, v41, v9

    .line 1452
    invoke-static {v4, v7, v8, v9}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->calculateWidgetSize(IIII)Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;

    move-result-object v40

    .line 1454
    .local v40, "resizeResult":Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;
    if-eqz v40, :cond_3

    .line 1455
    const/4 v4, 0x0

    move-object/from16 v0, v40

    iget v7, v0, Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;->width:I

    aput v7, v41, v4

    .line 1456
    const/4 v4, 0x1

    move-object/from16 v0, v40

    iget v7, v0, Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;->height:I

    aput v7, v41, v4

    .line 1459
    .end local v40    # "resizeResult":Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;
    :cond_3
    move-object/from16 v0, p6

    move-object/from16 v1, v41

    invoke-static {v0, v1}, Lcom/android/launcher3/common/drag/DragViewHelper;->createWidgetBitmap(Landroid/view/View;[I)Landroid/graphics/Bitmap;

    move-result-object v36

    .line 1460
    .local v36, "crossFadeBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p3

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/drag/DragView;->setCrossFadeBitmap(Landroid/graphics/Bitmap;)V

    .line 1461
    move/from16 v0, v20

    int-to-float v4, v0

    const v7, 0x3f4ccccd    # 0.8f

    mul-float/2addr v4, v7

    float-to-int v4, v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lcom/android/launcher3/common/drag/DragView;->crossFade(I)V

    .line 1466
    .end local v36    # "crossFadeBitmap":Landroid/graphics/Bitmap;
    .end local v41    # "unScaledSize":[I
    :cond_4
    :goto_2
    const/4 v4, 0x4

    move/from16 v0, p5

    if-ne v0, v4, :cond_8

    .line 1467
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    const/4 v15, 0x0

    const v16, 0x3dcccccd    # 0.1f

    const v17, 0x3dcccccd    # 0.1f

    const/16 v18, 0x0

    move-object/from16 v13, p3

    move-object v14, v5

    move-object/from16 v19, p4

    invoke-virtual/range {v12 .. v20}, Lcom/android/launcher3/common/view/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/common/drag/DragView;[IFFFILjava/lang/Runnable;I)V

    .line 1492
    :goto_3
    return-void

    .line 1433
    .end local v11    # "scalePreview":Z
    .end local v20    # "duration":I
    .end local v38    # "isWidget":Z
    .end local v39    # "res":Landroid/content/res/Resources;
    :cond_5
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 1445
    .restart local v11    # "scalePreview":Z
    .restart local v20    # "duration":I
    .restart local v39    # "res":Landroid/content/res/Resources;
    :cond_6
    const/16 v38, 0x0

    goto :goto_1

    .line 1462
    .restart local v38    # "isWidget":Z
    :cond_7
    if-eqz v38, :cond_4

    if-eqz p7, :cond_4

    .line 1463
    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    aget v8, v6, v8

    const/4 v9, 0x1

    aget v9, v6, v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    aput v8, v6, v7

    aput v8, v6, v4

    goto :goto_2

    .line 1471
    :cond_8
    const/4 v4, 0x1

    move/from16 v0, p5

    if-ne v0, v4, :cond_9

    .line 1472
    const/16 v33, 0x2

    .line 1477
    .local v33, "endStyle":I
    :goto_4
    new-instance v32, Lcom/android/launcher3/home/WorkspaceDragController$13;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    move-object/from16 v2, p6

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher3/home/WorkspaceDragController$13;-><init>(Lcom/android/launcher3/home/WorkspaceDragController;Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1488
    .local v32, "onComplete":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    move-object/from16 v21, v0

    move-object/from16 v0, v37

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    move-object/from16 v0, v37

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    const/4 v4, 0x0

    aget v25, v5, v4

    const/4 v4, 0x1

    aget v26, v5, v4

    const/high16 v27, 0x3f800000    # 1.0f

    const/high16 v28, 0x3f800000    # 1.0f

    const/high16 v29, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    aget v30, v6, v4

    const/4 v4, 0x1

    aget v31, v6, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v35, v0

    move-object/from16 v22, p3

    move/from16 v34, v20

    invoke-virtual/range {v21 .. v35}, Lcom/android/launcher3/common/view/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/common/drag/DragView;IIIIFFFFFLjava/lang/Runnable;IILandroid/view/View;)V

    goto :goto_3

    .line 1474
    .end local v32    # "onComplete":Ljava/lang/Runnable;
    .end local v33    # "endStyle":I
    :cond_9
    const/16 v33, 0x0

    .restart local v33    # "endStyle":I
    goto :goto_4
.end method

.method public commit(Lcom/android/launcher3/common/base/view/CellLayout;)V
    .locals 1
    .param p1, "layout"    # Lcom/android/launcher3/common/base/view/CellLayout;

    .prologue
    .line 1374
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/home/HomeController;->updateItemLocationsInDatabase(Lcom/android/launcher3/common/base/view/CellLayout;)V

    .line 1375
    return-void
.end method

.method createUserFolderIfNecessary([ILandroid/view/View;Lcom/android/launcher3/common/drag/DropTarget$DragObject;)Z
    .locals 6
    .param p1, "targetCell"    # [I
    .param p2, "newView"    # Landroid/view/View;
    .param p3, "d"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .prologue
    const/4 v1, 0x0

    .line 1418
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    move-object v2, p1

    move-object v3, p2

    move-object v4, v1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->onDropCreateUserFolder([F[ILandroid/view/View;Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/drag/DropTarget$DragObject;)Z

    move-result v0

    return v0
.end method

.method public dropCompletedFromHotseat(Ljava/util/ArrayList;Ljava/lang/Runnable;Z)V
    .locals 7
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
    .local p1, "extraDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    const/4 v3, 0x0

    .line 1755
    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, v3

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/home/WorkspaceDragController;->onDropExtraObjects(Ljava/util/ArrayList;Ljava/lang/Runnable;ZZZZ)V

    .line 1756
    return-void
.end method

.method dropCompletedWidgetFromHotseat(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
    .locals 12
    .param p1, "d"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .prologue
    .line 1737
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/home/WorkspaceDragController;->findEmptyCellForExtraDragObject([IZZZZ)Z

    .line 1738
    iget-object v1, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;

    .line 1739
    .local v1, "info":Lcom/android/launcher3/common/base/item/PendingAddItemInfo;
    const-wide/16 v8, -0x64

    .line 1740
    .local v8, "container":J
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/home/Workspace;->getIdForScreen(Lcom/android/launcher3/common/base/view/CellLayout;)J

    move-result-wide v10

    .line 1741
    .local v10, "screenId":J
    new-instance v4, Lcom/android/launcher3/home/WorkspaceDragController$14;

    invoke-direct {v4, p0, v1, v10, v11}, Lcom/android/launcher3/home/WorkspaceDragController$14;-><init>(Lcom/android/launcher3/home/WorkspaceDragController;Lcom/android/launcher3/common/base/item/PendingAddItemInfo;J)V

    .line 1749
    .local v4, "onAnimationCompleteRunnable":Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    iget-object v3, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/home/WorkspaceDragController;->animateWidgetDrop(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/drag/DragView;Ljava/lang/Runnable;ILandroid/view/View;Z)V

    .line 1751
    return-void
.end method

.method public getController()Lcom/android/launcher3/common/stage/Stage;
    .locals 1

    .prologue
    .line 1192
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    return-object v0
.end method

.method public getDragSourceType()I
    .locals 1

    .prologue
    .line 1760
    const/4 v0, 0x0

    return v0
.end method

.method public getHitRectRelativeToDragLayer(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .prologue
    .line 1172
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/common/view/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    .line 1173
    return-void
.end method

.method public getIntrinsicIconSize()I
    .locals 1

    .prologue
    .line 1197
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getIconSize()I

    move-result v0

    return v0
.end method

.method public getLeft()I
    .locals 1

    .prologue
    .line 1177
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->getLeft()I

    move-result v0

    return v0
.end method

.method public getOutlineColor()I
    .locals 1

    .prologue
    .line 1187
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getOutlineColor()I

    move-result v0

    return v0
.end method

.method public getPageIndexForDragView(Lcom/android/launcher3/common/base/item/ItemInfo;)I
    .locals 8
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 1717
    if-eqz p1, :cond_2

    .line 1718
    iget-object v3, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-wide v4, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher3/home/Workspace;->getPageIndexForScreenId(J)I

    move-result v2

    .line 1719
    .local v2, "pageIndex":I
    iget-object v3, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v3, p1}, Lcom/android/launcher3/home/HomeController;->isItemInFolder(Lcom/android/launcher3/common/base/item/ItemInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1720
    iget-object v3, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    iget-wide v4, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher3/home/HomeController;->getHomescreenIconByItemId(J)Landroid/view/View;

    move-result-object v0

    .line 1721
    .local v0, "folder":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1722
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/folder/FolderInfo;

    .line 1723
    .local v1, "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    iget-wide v4, v1, Lcom/android/launcher3/folder/FolderInfo;->container:J

    const-wide/16 v6, -0x65

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    .line 1724
    iget-object v3, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher3/home/Workspace;->getNextPage()I

    move-result v2

    .line 1733
    .end local v0    # "folder":Landroid/view/View;
    .end local v1    # "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    :cond_0
    :goto_0
    return v2

    .line 1726
    .restart local v0    # "folder":Landroid/view/View;
    .restart local v1    # "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-wide v4, v1, Lcom/android/launcher3/folder/FolderInfo;->screenId:J

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher3/home/Workspace;->getPageIndexForScreenId(J)I

    move-result v2

    goto :goto_0

    .line 1731
    .end local v0    # "folder":Landroid/view/View;
    .end local v1    # "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    .end local v2    # "pageIndex":I
    :cond_2
    iget-object v3, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher3/home/Workspace;->getNextPage()I

    move-result v2

    .restart local v2    # "pageIndex":I
    goto :goto_0
.end method

.method public getQuickOptionFlags(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)I
    .locals 6
    .param p1, "dragObject"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .prologue
    .line 159
    if-nez p1, :cond_1

    const/4 v4, 0x0

    .line 182
    :cond_0
    :goto_0
    return v4

    .line 161
    :cond_1
    iget-object v5, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v0, v5, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 162
    .local v0, "isApp":Z
    iget-object v5, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v1, v5, Lcom/android/launcher3/folder/FolderInfo;

    .line 163
    .local v1, "isFolder":Z
    iget-object v5, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v3, v5, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    .line 164
    .local v3, "isWidget":Z
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v2

    .line 165
    .local v2, "isHomeOnlyMode":Z
    const/4 v4, 0x0

    .line 167
    .local v4, "optionFlags":I
    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    or-int/lit8 v4, v4, 0x1

    .line 168
    :cond_3
    if-nez v0, :cond_4

    if-eqz v1, :cond_5

    :cond_4
    or-int/lit8 v4, v4, 0x20

    .line 169
    :cond_5
    if-eqz v2, :cond_7

    if-nez v0, :cond_6

    if-eqz v1, :cond_7

    :cond_6
    or-int/lit16 v4, v4, 0x1000

    .line 170
    :cond_7
    if-eqz v2, :cond_9

    if-nez v0, :cond_8

    if-eqz v1, :cond_9

    :cond_8
    or-int/lit16 v4, v4, 0x2000

    .line 171
    :cond_9
    if-eqz v0, :cond_a

    or-int/lit8 v4, v4, 0x40

    .line 172
    :cond_a
    if-nez v0, :cond_b

    if-eqz v3, :cond_c

    :cond_b
    or-int/lit16 v4, v4, 0x80

    .line 173
    :cond_c
    if-nez v0, :cond_d

    if-eqz v3, :cond_e

    :cond_d
    or-int/lit8 v4, v4, 0x2

    .line 174
    :cond_e
    if-eqz v0, :cond_f

    or-int/lit16 v4, v4, 0x100

    .line 175
    :cond_f
    if-eqz v0, :cond_10

    or-int/lit16 v4, v4, 0x200

    .line 176
    :cond_10
    if-nez v0, :cond_11

    if-eqz v3, :cond_12

    :cond_11
    or-int/lit16 v4, v4, 0x400

    .line 177
    :cond_12
    if-eqz v1, :cond_13

    if-nez v2, :cond_13

    or-int/lit8 v4, v4, 0x8

    .line 178
    :cond_13
    if-eqz v1, :cond_14

    or-int/lit16 v4, v4, 0x800

    .line 179
    :cond_14
    if-eqz v0, :cond_15

    or-int/lit16 v4, v4, 0x4000

    .line 180
    :cond_15
    if-eqz v0, :cond_0

    const v5, 0x8000

    or-int/2addr v4, v5

    goto :goto_0
.end method

.method public getScrollZone()I
    .locals 2

    .prologue
    .line 1265
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900dc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public getTargetView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1167
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    return-object v0
.end method

.method public getTop()I
    .locals 1

    .prologue
    .line 1182
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->getTop()I

    move-result v0

    return v0
.end method

.method public isDropEnabled(Z)Z
    .locals 1
    .param p1, "isDrop"    # Z

    .prologue
    .line 229
    const/4 v0, 0x1

    return v0
.end method

.method public onDragEnd()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 204
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1}, Lcom/android/launcher3/home/ExternalRequestQueue;->disableAndFlushExternalRequestQueue(Lcom/android/launcher3/Launcher;)V

    .line 206
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-wide v2, v1, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->container:J

    const-wide/16 v4, -0x64

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 208
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    .line 211
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->hideHintPages()V

    .line 213
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->isHomeStage()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    .line 214
    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    .line 215
    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->getState()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    .line 224
    :goto_0
    return v0

    .line 219
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->isDeferRemoveExtraEmptyScreen()Z

    move-result v1

    if-nez v1, :cond_2

    .line 220
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->removeExtraEmptyScreen()V

    .line 223
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/home/Workspace;->updateChildrenLayersEnabled(Z)V

    .line 224
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onDragEnter(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V
    .locals 4
    .param p1, "dragObject"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .param p2, "dropTargetChanged"    # Z

    .prologue
    const/4 v3, 0x1

    .line 971
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->onDragEnter()V

    .line 972
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getIconSize()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->setMaxDistance(I)V

    .line 974
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    .line 975
    invoke-direct {p0}, Lcom/android/launcher3/home/WorkspaceDragController;->getCurrentDropLayout()Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    .line 976
    .local v0, "layout":Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-direct {p0, v0}, Lcom/android/launcher3/home/WorkspaceDragController;->setCurrentDropLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    .line 977
    invoke-direct {p0, v0}, Lcom/android/launcher3/home/WorkspaceDragController;->setCurrentDragOverlappingLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    .line 979
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->showCancelDropTarget()V

    .line 981
    iget-object v1, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    instance-of v1, v1, Lcom/android/launcher3/home/HotseatDragController;

    if-eqz v1, :cond_0

    .line 982
    iget-object v1, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    check-cast v1, Lcom/android/launcher3/home/HotseatDragController;

    invoke-virtual {v1, v3, v3}, Lcom/android/launcher3/home/HotseatDragController;->removeEmptyCells(ZZ)V

    .line 984
    :cond_0
    return-void
.end method

.method public onDragExit(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V
    .locals 3
    .param p1, "dragObject"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .param p2, "dropTargetChanged"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1058
    if-eqz p2, :cond_0

    .line 1059
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mRestorePosition:Z

    .line 1062
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mInScrollArea:Z

    if-eqz v0, :cond_4

    .line 1063
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->isPageMoving()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1066
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->getNextPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    .line 1074
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-nez v0, :cond_1

    .line 1075
    invoke-direct {p0}, Lcom/android/launcher3/home/WorkspaceDragController;->getCurrentDropLayout()Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    .line 1078
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-eq v0, v1, :cond_2

    .line 1079
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mReorderController:Lcom/android/launcher3/home/WorkspaceReorderController;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/WorkspaceReorderController;->setReorderTarget(Lcom/android/launcher3/common/base/view/CellLayout;)V

    .line 1080
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->setReorderTarget(Lcom/android/launcher3/common/base/view/CellLayout;)V

    .line 1083
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    iget v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragMode:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->onDragExit(I)V

    .line 1086
    invoke-direct {p0}, Lcom/android/launcher3/home/WorkspaceDragController;->onResetScrollArea()V

    .line 1087
    invoke-direct {p0, v2}, Lcom/android/launcher3/home/WorkspaceDragController;->setCurrentDropLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    .line 1088
    invoke-direct {p0, v2}, Lcom/android/launcher3/home/WorkspaceDragController;->setCurrentDragOverlappingLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    .line 1089
    return-void

    .line 1068
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragOverlappingLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    goto :goto_0

    .line 1071
    :cond_4
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    goto :goto_0
.end method

.method public onDragOver(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
    .locals 14
    .param p1, "d"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .prologue
    .line 989
    iget-boolean v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mInScrollArea:Z

    if-eqz v0, :cond_1

    .line 1052
    :cond_0
    :goto_0
    return-void

    .line 994
    :cond_1
    iget-object v9, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v9, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 995
    .local v9, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    if-nez v9, :cond_2

    .line 996
    const-string v0, "DropTarget"

    const-string v1, "DragObject has null info"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1000
    :cond_2
    iget-object v8, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    .line 1003
    .local v8, "dragView":Lcom/android/launcher3/common/drag/DragView;
    iget-wide v0, v9, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v2, -0x64

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, v9, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v2, -0x66

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    .line 1005
    :cond_3
    if-eqz v8, :cond_4

    .line 1006
    invoke-virtual {v8}, Lcom/android/launcher3/common/drag/DragView;->getTranslationY()F

    move-result v0

    invoke-virtual {v8}, Lcom/android/launcher3/common/drag/DragView;->getRegistrationY()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {v8}, Lcom/android/launcher3/common/drag/DragView;->getOffsetY()F

    move-result v1

    sub-float v13, v0, v1

    .line 1007
    .local v13, "touchY":F
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0, v13}, Lcom/android/launcher3/home/HomeController;->approachBorderOnDrag(F)V

    .line 1011
    .end local v13    # "touchY":F
    :cond_4
    if-eqz v8, :cond_5

    .line 1012
    invoke-virtual {v8}, Lcom/android/launcher3/common/drag/DragView;->getTranslationX()F

    move-result v0

    invoke-virtual {v8}, Lcom/android/launcher3/common/drag/DragView;->getRegistrationX()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {v8}, Lcom/android/launcher3/common/drag/DragView;->getOffsetX()F

    move-result v1

    sub-float v12, v0, v1

    .line 1013
    .local v12, "touchX":F
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0, v12}, Lcom/android/launcher3/home/Workspace;->dragPullingPages(F)V

    .line 1017
    .end local v12    # "touchX":F
    :cond_5
    iget v0, v9, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    if-ltz v0, :cond_6

    iget v0, v9, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    if-gez v0, :cond_7

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Improper spans found"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1018
    :cond_7
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    invoke-virtual {p1, v0}, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->getVisualCenter([F)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    .line 1020
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    if-nez v0, :cond_c

    const/4 v7, 0x0

    .line 1022
    .local v7, "child":Landroid/view/View;
    :goto_1
    invoke-direct {p0}, Lcom/android/launcher3/home/WorkspaceDragController;->getCurrentDropLayout()Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v10

    .line 1023
    .local v10, "layout":Lcom/android/launcher3/common/base/view/CellLayout;
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-eq v10, v0, :cond_8

    .line 1024
    invoke-direct {p0, v10}, Lcom/android/launcher3/home/WorkspaceDragController;->setCurrentDropLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    .line 1025
    invoke-direct {p0, v10}, Lcom/android/launcher3/home/WorkspaceDragController;->setCurrentDragOverlappingLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    .line 1029
    :cond_8
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-eqz v0, :cond_0

    .line 1031
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/home/Workspace;->mapPointFromSelfToChild(Landroid/view/View;[F)V

    .line 1032
    invoke-static {v9}, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->getSpanInfo(Lcom/android/launcher3/common/base/item/ItemInfo;)Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;

    move-result-object v11

    .line 1034
    .local v11, "spanInfo":Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    float-to-int v2, v2

    iget v3, v11, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->minSpanX:I

    iget v4, v11, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->minSpanY:I

    iget-object v5, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/common/base/view/CellLayout;->findNearestArea(IIII[I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    .line 1037
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget v1, v9, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iget v1, v9, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    if-eq v0, v1, :cond_a

    .line 1038
    :cond_9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mRestorePosition:Z

    .line 1041
    :cond_a
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/home/WorkspaceDragController;->setCurrentDropOverCell(II)V

    .line 1043
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    iget-object v4, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget v5, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragMode:I

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->onDragOver([F[ILcom/android/launcher3/common/drag/DropTarget$DragObject;Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;I)V

    .line 1045
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mReorderController:Lcom/android/launcher3/home/WorkspaceReorderController;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    iget v6, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragMode:I

    move-object v3, v11

    move-object v4, p1

    move-object v5, v7

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/home/WorkspaceReorderController;->startReorder([F[ILcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;Lcom/android/launcher3/common/drag/DropTarget$DragObject;Landroid/view/View;I)Z

    .line 1048
    iget v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_b

    iget v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1049
    :cond_b
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mReorderController:Lcom/android/launcher3/home/WorkspaceReorderController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/WorkspaceReorderController;->revertTempState()V

    goto/16 :goto_0

    .line 1020
    .end local v7    # "child":Landroid/view/View;
    .end local v10    # "layout":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v11    # "spanInfo":Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;
    :cond_c
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v7, v0, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    goto/16 :goto_1
.end method

.method public onDragStart(Lcom/android/launcher3/common/drag/DragSource;Ljava/lang/Object;I)Z
    .locals 3
    .param p1, "source"    # Lcom/android/launcher3/common/drag/DragSource;
    .param p2, "info"    # Ljava/lang/Object;
    .param p3, "dragAction"    # I

    .prologue
    const/4 v0, 0x0

    .line 188
    invoke-static {}, Lcom/android/launcher3/home/ExternalRequestQueue;->enableExternalRequestQueue()V

    .line 189
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/home/Workspace;->setDeferRemoveExtraEmptyScreen(Z)V

    .line 191
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    .line 192
    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->getState()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    .line 198
    :goto_0
    return v0

    .line 196
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/home/Workspace;->updateChildrenLayersEnabled(Z)V

    .line 197
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->addExtraEmptyScreenOnDrag()V

    .line 198
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onDrop(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
    .locals 3
    .param p1, "d"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    invoke-virtual {p1, v0}, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->getVisualCenter([F)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    .line 237
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/home/Workspace;->mapPointFromSelfToChild(Landroid/view/View;[F)V

    .line 244
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    if-nez v0, :cond_1

    .line 245
    invoke-direct {p0, p1}, Lcom/android/launcher3/home/WorkspaceDragController;->onDropExternal(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V

    .line 250
    :goto_1
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->forcelyAnimateReturnPages()V

    .line 251
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/HomeController;->showMoveToAppsPanel(Z)V

    .line 252
    return-void

    .line 241
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/home/WorkspaceDragController;->getCurrentDropLayout()Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    goto :goto_0

    .line 247
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/launcher3/home/WorkspaceDragController;->onDropInternal(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V

    goto :goto_1
.end method

.method public onDropCompleted(Landroid/view/View;Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V
    .locals 11
    .param p1, "target"    # Landroid/view/View;
    .param p2, "d"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .param p3, "success"    # Z

    .prologue
    const/4 v5, 0x0

    .line 1202
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    if-nez v0, :cond_0

    .line 1261
    :goto_0
    return-void

    .line 1204
    :cond_0
    if-eqz p3, :cond_5

    .line 1205
    instance-of v0, p1, Lcom/android/launcher3/folder/view/FolderView;

    if-eqz v0, :cond_1

    .line 1206
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v9, v0, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->layout:Lcom/android/launcher3/common/base/view/CellLayout;

    .line 1207
    .local v9, "cellLayout":Lcom/android/launcher3/common/base/view/CellLayout;
    if-eqz v9, :cond_1

    .line 1208
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->layout:Lcom/android/launcher3/common/base/view/CellLayout;

    iget-object v3, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v3, v3, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/common/base/view/CellLayout;->removeView(Landroid/view/View;)V

    .line 1237
    .end local v9    # "cellLayout":Lcom/android/launcher3/common/base/view/CellLayout;
    :cond_1
    :goto_1
    iget-boolean v0, p2, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-boolean v0, p2, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelDropFolder:Z

    if-nez v0, :cond_2

    .line 1238
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1241
    :cond_2
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportQuickOption()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 1242
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/drag/DragManager;->isQuickOptionShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1243
    const/4 v8, 0x0

    .line 1244
    .local v8, "canEnterResizeMode":Z
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    instance-of v0, v0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    if-eqz v0, :cond_3

    .line 1245
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v10, v0, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    check-cast v10, Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    .line 1246
    .local v10, "hostView":Lcom/android/launcher3/home/LauncherAppWidgetHostView;
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    iget-object v3, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    .line 1247
    invoke-virtual {v0, v10, v3, v5}, Lcom/android/launcher3/home/HomeController;->canEnterResizeMode(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/common/base/view/CellLayout;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1248
    const/4 v8, 0x1

    .line 1251
    .end local v10    # "hostView":Lcom/android/launcher3/home/LauncherAppWidgetHostView;
    :cond_3
    if-nez v8, :cond_7

    .line 1252
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getQuickOptionManager()Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->startBounceAnimation()V

    .line 1258
    .end local v8    # "canEnterResizeMode":Z
    :cond_4
    :goto_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    .line 1260
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0, v5}, Lcom/android/launcher3/home/HomeController;->showMoveToAppsPanel(Z)V

    goto :goto_0

    .line 1212
    :cond_5
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v9, v0, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->layout:Lcom/android/launcher3/common/base/view/CellLayout;

    .line 1213
    .restart local v9    # "cellLayout":Lcom/android/launcher3/common/base/view/CellLayout;
    if-eqz v9, :cond_6

    .line 1214
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v9, v0}, Lcom/android/launcher3/common/base/view/CellLayout;->onDropChild(Landroid/view/View;)V

    .line 1219
    :goto_3
    iget-boolean v0, p2, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelled:Z

    if-nez v0, :cond_1

    iget-object v0, p2, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    if-eqz v0, :cond_1

    .line 1220
    new-instance v4, Lcom/android/launcher3/home/WorkspaceDragController$12;

    invoke-direct {v4, p0}, Lcom/android/launcher3/home/WorkspaceDragController$12;-><init>(Lcom/android/launcher3/home/WorkspaceDragController;)V

    .line 1226
    .local v4, "exitDragStateRunnable":Ljava/lang/Runnable;
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v0, :cond_1

    .line 1227
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1228
    .local v1, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 1229
    .local v2, "parent":Lcom/android/launcher3/common/base/view/CellLayout;
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    iget v3, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    aput v3, v0, v5

    .line 1230
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v3, 0x1

    iget v6, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    aput v6, v0, v3

    .line 1231
    iget-object v3, p2, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v6, v0, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    move-object v0, p0

    move v7, v5

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/home/WorkspaceDragController;->animateWidgetDrop(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/drag/DragView;Ljava/lang/Runnable;ILandroid/view/View;Z)V

    goto/16 :goto_1

    .line 1216
    .end local v1    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v2    # "parent":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v4    # "exitDragStateRunnable":Ljava/lang/Runnable;
    :cond_6
    const-string v0, "DropTarget"

    const-string v3, "Invalid state: cellLayout == null"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1254
    .end local v9    # "cellLayout":Lcom/android/launcher3/common/base/view/CellLayout;
    .restart local v8    # "canEnterResizeMode":Z
    :cond_7
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/drag/DragManager;->enableQuickOptionView()V

    goto :goto_2
.end method

.method public onEnterScrollArea(III)Z
    .locals 10
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "direction"    # I

    .prologue
    const/4 v4, 0x1

    .line 1300
    const/4 v2, 0x0

    .line 1301
    .local v2, "result":Z
    iget-object v3, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v3}, Lcom/android/launcher3/home/HomeController;->isSwitchingState()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getOpenFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    .line 1302
    invoke-virtual {v3}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v3

    if-nez v3, :cond_0

    if-eqz p3, :cond_4

    .line 1304
    :cond_0
    iget-object v3, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher3/home/Workspace;->getNextPage()I

    move-result v5

    if-nez p3, :cond_2

    const/4 v3, -0x1

    :goto_0
    add-int v1, v5, v3

    .line 1307
    .local v1, "page":I
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/launcher3/home/WorkspaceDragController;->setCurrentDropLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    .line 1309
    if-ltz v1, :cond_4

    iget-object v3, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 1311
    iget-object v3, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v3, v1}, Lcom/android/launcher3/home/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v6

    const-wide/16 v8, -0x12d

    cmp-long v3, v6, v8

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    .line 1312
    invoke-virtual {v3, v1}, Lcom/android/launcher3/home/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v6

    const-wide/16 v8, -0x1f5

    cmp-long v3, v6, v8

    if-nez v3, :cond_3

    .line 1313
    :cond_1
    const/4 v3, 0x0

    .line 1326
    .end local v1    # "page":I
    :goto_1
    return v3

    :cond_2
    move v3, v4

    .line 1304
    goto :goto_0

    .line 1316
    .restart local v1    # "page":I
    :cond_3
    iput-boolean v4, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mInScrollArea:Z

    .line 1317
    iget-object v3, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v3, v1}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 1318
    .local v0, "layout":Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-direct {p0, v0}, Lcom/android/launcher3/home/WorkspaceDragController;->setCurrentDragOverlappingLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    .line 1322
    iget-object v3, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher3/home/Workspace;->invalidate()V

    .line 1323
    const/4 v2, 0x1

    .end local v0    # "layout":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v1    # "page":I
    :cond_4
    move v3, v2

    .line 1326
    goto :goto_1
.end method

.method public onExitScrollArea()Z
    .locals 3

    .prologue
    .line 1331
    const/4 v1, 0x0

    .line 1332
    .local v1, "result":Z
    iget-boolean v2, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mInScrollArea:Z

    if-eqz v2, :cond_0

    .line 1333
    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/home/Workspace;->invalidate()V

    .line 1334
    invoke-direct {p0}, Lcom/android/launcher3/home/WorkspaceDragController;->getCurrentDropLayout()Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    .line 1335
    .local v0, "layout":Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-direct {p0, v0}, Lcom/android/launcher3/home/WorkspaceDragController;->setCurrentDropLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    .line 1336
    invoke-direct {p0, v0}, Lcom/android/launcher3/home/WorkspaceDragController;->setCurrentDragOverlappingLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    .line 1338
    const/4 v1, 0x1

    .line 1339
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mInScrollArea:Z

    .line 1341
    .end local v0    # "layout":Lcom/android/launcher3/common/base/view/CellLayout;
    :cond_0
    return v1
.end method

.method public onExtraObjectDragged(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1684
    .local p1, "extraDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    if-eqz p1, :cond_1

    .line 1685
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .line 1686
    .local v0, "d":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    iget-object v4, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v4}, Lcom/android/launcher3/common/drag/DragView;->getSourceView()Landroid/view/View;

    move-result-object v2

    .line 1687
    .local v2, "sourceView":Landroid/view/View;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1688
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 1689
    .local v1, "layout":Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-virtual {v1, v2}, Lcom/android/launcher3/common/base/view/CellLayout;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 1693
    .end local v0    # "d":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .end local v1    # "layout":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v2    # "sourceView":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public onExtraObjectDropCompleted(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 10
    .param p1, "target"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "succeedDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    .local p3, "failedDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    const/4 v3, 0x0

    .line 1698
    if-eqz p2, :cond_1

    .line 1699
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getCloneItemEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/android/launcher3/home/Workspace;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/android/launcher3/home/Hotseat;

    if-nez v0, :cond_1

    .line 1701
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .line 1702
    .local v7, "d":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    if-eqz v7, :cond_0

    iget-object v1, v7, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 1703
    iget-object v1, v7, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v1}, Lcom/android/launcher3/common/drag/DragView;->getSourceView()Landroid/view/View;

    move-result-object v9

    .line 1704
    .local v9, "sourceView":Landroid/view/View;
    iget-object v8, v7, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v8, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1705
    .local v8, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1, v8, v9}, Lcom/android/launcher3/home/HomeController;->removeHomeOrFolderItem(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;)Z

    goto :goto_0

    .line 1709
    .end local v7    # "d":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .end local v8    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v9    # "sourceView":Landroid/view/View;
    :cond_1
    if-eqz p3, :cond_2

    .line 1710
    const/4 v2, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p3

    move v5, v3

    move v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/home/WorkspaceDragController;->onDropExtraObjects(Ljava/util/ArrayList;Ljava/lang/Runnable;ZZZZ)V

    .line 1712
    :cond_2
    return-void
.end method

.method public onFlingToMove(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
    .locals 21
    .param p1, "d"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .prologue
    .line 1092
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v15, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1096
    .local v15, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget v2, v15, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    packed-switch v2, :pswitch_data_0

    .line 1112
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown item type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v15, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1099
    :pswitch_0
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getCloneItemEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v2, v15

    check-cast v2, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 1100
    invoke-virtual {v2}, Lcom/android/launcher3/common/base/item/IconInfo;->makeCloneInfo()Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v18

    .line 1101
    .local v18, "localInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeController;->getBindController()Lcom/android/launcher3/home/HomeBindController;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v2, v18

    check-cast v2, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v3, v4, v2}, Lcom/android/launcher3/home/HomeBindController;->createShortcut(Landroid/view/ViewGroup;Lcom/android/launcher3/common/base/item/IconInfo;)Landroid/view/View;

    move-result-object v20

    .line 1115
    .local v20, "view":Landroid/view/View;
    :goto_1
    move-object/from16 v0, v18

    if-eq v15, v0, :cond_0

    .line 1116
    move-object/from16 v15, v18

    .line 1119
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/home/WorkspaceDragController;->getCurrentDropLayout()Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    .line 1121
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher3/home/WorkspaceDragController;->findEmptyCellForExtraDragObject([IZZZZ)Z

    .line 1123
    const-wide/16 v16, -0x64

    .line 1124
    .local v16, "container":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/home/Workspace;->getIdForScreen(Lcom/android/launcher3/common/base/view/CellLayout;)J

    move-result-wide v6

    .line 1126
    .local v6, "screenId":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher3/home/Workspace;->getNextPage()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/home/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-eqz v2, :cond_1

    .line 1127
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v2, v6, v7}, Lcom/android/launcher3/home/Workspace;->getPageIndexForScreenId(J)I

    move-result v19

    .line 1128
    .local v19, "snapScreen":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/android/launcher3/home/Workspace;->snapToPage(I)V

    .line 1131
    .end local v19    # "snapScreen":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const-wide/16 v4, -0x64

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v8, 0x0

    aget v8, v3, v8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v9, 0x1

    aget v9, v3, v9

    const/4 v10, -0x1

    move-object v3, v15

    invoke-virtual/range {v2 .. v10}, Lcom/android/launcher3/home/HomeController;->addOrMoveItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJIII)V

    .line 1132
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getCloneItemEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    instance-of v2, v15, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v2, :cond_2

    .line 1133
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    new-instance v4, Ljava/util/ArrayList;

    move-object v2, v15

    check-cast v2, Lcom/android/launcher3/folder/FolderInfo;

    iget-object v2, v2, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-wide v8, v15, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    invoke-virtual {v3, v4, v8, v9}, Lcom/android/launcher3/home/HomeController;->addFolderItemsToDb(Ljava/util/ArrayList;J)V

    .line 1134
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    if-eqz v2, :cond_2

    move-object v2, v15

    check-cast v2, Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/FolderInfo;->isLocked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1135
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    move-object v2, v15

    check-cast v2, Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/folder/folderlock/FolderLock;->addLockedRecords(Lcom/android/launcher3/folder/FolderInfo;)V

    .line 1139
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const-wide/16 v4, -0x64

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v8, 0x0

    aget v8, v3, v8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v9, 0x1

    aget v9, v3, v9

    iget v10, v15, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    iget v11, v15, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move-object/from16 v3, v20

    invoke-virtual/range {v2 .. v11}, Lcom/android/launcher3/home/HomeController;->addInScreen(Landroid/view/View;JJIIII)V

    .line 1140
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v2}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->measureChild(Landroid/view/View;)V

    .line 1142
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    .line 1143
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v14}, Lcom/android/launcher3/home/WorkspaceDragController;->onDropExtraObjects(Ljava/util/ArrayList;Ljava/lang/Runnable;ZZZZ)V

    .line 1145
    :cond_3
    return-void

    .end local v6    # "screenId":J
    .end local v16    # "container":J
    .end local v18    # "localInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v20    # "view":Landroid/view/View;
    :cond_4
    move-object/from16 v18, v15

    .line 1100
    goto/16 :goto_0

    .line 1105
    :pswitch_1
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getCloneItemEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    move-object v2, v15

    check-cast v2, Lcom/android/launcher3/folder/FolderInfo;

    .line 1106
    invoke-virtual {v2}, Lcom/android/launcher3/folder/FolderInfo;->makeCloneInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v18

    .line 1107
    .restart local v18    # "localInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v4, v18

    check-cast v4, Lcom/android/launcher3/folder/FolderInfo;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/android/launcher3/folder/view/FolderIconView;->fromXml(Lcom/android/launcher3/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher3/folder/FolderInfo;Lcom/android/launcher3/common/base/controller/ControllerBase;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;I)Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v20

    .line 1110
    .restart local v20    # "view":Landroid/view/View;
    goto/16 :goto_1

    .end local v18    # "localInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v20    # "view":Landroid/view/View;
    :cond_5
    move-object/from16 v18, v15

    .line 1106
    goto :goto_2

    .line 1096
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public scrollLeft()V
    .locals 2

    .prologue
    .line 1270
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mRestorePosition:Z

    .line 1272
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->canDragScroll()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1273
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->isSwitchingState()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1274
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->scrollLeft()V

    .line 1276
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getOpenFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v0

    .line 1277
    .local v0, "openFolder":Lcom/android/launcher3/folder/view/FolderView;
    if-eqz v0, :cond_1

    .line 1278
    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderView;->completeDragExit()V

    .line 1281
    .end local v0    # "openFolder":Lcom/android/launcher3/folder/view/FolderView;
    :cond_1
    return-void
.end method

.method public scrollRight()V
    .locals 2

    .prologue
    .line 1285
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mRestorePosition:Z

    .line 1287
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->canDragScroll()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1288
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->isSwitchingState()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1289
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->scrollRight()V

    .line 1291
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getOpenFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v0

    .line 1292
    .local v0, "openFolder":Lcom/android/launcher3/folder/view/FolderView;
    if-eqz v0, :cond_1

    .line 1293
    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderView;->completeDragExit()V

    .line 1296
    .end local v0    # "openFolder":Lcom/android/launcher3/folder/view/FolderView;
    :cond_1
    return-void
.end method

.method public setDragMode(I)V
    .locals 3
    .param p1, "dragMode"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1351
    iget v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragMode:I

    if-eq p1, v0, :cond_1

    .line 1352
    if-nez p1, :cond_2

    .line 1355
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mReorderController:Lcom/android/launcher3/home/WorkspaceReorderController;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/WorkspaceReorderController;->cleanupReorder(Z)V

    .line 1356
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->cleanup()V

    .line 1368
    :cond_0
    :goto_0
    iput p1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragMode:I

    .line 1370
    :cond_1
    return-void

    .line 1357
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 1358
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mReorderController:Lcom/android/launcher3/home/WorkspaceReorderController;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/home/WorkspaceReorderController;->cleanupReorder(Z)V

    goto :goto_0

    .line 1359
    :cond_3
    if-ne p1, v2, :cond_4

    .line 1360
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mReorderController:Lcom/android/launcher3/home/WorkspaceReorderController;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/home/WorkspaceReorderController;->cleanupReorder(Z)V

    goto :goto_0

    .line 1361
    :cond_4
    const/4 v0, 0x3

    if-ne p1, v0, :cond_5

    .line 1362
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->cleanup()V

    goto :goto_0

    .line 1363
    :cond_5
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1364
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mReorderController:Lcom/android/launcher3/home/WorkspaceReorderController;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/WorkspaceReorderController;->cleanupReorder(Z)V

    .line 1365
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->cleanup()V

    .line 1366
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/HomeController;->enterNormalState(Z)V

    goto :goto_0
.end method

.method setup(Lcom/android/launcher3/common/drag/DragManager;Lcom/android/launcher3/common/view/DragLayer;Lcom/android/launcher3/home/HomeController;)V
    .locals 2
    .param p1, "dragMgr"    # Lcom/android/launcher3/common/drag/DragManager;
    .param p2, "dragLayer"    # Lcom/android/launcher3/common/view/DragLayer;
    .param p3, "homeController"    # Lcom/android/launcher3/home/HomeController;

    .prologue
    .line 135
    iput-object p2, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    .line 136
    iput-object p3, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    .line 138
    new-instance v0, Lcom/android/launcher3/home/WorkspaceReorderController;

    invoke-direct {v0, p0}, Lcom/android/launcher3/home/WorkspaceReorderController;-><init>(Lcom/android/launcher3/common/drag/DragState;)V

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mReorderController:Lcom/android/launcher3/home/WorkspaceReorderController;

    .line 139
    new-instance v0, Lcom/android/launcher3/folder/controller/FolderIconDropController;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v0, v1, p0}, Lcom/android/launcher3/folder/controller/FolderIconDropController;-><init>(Landroid/content/Context;Lcom/android/launcher3/common/drag/DragState;)V

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    .line 140
    return-void
.end method

.method startDrag(Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;ZZ)Z
    .locals 4
    .param p1, "cellInfo"    # Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;
    .param p2, "isSource"    # Z
    .param p3, "fromEmptyCell"    # Z

    .prologue
    const/4 v3, 0x1

    .line 143
    iget-object v0, p1, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 145
    .local v0, "child":Landroid/view/View;
    iput-object p1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    .line 147
    if-eqz p2, :cond_0

    .line 148
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 149
    .local v1, "layout":Lcom/android/launcher3/common/base/view/CellLayout;
    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mReorderController:Lcom/android/launcher3/home/WorkspaceReorderController;

    invoke-virtual {v2, v1, v0}, Lcom/android/launcher3/home/WorkspaceReorderController;->prepareChildForDrag(Lcom/android/launcher3/common/base/view/CellLayout;Landroid/view/View;)V

    .line 152
    .end local v1    # "layout":Lcom/android/launcher3/common/base/view/CellLayout;
    :cond_0
    if-nez p3, :cond_1

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mRestorePosition:Z

    .line 154
    return v3

    .line 152
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
