.class public Lcom/android/launcher3/allapps/controller/AppsDragController;
.super Ljava/lang/Object;
.source "AppsDragController.java"

# interfaces
.implements Lcom/android/launcher3/common/drag/DropTarget;
.implements Lcom/android/launcher3/common/drag/DragSource;
.implements Lcom/android/launcher3/common/drag/DragScroller;
.implements Lcom/android/launcher3/common/drag/DragState;
.implements Lcom/android/launcher3/common/drag/DragManager$DragListener;


# static fields
.field public static final ADJACENT_SCREEN_DROP_DURATION:I = 0x12c

.field private static final REORDER_DELAY:I = 0xfa

.field private static final TAG:Ljava/lang/String; = "AppsDragController"

.field private static final sTempPosArray:[I


# instance fields
.field private mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

.field private mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

.field private mAppsReorderController:Lcom/android/launcher3/allapps/controller/AppsReorderController;

.field private mDragComplete:Z

.field private mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

.field private mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

.field private mDragMode:I

.field private mDragOverlappingLayout:Lcom/android/launcher3/common/base/view/CellLayout;

.field private mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

.field private mDragViewVisualCenter:[F

.field private mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

.field private mEmpty:Lcom/android/launcher3/allapps/controller/DragAppIcon;

.field private mFakeViewHeight:I

.field private mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

.field private mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

.field private mInScrollArea:Z

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mPrevTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

.field private final mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

.field mReorderAlarmListener:Lcom/android/launcher3/util/alarm/OnAlarmListener;

.field private mRestorePositionOnDrop:Z

.field private mTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

.field private mTargetCell:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->sTempPosArray:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/allapps/view/AppsPagedView;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appsPagedView"    # Lcom/android/launcher3/allapps/view/AppsPagedView;

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragViewVisualCenter:[F

    .line 76
    iput-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    .line 77
    iput-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragOverlappingLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    .line 78
    iput-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    .line 80
    iput v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragMode:I

    .line 83
    iput-boolean v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mRestorePositionOnDrop:Z

    .line 90
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTargetCell:[I

    .line 91
    new-instance v0, Lcom/android/launcher3/allapps/controller/DragAppIcon;

    invoke-direct {v0}, Lcom/android/launcher3/allapps/controller/DragAppIcon;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    .line 92
    new-instance v0, Lcom/android/launcher3/allapps/controller/DragAppIcon;

    invoke-direct {v0}, Lcom/android/launcher3/allapps/controller/DragAppIcon;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mPrevTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    .line 93
    new-instance v0, Lcom/android/launcher3/allapps/controller/DragAppIcon;

    invoke-direct {v0}, Lcom/android/launcher3/allapps/controller/DragAppIcon;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    .line 94
    new-instance v0, Lcom/android/launcher3/util/alarm/Alarm;

    invoke-direct {v0}, Lcom/android/launcher3/util/alarm/Alarm;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    .line 95
    iput-boolean v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mInScrollArea:Z

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragComplete:Z

    .line 1482
    new-instance v0, Lcom/android/launcher3/allapps/controller/AppsDragController$6;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/controller/AppsDragController$6;-><init>(Lcom/android/launcher3/allapps/controller/AppsDragController;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mReorderAlarmListener:Lcom/android/launcher3/util/alarm/OnAlarmListener;

    .line 106
    check-cast p1, Lcom/android/launcher3/Launcher;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 107
    iput-object p2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    .line 108
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090144

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mFakeViewHeight:I

    .line 110
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFolderLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    invoke-static {}, Lcom/android/launcher3/folder/folderlock/FolderLock;->getInstance()Lcom/android/launcher3/folder/folderlock/FolderLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    .line 113
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/controller/AppsController;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/controller/AppsDragController;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/Launcher;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/controller/AppsDragController;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/controller/DragAppIcon;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/controller/AppsDragController;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/launcher3/allapps/controller/AppsDragController;Lcom/android/launcher3/allapps/controller/DragAppIcon;)Lcom/android/launcher3/allapps/controller/DragAppIcon;
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/allapps/controller/AppsDragController;
    .param p1, "x1"    # Lcom/android/launcher3/allapps/controller/DragAppIcon;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/controller/DragAppIcon;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/controller/AppsDragController;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/controller/AppsReorderController;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/controller/AppsDragController;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsReorderController:Lcom/android/launcher3/allapps/controller/AppsReorderController;

    return-object v0
.end method

.method private addRightSideIconsOfDropItem(Ljava/util/ArrayList;)V
    .locals 13
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
    .line 797
    .local p1, "deletedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 799
    .local v7, "d":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object v8, v7

    .line 801
    .local v8, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getIdForScreen(Lcom/android/launcher3/common/base/view/CellLayout;)J

    move-result-wide v0

    long-to-int v9, v0

    .line 803
    .local v9, "pageNum":I
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0, v9}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getItemCountPageAt(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getMaxItemsPerScreen()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 804
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->hasExtraEmptyScreen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 805
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->addExtraEmptyScreenOnDrag()V

    .line 807
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->commitExtraEmptyScreen()I

    move-result v9

    .line 810
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0, v9}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    .line 812
    iget v0, v8, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    packed-switch v0, :pswitch_data_0

    .line 824
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown item type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v8, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 814
    :pswitch_1
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object v2, v8

    check-cast v2, Lcom/android/launcher3/common/base/item/IconInfo;

    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    .line 815
    invoke-virtual {v5}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsFocusListener()Lcom/android/launcher3/allapps/controller/AppsFocusListener;

    move-result-object v5

    .line 814
    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/allapps/AppsUtils;->createAppIcon(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/android/launcher3/common/base/item/IconInfo;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;Lcom/android/launcher3/allapps/controller/AppsFocusListener;)Landroid/view/View;

    move-result-object v11

    .line 827
    .local v11, "view":Landroid/view/View;
    :goto_1
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->isAlphabeticalMode()Z

    move-result v0

    if-nez v0, :cond_3

    .line 828
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0, v9}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getRankForNewItem(I)I

    move-result v0

    iput v0, v8, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    .line 829
    int-to-long v0, v9

    iput-wide v0, v8, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    .line 830
    const/4 v0, 0x1

    iput-boolean v0, v8, Lcom/android/launcher3/common/base/item/ItemInfo;->mDirty:Z

    .line 832
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v0, v11, v8}, Lcom/android/launcher3/allapps/controller/AppsController;->addItem(Landroid/view/View;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 834
    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 835
    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 836
    .local v10, "parent":Lcom/android/launcher3/common/base/view/CellLayout;
    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Landroid/view/View;->setVisibility(I)V

    .line 837
    invoke-virtual {v10, v11}, Lcom/android/launcher3/common/base/view/CellLayout;->onDropChild(Landroid/view/View;)V

    .line 838
    invoke-virtual {v10}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->measureChild(Landroid/view/View;)V

    goto/16 :goto_0

    .line 819
    .end local v10    # "parent":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v11    # "view":Landroid/view/View;
    :pswitch_2
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object v2, v8

    check-cast v2, Lcom/android/launcher3/folder/FolderInfo;

    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    const/4 v6, 0x2

    invoke-static/range {v0 .. v6}, Lcom/android/launcher3/folder/view/FolderIconView;->fromXml(Lcom/android/launcher3/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher3/folder/FolderInfo;Lcom/android/launcher3/common/base/controller/ControllerBase;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;I)Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v11

    .line 821
    .restart local v11    # "view":Landroid/view/View;
    goto :goto_1

    .line 841
    .end local v7    # "d":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v8    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v9    # "pageNum":I
    .end local v11    # "view":Landroid/view/View;
    :cond_4
    return-void

    .line 812
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private addRightSidePageOfDropItem(Ljava/util/ArrayList;)V
    .locals 18
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
    .line 723
    .local p1, "deletedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    const/4 v11, 0x0

    .line 724
    .local v11, "firstPage":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getIdForScreen(Lcom/android/launcher3/common/base/view/CellLayout;)J

    move-result-wide v2

    long-to-int v13, v2

    .line 726
    .local v13, "pageNum":I
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_3

    .line 727
    move v11, v13

    .line 736
    :goto_0
    move v15, v11

    .line 738
    .local v15, "prevItemPage":I
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_0
    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 740
    .local v10, "d":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object v12, v10

    .line 743
    .local v12, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-wide v2, v10, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    long-to-int v9, v2

    .line 744
    .local v9, "currentItemPage":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getIdForScreen(Lcom/android/launcher3/common/base/view/CellLayout;)J

    move-result-wide v2

    long-to-int v13, v2

    .line 745
    int-to-long v2, v11

    iget-wide v4, v10, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    .line 746
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2, v13}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getItemCountPageAt(I)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getMaxItemsPerScreen()I

    move-result v3

    if-lt v2, v3, :cond_2

    .line 747
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->hasExtraEmptyScreen()Z

    move-result v2

    if-nez v2, :cond_1

    .line 748
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->addExtraEmptyScreenOnDrag()V

    .line 750
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->commitExtraEmptyScreen()I

    move-result v13

    .line 762
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2, v13}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    .line 764
    iget v2, v12, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    packed-switch v2, :pswitch_data_0

    .line 776
    :pswitch_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown item type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v12, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 729
    .end local v9    # "currentItemPage":I
    .end local v10    # "d":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v12    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v15    # "prevItemPage":I
    :cond_3
    if-lt v13, v11, :cond_4

    .line 730
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v2, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    long-to-int v11, v2

    goto/16 :goto_0

    .line 732
    :cond_4
    move v11, v13

    goto/16 :goto_0

    .line 753
    .restart local v9    # "currentItemPage":I
    .restart local v10    # "d":Lcom/android/launcher3/common/base/item/ItemInfo;
    .restart local v12    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .restart local v15    # "prevItemPage":I
    :cond_5
    if-eq v15, v9, :cond_2

    .line 754
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->hasExtraEmptyScreen()Z

    move-result v2

    if-nez v2, :cond_6

    .line 755
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->addExtraEmptyScreenOnDrag()V

    .line 757
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->commitExtraEmptyScreen()I

    move-result v13

    .line 758
    iget-wide v2, v10, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    long-to-int v15, v2

    goto :goto_2

    .line 766
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object v4, v12

    check-cast v4, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    .line 767
    invoke-virtual {v7}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsFocusListener()Lcom/android/launcher3/allapps/controller/AppsFocusListener;

    move-result-object v7

    .line 766
    invoke-static/range {v2 .. v7}, Lcom/android/launcher3/allapps/AppsUtils;->createAppIcon(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/android/launcher3/common/base/item/IconInfo;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;Lcom/android/launcher3/allapps/controller/AppsFocusListener;)Landroid/view/View;

    move-result-object v16

    .line 779
    .local v16, "view":Landroid/view/View;
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/controller/AppsController;->isAlphabeticalMode()Z

    move-result v2

    if-nez v2, :cond_7

    .line 780
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2, v13}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getRankForNewItem(I)I

    move-result v2

    iput v2, v12, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    .line 781
    int-to-long v2, v13

    iput-wide v2, v12, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    .line 782
    const/4 v2, 0x1

    iput-boolean v2, v12, Lcom/android/launcher3/common/base/item/ItemInfo;->mDirty:Z

    .line 785
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v12}, Lcom/android/launcher3/allapps/controller/AppsController;->addItem(Landroid/view/View;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 787
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 788
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    check-cast v14, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 789
    .local v14, "parent":Lcom/android/launcher3/common/base/view/CellLayout;
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 790
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/android/launcher3/common/base/view/CellLayout;->onDropChild(Landroid/view/View;)V

    .line 791
    invoke-virtual {v14}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->measureChild(Landroid/view/View;)V

    goto/16 :goto_1

    .line 771
    .end local v14    # "parent":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v16    # "view":Landroid/view/View;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object v4, v12

    check-cast v4, Lcom/android/launcher3/folder/FolderInfo;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    const/4 v8, 0x2

    invoke-static/range {v2 .. v8}, Lcom/android/launcher3/folder/view/FolderIconView;->fromXml(Lcom/android/launcher3/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher3/folder/FolderInfo;Lcom/android/launcher3/common/base/controller/ControllerBase;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;I)Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v16

    .line 773
    .restart local v16    # "view":Landroid/view/View;
    goto :goto_3

    .line 794
    .end local v9    # "currentItemPage":I
    .end local v10    # "d":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v12    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v16    # "view":Landroid/view/View;
    :cond_8
    return-void

    .line 764
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private getCurrentDropLayout()Lcom/android/launcher3/common/base/view/CellLayout;
    .locals 2

    .prologue
    .line 1419
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getNextPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    return-object v0
.end method

.method private getTargetRank(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)I
    .locals 3
    .param p1, "d"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .prologue
    .line 944
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragViewVisualCenter:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragViewVisualCenter:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/allapps/controller/AppsDragController;->findNearestArea(II)I

    move-result v0

    return v0
.end method

.method private onDropExternal(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
    .locals 36
    .param p1, "d"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .prologue
    .line 317
    new-instance v21, Lcom/android/launcher3/allapps/controller/AppsDragController$2;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher3/allapps/controller/AppsDragController$2;-><init>(Lcom/android/launcher3/allapps/controller/AppsDragController;)V

    .line 324
    .local v21, "exitDragStateRunnable":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-nez v4, :cond_0

    .line 325
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget-wide v4, v4, Lcom/android/launcher3/allapps/controller/DragAppIcon;->screenId:J

    const-wide/16 v8, -0x1

    cmp-long v4, v4, v8

    if-eqz v4, :cond_1

    .line 326
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v5}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getNextPage()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    .line 327
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget v5, v5, Lcom/android/launcher3/allapps/controller/DragAppIcon;->rank:I

    iput v5, v4, Lcom/android/launcher3/allapps/controller/DragAppIcon;->rank:I

    .line 328
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget-wide v8, v5, Lcom/android/launcher3/allapps/controller/DragAppIcon;->screenId:J

    iput-wide v8, v4, Lcom/android/launcher3/allapps/controller/DragAppIcon;->screenId:J

    .line 329
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget v5, v5, Lcom/android/launcher3/allapps/controller/DragAppIcon;->cellX:I

    iput v5, v4, Lcom/android/launcher3/allapps/controller/DragAppIcon;->cellX:I

    .line 330
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget v5, v5, Lcom/android/launcher3/allapps/controller/DragAppIcon;->cellY:I

    iput v5, v4, Lcom/android/launcher3/allapps/controller/DragAppIcon;->cellY:I

    .line 331
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsReorderController:Lcom/android/launcher3/allapps/controller/AppsReorderController;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget-wide v8, v5, Lcom/android/launcher3/allapps/controller/DragAppIcon;->screenId:J

    long-to-int v5, v8

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget v6, v6, Lcom/android/launcher3/allapps/controller/DragAppIcon;->rank:I

    invoke-virtual {v4, v5, v6}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->makeEmptyCellAndReorder(II)V

    .line 332
    const-string v4, "AppsDragController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "drop through FakeView - empty to target : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget-wide v8, v6, Lcom/android/launcher3/allapps/controller/DragAppIcon;->screenId:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget v6, v6, Lcom/android/launcher3/allapps/controller/DragAppIcon;->rank:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :cond_0
    :goto_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 379
    .local v26, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragViewVisualCenter:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    float-to-int v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragViewVisualCenter:[F

    const/4 v8, 0x1

    aget v6, v6, v8

    float-to-int v6, v6

    move-object/from16 v0, v26

    iget v7, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move-object/from16 v0, v26

    iget v8, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTargetCell:[I

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher3/common/base/view/CellLayout;->findNearestArea(IIII[I)[I

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTargetCell:[I

    .line 384
    move-object/from16 v0, v26

    iget v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    packed-switch v4, :pswitch_data_0

    .line 396
    :pswitch_0
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown item type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v26

    iget v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 334
    .end local v26    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_1
    const/16 v32, -0x1

    .line 335
    .local v32, "pageNumToDrop":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getMaxItemsPerScreen()I

    move-result v28

    .line 336
    .local v28, "maxItemCount":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getPageCount()I

    move-result v31

    .line 337
    .local v31, "pageCount":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getNextPage()I

    move-result v25

    .local v25, "i":I
    :goto_1
    move/from16 v0, v25

    move/from16 v1, v31

    if-ge v0, v1, :cond_2

    .line 338
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getItemCountPageAt(I)I

    move-result v27

    .line 339
    .local v27, "itemCountPageAt":I
    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_6

    .line 340
    move/from16 v32, v25

    .line 346
    .end local v27    # "itemCountPageAt":I
    :cond_2
    if-ltz v32, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getExtraEmptyScreenIndex()I

    move-result v4

    move/from16 v0, v32

    if-ne v0, v4, :cond_7

    .line 347
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->hasExtraEmptyScreen()Z

    move-result v4

    if-nez v4, :cond_4

    .line 349
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->addExtraEmptyScreenOnDrag()V

    .line 352
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->commitExtraEmptyScreen()I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v34, v0

    .line 353
    .local v34, "screenId":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-wide/from16 v0, v34

    long-to-int v5, v0

    invoke-virtual {v4, v5}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    .line 354
    move/from16 v32, v31

    .line 359
    .end local v34    # "screenId":J
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-nez v4, :cond_5

    .line 360
    move/from16 v22, v32

    .line 361
    .local v22, "firstDropIndex":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getPageCount()I

    move-result v4

    add-int/lit8 v32, v4, -0x1

    .line 362
    const-string v4, "AppsDragController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "droplayout is null. set lastpage - pageNumToDrop : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    move/from16 v0, v32

    invoke-virtual {v4, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    .line 366
    .end local v22    # "firstDropIndex":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    move/from16 v0, v32

    invoke-virtual {v5, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getRankForNewItem(I)I

    move-result v5

    iput v5, v4, Lcom/android/launcher3/allapps/controller/DragAppIcon;->rank:I

    .line 367
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    move/from16 v0, v32

    int-to-long v8, v0

    iput-wide v8, v4, Lcom/android/launcher3/allapps/controller/DragAppIcon;->screenId:J

    .line 370
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/controller/DragAppIcon;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/allapps/controller/DragAppIcon;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    .line 371
    const-string v4, "AppsDragController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "drop through FakeView - target to empty "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget-wide v8, v6, Lcom/android/launcher3/allapps/controller/DragAppIcon;->screenId:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget v6, v6, Lcom/android/launcher3/allapps/controller/DragAppIcon;->rank:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 372
    :catch_0
    move-exception v19

    .line 373
    .local v19, "e":Ljava/lang/CloneNotSupportedException;
    const-string v4, "AppsDragController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onDragExit:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v19 .. v19}, Ljava/lang/CloneNotSupportedException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 337
    .end local v19    # "e":Ljava/lang/CloneNotSupportedException;
    .restart local v27    # "itemCountPageAt":I
    :cond_6
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_1

    .line 356
    .end local v27    # "itemCountPageAt":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    move/from16 v0, v32

    invoke-virtual {v4, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    goto/16 :goto_2

    .line 386
    .end local v25    # "i":I
    .end local v28    # "maxItemCount":I
    .end local v31    # "pageCount":I
    .end local v32    # "pageNumToDrop":I
    .restart local v26    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v6, v26

    check-cast v6, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    .line 387
    invoke-virtual {v9}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsFocusListener()Lcom/android/launcher3/allapps/controller/AppsFocusListener;

    move-result-object v9

    .line 386
    invoke-static/range {v4 .. v9}, Lcom/android/launcher3/allapps/AppsUtils;->createAppIcon(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/android/launcher3/common/base/item/IconInfo;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;Lcom/android/launcher3/allapps/controller/AppsFocusListener;)Landroid/view/View;

    move-result-object v7

    .line 399
    .local v7, "view":Landroid/view/View;
    :goto_3
    move-object/from16 v0, v21

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->postAnimationRunnable:Ljava/lang/Runnable;

    .line 401
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    move-object/from16 v0, v26

    iget-wide v8, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-virtual {v4, v8, v9}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsIconByItemId(J)Landroid/view/View;

    move-result-object v24

    .line 402
    .local v24, "folderView":Landroid/view/View;
    const/16 v23, 0x0

    .line 403
    .local v23, "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    move-object/from16 v0, v24

    instance-of v4, v0, Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v4, :cond_8

    .line 404
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v23

    .end local v23    # "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    check-cast v23, Lcom/android/launcher3/folder/FolderInfo;

    .line 407
    .restart local v23    # "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragViewVisualCenter:[F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTargetCell:[I

    const/4 v8, 0x0

    move-object/from16 v9, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->onDropCreateUserFolder([F[ILandroid/view/View;Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/drag/DropTarget$DragObject;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 409
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/controller/AppsController;->isAlphabeticalMode()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 410
    invoke-virtual/range {v23 .. v23}, Lcom/android/launcher3/folder/FolderInfo;->getItemCount()I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_9

    .line 411
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/controller/AppsController;->setAlphabeticList()V

    .line 519
    :cond_9
    :goto_4
    return-void

    .line 391
    .end local v7    # "view":Landroid/view/View;
    .end local v23    # "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    .end local v24    # "folderView":Landroid/view/View;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v6, v26

    check-cast v6, Lcom/android/launcher3/folder/FolderInfo;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    const/4 v10, 0x2

    invoke-static/range {v4 .. v10}, Lcom/android/launcher3/folder/view/FolderIconView;->fromXml(Lcom/android/launcher3/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher3/folder/FolderInfo;Lcom/android/launcher3/common/base/controller/ControllerBase;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;I)Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v7

    .line 393
    .restart local v7    # "view":Landroid/view/View;
    goto :goto_3

    .line 414
    .restart local v23    # "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    .restart local v24    # "folderView":Landroid/view/View;
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsReorderController:Lcom/android/launcher3/allapps/controller/AppsReorderController;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->getExistOverLastItemMoved()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 415
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsReorderController:Lcom/android/launcher3/allapps/controller/AppsReorderController;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->undoOverLastItems()V

    .line 417
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsReorderController:Lcom/android/launcher3/allapps/controller/AppsReorderController;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->removeEmptyCell(Lcom/android/launcher3/allapps/controller/DragAppIcon;)V

    goto :goto_4

    .line 422
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragViewVisualCenter:[F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTargetCell:[I

    move-object/from16 v0, p1

    invoke-virtual {v4, v5, v6, v0}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->onDropAddToExistingFolder([F[ILcom/android/launcher3/common/drag/DropTarget$DragObject;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 424
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/controller/AppsController;->isAlphabeticalMode()Z

    move-result v4

    if-nez v4, :cond_9

    .line 425
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsReorderController:Lcom/android/launcher3/allapps/controller/AppsReorderController;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->getExistOverLastItemMoved()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 426
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsReorderController:Lcom/android/launcher3/allapps/controller/AppsReorderController;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->undoOverLastItems()V

    .line 428
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsReorderController:Lcom/android/launcher3/allapps/controller/AppsReorderController;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->removeEmptyCell(Lcom/android/launcher3/allapps/controller/DragAppIcon;)V

    goto :goto_4

    .line 433
    :cond_e
    const/16 v29, 0x0

    .line 435
    .local v29, "orderingSkip":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/controller/AppsController;->isAlphabeticalMode()Z

    move-result v4

    if-eqz v4, :cond_f

    if-eqz v23, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Lcom/android/launcher3/allapps/controller/AppsController;->isItemInFolder(Lcom/android/launcher3/common/base/item/ItemInfo;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 436
    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_f

    .line 437
    const/16 v29, 0x1

    .line 441
    :cond_f
    const-wide/16 v10, -0x66

    .line 442
    .local v10, "container":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTargetCell:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    if-gez v4, :cond_19

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-wide v0, v4, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->screenId:J

    move-wide/from16 v34, v0

    .line 445
    .restart local v34    # "screenId":J
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getNextPage()I

    move-result v4

    int-to-long v4, v4

    cmp-long v4, v4, v34

    if-eqz v4, :cond_10

    .line 446
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-wide/from16 v0, v34

    long-to-int v5, v0

    invoke-virtual {v4, v5}, Lcom/android/launcher3/allapps/view/AppsPagedView;->snapToPage(I)V

    .line 449
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v5}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getNextPage()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v30

    .line 450
    .local v30, "page":Lcom/android/launcher3/common/base/view/CellLayout;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTargetCell:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTargetCell:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v5}, Lcom/android/launcher3/common/base/view/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v33

    .line 451
    .local v33, "v":Landroid/view/View;
    if-nez v33, :cond_12

    .line 452
    invoke-virtual/range {v30 .. v30}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v18

    .line 453
    .local v18, "count":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsReorderController:Lcom/android/launcher3/allapps/controller/AppsReorderController;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->findFirstEmptyCell()I

    move-result v20

    .line 454
    .local v20, "empty":I
    move/from16 v0, v20

    move/from16 v1, v18

    if-ge v0, v1, :cond_11

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget v4, v4, Lcom/android/launcher3/allapps/controller/DragAppIcon;->rank:I

    move/from16 v0, v18

    if-le v4, v0, :cond_12

    .line 455
    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    move/from16 v0, v18

    iput v0, v4, Lcom/android/launcher3/allapps/controller/DragAppIcon;->rank:I

    .line 456
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTargetCell:[I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget v6, v6, Lcom/android/launcher3/allapps/controller/DragAppIcon;->rank:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v8}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v8

    rem-int/2addr v6, v8

    aput v6, v4, v5

    .line 457
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTargetCell:[I

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget v6, v6, Lcom/android/launcher3/allapps/controller/DragAppIcon;->rank:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v8}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v8

    div-int/2addr v6, v8

    aput v6, v4, v5

    .line 461
    .end local v18    # "count":I
    .end local v20    # "empty":I
    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v4}, Lcom/android/launcher3/util/alarm/Alarm;->alarmPending()Z

    move-result v4

    if-eqz v4, :cond_16

    .line 462
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v4}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    .line 463
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget-wide v4, v4, Lcom/android/launcher3/allapps/controller/DragAppIcon;->screenId:J

    const-wide/16 v8, -0x1

    cmp-long v4, v4, v8

    if-nez v4, :cond_15

    .line 464
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget-wide v8, v5, Lcom/android/launcher3/allapps/controller/DragAppIcon;->screenId:J

    iput-wide v8, v4, Lcom/android/launcher3/allapps/controller/DragAppIcon;->screenId:J

    .line 466
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget-wide v8, v5, Lcom/android/launcher3/allapps/controller/DragAppIcon;->screenId:J

    long-to-int v5, v8

    invoke-virtual {v4, v5}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getItemCountPageAt(I)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    .line 467
    invoke-virtual {v5}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getMaxItemsPerScreen()I

    move-result v5

    if-lt v4, v5, :cond_14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget-wide v8, v5, Lcom/android/launcher3/allapps/controller/DragAppIcon;->screenId:J

    long-to-int v5, v8

    add-int/lit8 v5, v5, 0x1

    .line 468
    invoke-virtual {v4, v5}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v4

    if-nez v4, :cond_14

    .line 469
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->hasExtraEmptyScreen()Z

    move-result v4

    if-nez v4, :cond_13

    .line 470
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->addExtraEmptyScreenOnDrag()V

    .line 472
    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->commitExtraEmptyScreen()I

    .line 474
    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsReorderController:Lcom/android/launcher3/allapps/controller/AppsReorderController;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget-wide v8, v5, Lcom/android/launcher3/allapps/controller/DragAppIcon;->screenId:J

    long-to-int v5, v8

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget v6, v6, Lcom/android/launcher3/allapps/controller/DragAppIcon;->rank:I

    invoke-virtual {v4, v5, v6}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->makeEmptyCellAndReorder(II)V

    .line 476
    :cond_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsReorderController:Lcom/android/launcher3/allapps/controller/AppsReorderController;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    invoke-virtual {v4, v5, v6}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->realTimeReorder(Lcom/android/launcher3/allapps/controller/DragAppIcon;Lcom/android/launcher3/allapps/controller/DragAppIcon;)V

    .line 481
    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/controller/AppsController;->isAlphabeticalMode()Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 482
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    const-wide/16 v12, -0x1

    const/4 v14, -0x1

    const/4 v15, -0x1

    const/16 v16, -0x1

    move-object/from16 v9, v26

    invoke-virtual/range {v8 .. v16}, Lcom/android/launcher3/allapps/controller/AppsController;->addOrMoveItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJIII)V

    .line 492
    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    move-object/from16 v0, v26

    invoke-virtual {v4, v7, v0}, Lcom/android/launcher3/allapps/controller/AppsController;->addItem(Landroid/view/View;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 494
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v4, v7}, Lcom/android/launcher3/common/base/view/CellLayout;->onDropChild(Landroid/view/View;)V

    .line 495
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v4}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->measureChild(Landroid/view/View;)V

    .line 497
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/controller/AppsController;->isAlphabeticalMode()Z

    move-result v4

    if-eqz v4, :cond_1b

    if-nez v29, :cond_1b

    .line 498
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    move-object/from16 v0, v21

    invoke-virtual {v4, v5, v0}, Lcom/android/launcher3/common/view/DragLayer;->removeAnimation(Lcom/android/launcher3/common/drag/DragView;Ljava/lang/Runnable;)V

    .line 499
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    if-nez v4, :cond_17

    .line 500
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/controller/AppsController;->setAlphabeticList()V

    .line 509
    :cond_17
    :goto_7
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    if-eqz v4, :cond_18

    .line 510
    invoke-direct/range {p0 .. p1}, Lcom/android/launcher3/allapps/controller/AppsDragController;->onDropExtraObjects(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V

    .line 511
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/controller/AppsController;->isAlphabeticalMode()Z

    move-result v4

    if-eqz v4, :cond_18

    .line 512
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/controller/AppsController;->setAlphabeticList()V

    .line 516
    :cond_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/controller/AppsController;->isAlphabeticalMode()Z

    move-result v4

    if-nez v4, :cond_9

    .line 517
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/controller/AppsController;->updateDirtyItems()V

    goto/16 :goto_4

    .line 442
    .end local v30    # "page":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v33    # "v":Landroid/view/View;
    .end local v34    # "screenId":J
    :cond_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    .line 443
    invoke-virtual {v4, v5}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getIdForScreen(Lcom/android/launcher3/common/base/view/CellLayout;)J

    move-result-wide v34

    goto/16 :goto_5

    .line 484
    .restart local v30    # "page":Lcom/android/launcher3/common/base/view/CellLayout;
    .restart local v33    # "v":Landroid/view/View;
    .restart local v34    # "screenId":J
    :cond_1a
    const/4 v4, 0x1

    move-object/from16 v0, v26

    iput-boolean v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->mDirty:Z

    .line 485
    move-object/from16 v0, v26

    iput-wide v10, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    .line 486
    move-wide/from16 v0, v34

    move-object/from16 v2, v26

    iput-wide v0, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    .line 487
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTargetCell:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    move-object/from16 v0, v26

    iput v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    .line 488
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTargetCell:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    move-object/from16 v0, v26

    iput v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    .line 489
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget v4, v4, Lcom/android/launcher3/allapps/controller/DragAppIcon;->rank:I

    move-object/from16 v0, v26

    iput v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    goto/16 :goto_6

    .line 503
    :cond_1b
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    if-eqz v4, :cond_17

    .line 504
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    const/16 v15, 0x12c

    const/16 v17, 0x0

    move-object v14, v7

    move-object/from16 v16, v21

    invoke-virtual/range {v12 .. v17}, Lcom/android/launcher3/common/view/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/common/drag/DragView;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;)V

    goto/16 :goto_7

    .line 384
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private onDropExtraObjects(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
    .locals 21
    .param p1, "dObject"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .prologue
    .line 619
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v12, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 620
    .local v12, "dragItemInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget v15, v12, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    .line 621
    .local v15, "indexRank":I
    iget-wide v2, v12, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    long-to-int v0, v2

    move/from16 v16, v0

    .line 622
    .local v16, "indexScreen":I
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    .line 624
    .local v13, "extraDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_0
    :goto_0
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .line 626
    .local v11, "d":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    iget-object v0, v11, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 628
    .local v17, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getMaxItemsPerScreen()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lt v15, v2, :cond_8

    .line 629
    const/4 v15, 0x0

    .line 630
    add-int/lit8 v16, v16, 0x1

    .line 636
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getExtraEmptyScreenIndex()I

    move-result v2

    move/from16 v0, v16

    if-eq v0, v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    .line 637
    move/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v2

    if-nez v2, :cond_3

    .line 638
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->hasExtraEmptyScreen()Z

    move-result v2

    if-nez v2, :cond_2

    .line 640
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->addExtraEmptyScreenOnDrag()V

    .line 643
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->commitExtraEmptyScreen()I

    .line 645
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    .line 649
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/controller/AppsController;->isAlphabeticalMode()Z

    move-result v2

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    .line 650
    invoke-virtual {v3}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v3

    rem-int v3, v15, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    .line 651
    invoke-virtual {v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v4

    div-int v4, v15, v4

    .line 649
    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/common/base/view/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 654
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getItemCountPageAt(I)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    .line 655
    invoke-virtual {v3}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getMaxItemsPerScreen()I

    move-result v3

    if-lt v2, v3, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    add-int/lit8 v3, v16, 0x1

    .line 656
    invoke-virtual {v2, v3}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v2

    if-nez v2, :cond_5

    .line 657
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->hasExtraEmptyScreen()Z

    move-result v2

    if-nez v2, :cond_4

    .line 658
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->addExtraEmptyScreenOnDrag()V

    .line 660
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->commitExtraEmptyScreen()I

    .line 663
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsReorderController:Lcom/android/launcher3/allapps/controller/AppsReorderController;

    move/from16 v0, v16

    invoke-virtual {v2, v0, v15}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->makeEmptyCellAndReorder(II)V

    .line 665
    :cond_6
    iget-object v2, v11, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 666
    iget-object v2, v11, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v2}, Lcom/android/launcher3/common/drag/DragView;->getSourceView()Landroid/view/View;

    move-result-object v19

    .line 692
    .local v19, "view":Landroid/view/View;
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/controller/AppsController;->isAlphabeticalMode()Z

    move-result v2

    if-nez v2, :cond_b

    .line 693
    const/4 v2, 0x1

    move-object/from16 v0, v17

    iput-boolean v2, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->mDirty:Z

    .line 694
    move-object/from16 v0, v17

    iput v15, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    .line 695
    move/from16 v0, v16

    int-to-long v2, v0

    move-object/from16 v0, v17

    iput-wide v2, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    .line 696
    const-wide/16 v2, -0x66

    move-object/from16 v0, v17

    iput-wide v2, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    .line 701
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Lcom/android/launcher3/allapps/controller/AppsController;->addItem(Landroid/view/View;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 703
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 704
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v18

    check-cast v18, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 705
    .local v18, "parent":Lcom/android/launcher3/common/base/view/CellLayout;
    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 706
    invoke-virtual/range {v18 .. v19}, Lcom/android/launcher3/common/base/view/CellLayout;->onDropChild(Landroid/view/View;)V

    .line 707
    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->measureChild(Landroid/view/View;)V

    .line 710
    .end local v18    # "parent":Lcom/android/launcher3/common/base/view/CellLayout;
    :cond_7
    iget-object v2, v11, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->isHomeStage()Z

    move-result v2

    if-nez v2, :cond_0

    .line 711
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/controller/AppsController;->isAlphabeticalMode()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 712
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    iget-object v3, v11, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    iget-object v4, v11, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->postAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/common/view/DragLayer;->removeAnimation(Lcom/android/launcher3/common/drag/DragView;Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 632
    .end local v19    # "view":Landroid/view/View;
    :cond_8
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_1

    .line 668
    :cond_9
    move-object/from16 v0, v17

    iget v2, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    packed-switch v2, :pswitch_data_0

    .line 688
    :pswitch_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown item type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    iget v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 670
    :pswitch_1
    iget-object v2, v11, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    if-eqz v2, :cond_a

    iget-object v2, v11, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v2}, Lcom/android/launcher3/common/drag/DragView;->getSourceView()Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher3/common/view/IconView;

    if-eqz v2, :cond_a

    iget-object v2, v11, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    .line 671
    invoke-virtual {v2}, Lcom/android/launcher3/common/drag/DragView;->getSourceView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_a

    .line 672
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    iget-object v4, v11, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v4}, Lcom/android/launcher3/common/drag/DragView;->getSourceView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/view/IconView;

    move-object/from16 v5, v17

    check-cast v5, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-static/range {v2 .. v7}, Lcom/android/launcher3/allapps/AppsUtils;->createAppIcon(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/android/launcher3/common/view/IconView;Lcom/android/launcher3/common/base/item/IconInfo;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)Landroid/view/View;

    move-result-object v19

    .restart local v19    # "view":Landroid/view/View;
    goto/16 :goto_2

    .line 675
    .end local v19    # "view":Landroid/view/View;
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v4, v17

    check-cast v4, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    .line 676
    invoke-virtual {v7}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsFocusListener()Lcom/android/launcher3/allapps/controller/AppsFocusListener;

    move-result-object v7

    .line 675
    invoke-static/range {v2 .. v7}, Lcom/android/launcher3/allapps/AppsUtils;->createAppIcon(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/android/launcher3/common/base/item/IconInfo;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;Lcom/android/launcher3/allapps/controller/AppsFocusListener;)Landroid/view/View;

    move-result-object v19

    .line 678
    .restart local v19    # "view":Landroid/view/View;
    goto/16 :goto_2

    .line 681
    .end local v19    # "view":Landroid/view/View;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v4, v17

    check-cast v4, Lcom/android/launcher3/folder/FolderInfo;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    const/4 v8, 0x2

    invoke-static/range {v2 .. v8}, Lcom/android/launcher3/folder/view/FolderIconView;->fromXml(Lcom/android/launcher3/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher3/folder/FolderInfo;Lcom/android/launcher3/common/base/controller/ControllerBase;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;I)Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v19

    .line 685
    .restart local v19    # "view":Landroid/view/View;
    goto/16 :goto_2

    .line 698
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    const-wide/16 v4, -0x66

    const-wide/16 v6, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, -0x1

    move-object/from16 v3, v17

    invoke-virtual/range {v2 .. v10}, Lcom/android/launcher3/allapps/controller/AppsController;->addOrMoveItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJIII)V

    goto/16 :goto_3

    .line 714
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    if-nez v2, :cond_d

    const/4 v14, 0x1

    .line 715
    .local v14, "fromExternal":Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    iget-object v3, v11, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    const/16 v5, 0x12c

    const/4 v6, 0x0

    if-eqz v14, :cond_e

    const/4 v7, 0x0

    :goto_5
    move-object/from16 v4, v19

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/common/view/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/common/drag/DragView;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;)V

    goto/16 :goto_0

    .line 714
    .end local v14    # "fromExternal":Z
    :cond_d
    const/4 v14, 0x0

    goto :goto_4

    .line 715
    .restart local v14    # "fromExternal":Z
    :cond_e
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    goto :goto_5

    .line 720
    .end local v11    # "d":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .end local v14    # "fromExternal":Z
    .end local v17    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v19    # "view":Landroid/view/View;
    :cond_f
    return-void

    .line 668
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private onDropInternal(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
    .locals 20
    .param p1, "d"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .prologue
    .line 184
    new-instance v10, Lcom/android/launcher3/allapps/controller/AppsDragController$1;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/android/launcher3/allapps/controller/AppsDragController$1;-><init>(Lcom/android/launcher3/allapps/controller/AppsDragController;)V

    .line 191
    .local v10, "exitDragStateRunnable":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v8, v2, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 192
    .local v8, "cell":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 193
    .local v9, "cellInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v14, v2, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->layout:Lcom/android/launcher3/common/base/view/CellLayout;

    .line 194
    .local v14, "originalLayout":Lcom/android/launcher3/common/base/view/CellLayout;
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v13, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 196
    .local v13, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-nez v2, :cond_0

    .line 197
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    iget-wide v4, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    long-to-int v3, v4

    invoke-virtual {v2, v3}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    .line 198
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget v3, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    iput v3, v2, Lcom/android/launcher3/allapps/controller/DragAppIcon;->rank:I

    .line 199
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget-wide v4, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    iput-wide v4, v2, Lcom/android/launcher3/allapps/controller/DragAppIcon;->screenId:J

    .line 202
    :cond_0
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelled:Z

    if-nez v2, :cond_1

    .line 203
    move-object/from16 v0, p1

    iput-object v10, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->postAnimationRunnable:Ljava/lang/Runnable;

    .line 204
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragViewVisualCenter:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    float-to-int v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragViewVisualCenter:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    float-to-int v4, v4

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTargetCell:[I

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/common/base/view/CellLayout;->findNearestArea(IIII[I)[I

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTargetCell:[I

    .line 207
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragViewVisualCenter:[F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTargetCell:[I

    const/4 v6, 0x0

    move-object v5, v8

    move-object/from16 v7, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->onDropCreateUserFolder([F[ILandroid/view/View;Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/drag/DropTarget$DragObject;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 209
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/controller/AppsController;->isAlphabeticalMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 210
    const-string v2, "AppsDragController"

    const-string v3, "onDropInternal onDropCreateUserFolder isAlphabeticalMode"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :cond_1
    :goto_0
    return-void

    .line 212
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsReorderController:Lcom/android/launcher3/allapps/controller/AppsReorderController;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->getExistOverLastItemMoved()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 213
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsReorderController:Lcom/android/launcher3/allapps/controller/AppsReorderController;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->undoOverLastItems()V

    .line 217
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTargetCell:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTargetCell:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v4

    mul-int/2addr v3, v4

    add-int v17, v2, v3

    .line 218
    .local v17, "targetCellRank":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget v2, v2, Lcom/android/launcher3/allapps/controller/DragAppIcon;->rank:I

    move/from16 v0, v17

    if-le v0, v2, :cond_4

    .line 219
    add-int/lit8 v17, v17, -0x1

    .line 220
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTargetCell:[I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v4

    rem-int v4, v17, v4

    aput v4, v2, v3

    .line 221
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTargetCell:[I

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v4

    div-int v4, v17, v4

    aput v4, v2, v3

    .line 223
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsReorderController:Lcom/android/launcher3/allapps/controller/AppsReorderController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->removeEmptyCell(Lcom/android/launcher3/allapps/controller/DragAppIcon;)V

    goto :goto_0

    .line 228
    .end local v17    # "targetCellRank":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragViewVisualCenter:[F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTargetCell:[I

    move-object/from16 v0, p1

    invoke-virtual {v2, v3, v4, v0}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->onDropAddToExistingFolder([F[ILcom/android/launcher3/common/drag/DropTarget$DragObject;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 230
    if-eqz v14, :cond_6

    .line 231
    invoke-virtual {v14, v8}, Lcom/android/launcher3/common/base/view/CellLayout;->removeView(Landroid/view/View;)V

    .line 233
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/controller/AppsController;->isAlphabeticalMode()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 234
    const-string v2, "AppsDragController"

    const-string v3, "onDropInternal onDropAddToExistingFolder isAlphabeticalMode"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 236
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsReorderController:Lcom/android/launcher3/allapps/controller/AppsReorderController;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->getExistOverLastItemMoved()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 237
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsReorderController:Lcom/android/launcher3/allapps/controller/AppsReorderController;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->undoOverLastItems()V

    .line 239
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsReorderController:Lcom/android/launcher3/allapps/controller/AppsReorderController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->removeEmptyCell(Lcom/android/launcher3/allapps/controller/DragAppIcon;)V

    goto/16 :goto_0

    .line 243
    :cond_9
    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_a

    if-eqz v14, :cond_a

    .line 244
    invoke-virtual {v14, v8}, Lcom/android/launcher3/common/base/view/CellLayout;->removeView(Landroid/view/View;)V

    .line 247
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v2}, Lcom/android/launcher3/util/alarm/Alarm;->alarmPending()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 248
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v2}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    .line 249
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsReorderController:Lcom/android/launcher3/allapps/controller/AppsReorderController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->realTimeReorder(Lcom/android/launcher3/allapps/controller/DragAppIcon;Lcom/android/launcher3/allapps/controller/DragAppIcon;)V

    .line 252
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget-wide v2, v2, Lcom/android/launcher3/allapps/controller/DragAppIcon;->screenId:J

    iget-wide v4, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_c

    .line 253
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/util/logging/SALogging;->insertMoveToPageLog(Ljava/lang/Object;Z)V

    .line 254
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getMultiSelectManager()Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isMultiSelectMode()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 255
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    .line 256
    .local v16, "res":Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v2

    const v3, 0x7f080182

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f080158

    .line 257
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 256
    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    .end local v16    # "res":Landroid/content/res/Resources;
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/controller/AppsController;->isAlphabeticalMode()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 261
    iget-wide v0, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    move-wide/from16 v18, v0

    .line 263
    .local v18, "screenId":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget-wide v2, v2, Lcom/android/launcher3/allapps/controller/DragAppIcon;->screenId:J

    cmp-long v2, v2, v18

    if-eqz v2, :cond_d

    .line 264
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-wide/from16 v0, v18

    long-to-int v3, v0

    invoke-virtual {v2, v3}, Lcom/android/launcher3/allapps/view/AppsPagedView;->snapToPage(I)V

    .line 266
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget v3, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    iput v3, v2, Lcom/android/launcher3/allapps/controller/DragAppIcon;->rank:I

    .line 267
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget-wide v4, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    iput-wide v4, v2, Lcom/android/launcher3/allapps/controller/DragAppIcon;->screenId:J

    .line 270
    .end local v18    # "screenId":J
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget v2, v2, Lcom/android/launcher3/allapps/controller/DragAppIcon;->rank:I

    iput v2, v9, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    .line 271
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget-wide v2, v2, Lcom/android/launcher3/allapps/controller/DragAppIcon;->screenId:J

    iput-wide v2, v9, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    .line 272
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/controller/AppsController;->isAlphabeticalMode()Z

    move-result v2

    if-nez v2, :cond_f

    .line 273
    const/4 v2, 0x1

    iput-boolean v2, v9, Lcom/android/launcher3/common/base/item/ItemInfo;->mDirty:Z

    .line 275
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v2, v8, v9}, Lcom/android/launcher3/allapps/controller/AppsController;->addItem(Landroid/view/View;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 277
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/controller/AppsController;->isAlphabeticalMode()Z

    move-result v2

    if-nez v2, :cond_10

    .line 279
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTargetCell:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    if-gez v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-wide v0, v2, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->screenId:J

    move-wide/from16 v18, v0

    .line 282
    .restart local v18    # "screenId":J
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getNextPage()I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v2, v18

    if-eqz v2, :cond_10

    .line 283
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-wide/from16 v0, v18

    long-to-int v3, v0

    invoke-virtual {v2, v3}, Lcom/android/launcher3/allapps/view/AppsPagedView;->snapToPage(I)V

    .line 288
    .end local v18    # "screenId":J
    :cond_10
    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_11

    .line 289
    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    check-cast v15, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 290
    .local v15, "parent":Lcom/android/launcher3/common/base/view/CellLayout;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v2}, Lcom/android/launcher3/common/drag/DragView;->hasDrawn()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 291
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    const/16 v5, 0x12c

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-object v4, v8

    move-object v6, v10

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/common/view/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/common/drag/DragView;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;)V

    .line 298
    :goto_2
    invoke-virtual {v15, v8}, Lcom/android/launcher3/common/base/view/CellLayout;->onDropChild(Landroid/view/View;)V

    .line 301
    .end local v15    # "parent":Lcom/android/launcher3/common/base/view/CellLayout;
    :cond_11
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 302
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/controller/AppsController;->isAlphabeticalMode()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 303
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->postAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/common/view/DragLayer;->removeAnimation(Lcom/android/launcher3/common/drag/DragView;Ljava/lang/Runnable;)V

    .line 304
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    .line 305
    .local v11, "extraDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .line 306
    .local v12, "extranDragObject":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    iget-object v4, v12, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    iget-object v5, v12, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->postAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher3/common/view/DragLayer;->removeAnimation(Lcom/android/launcher3/common/drag/DragView;Ljava/lang/Runnable;)V

    goto :goto_3

    .line 279
    .end local v11    # "extraDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    .end local v12    # "extranDragObject":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    .line 280
    invoke-virtual {v2, v3}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getIdForScreen(Lcom/android/launcher3/common/base/view/CellLayout;)J

    move-result-wide v18

    goto/16 :goto_1

    .line 294
    .restart local v15    # "parent":Lcom/android/launcher3/common/base/view/CellLayout;
    :cond_13
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    .line 295
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Landroid/view/View;->setVisibility(I)V

    .line 296
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    const/4 v3, 0x0

    invoke-virtual {v2, v8, v3}, Lcom/android/launcher3/allapps/controller/AppsController;->updateCountBadge(Landroid/view/View;Z)V

    goto :goto_2

    .line 308
    .end local v15    # "parent":Lcom/android/launcher3/common/base/view/CellLayout;
    .restart local v11    # "extraDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/controller/AppsController;->setAlphabeticList()V

    goto/16 :goto_0

    .line 310
    .end local v11    # "extraDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    :cond_15
    invoke-direct/range {p0 .. p1}, Lcom/android/launcher3/allapps/controller/AppsDragController;->onDropExtraObjects(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V

    goto/16 :goto_0
.end method

.method private onResetScrollArea()V
    .locals 1

    .prologue
    .line 1414
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->setCurrentDragOverlappingLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    .line 1415
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mInScrollArea:Z

    .line 1416
    return-void
.end method

.method private placeObjectsToNextPosition(IILjava/util/ArrayList;Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
    .locals 17
    .param p1, "indexScreen"    # I
    .param p2, "indexRank"    # I
    .param p4, "dragObject"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            ">;",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            ")V"
        }
    .end annotation

    .prologue
    .line 523
    .local p3, "extraDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .line 524
    .local v12, "d":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    const/4 v15, 0x0

    .line 525
    .local v15, "view":Landroid/view/View;
    iget-object v13, v12, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v13, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 527
    .local v13, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getMaxItemsPerScreen()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, p2

    if-lt v0, v2, :cond_8

    .line 528
    const/16 p2, 0x0

    .line 529
    add-int/lit8 p1, p1, 0x1

    .line 535
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getExtraEmptyScreenIndex()I

    move-result v2

    move/from16 v0, p1

    if-eq v0, v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    .line 536
    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v2

    if-nez v2, :cond_2

    .line 537
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->hasExtraEmptyScreen()Z

    move-result v2

    if-nez v2, :cond_1

    .line 539
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->addExtraEmptyScreenOnDrag()V

    .line 542
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->commitExtraEmptyScreen()I

    .line 544
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    .line 548
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/controller/AppsController;->isAlphabeticalMode()Z

    move-result v2

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    .line 549
    invoke-virtual {v3}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v3

    rem-int v3, p2, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    .line 550
    invoke-virtual {v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v4

    div-int v4, p2, v4

    .line 549
    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/common/base/view/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 553
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getItemCountPageAt(I)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    .line 554
    invoke-virtual {v3}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getMaxItemsPerScreen()I

    move-result v3

    if-lt v2, v3, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    add-int/lit8 v3, p1, 0x1

    .line 555
    invoke-virtual {v2, v3}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v2

    if-nez v2, :cond_4

    .line 556
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->hasExtraEmptyScreen()Z

    move-result v2

    if-nez v2, :cond_3

    .line 557
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->addExtraEmptyScreenOnDrag()V

    .line 559
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->commitExtraEmptyScreen()I

    .line 562
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsReorderController:Lcom/android/launcher3/allapps/controller/AppsReorderController;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->makeEmptyCellAndReorder(II)V

    .line 564
    :cond_5
    iget-object v2, v12, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 565
    iget-object v2, v12, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v2}, Lcom/android/launcher3/common/drag/DragView;->getSourceView()Landroid/view/View;

    move-result-object v15

    .line 567
    if-nez v15, :cond_6

    move-object/from16 v0, p4

    invoke-virtual {v12, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    if-eqz v2, :cond_6

    .line 568
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v15, v2, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 572
    :cond_6
    iget-object v2, v12, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    if-nez v15, :cond_9

    .line 574
    :cond_7
    iget v2, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    packed-switch v2, :pswitch_data_0

    .line 588
    :pswitch_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown item type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 531
    :cond_8
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_1

    .line 576
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object v4, v13

    check-cast v4, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    .line 577
    invoke-virtual {v7}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsFocusListener()Lcom/android/launcher3/allapps/controller/AppsFocusListener;

    move-result-object v7

    .line 576
    invoke-static/range {v2 .. v7}, Lcom/android/launcher3/allapps/AppsUtils;->createAppIcon(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/android/launcher3/common/base/item/IconInfo;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;Lcom/android/launcher3/allapps/controller/AppsFocusListener;)Landroid/view/View;

    move-result-object v15

    .line 592
    :cond_9
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/controller/AppsController;->isAlphabeticalMode()Z

    move-result v2

    if-nez v2, :cond_b

    .line 593
    const/4 v2, 0x1

    iput-boolean v2, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->mDirty:Z

    .line 594
    move/from16 v0, p2

    iput v0, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    .line 595
    move/from16 v0, p1

    int-to-long v2, v0

    iput-wide v2, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    .line 596
    const-wide/16 v2, -0x66

    iput-wide v2, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    .line 602
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v2, v15, v13}, Lcom/android/launcher3/allapps/controller/AppsController;->addItem(Landroid/view/View;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 604
    invoke-virtual {v15}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 605
    invoke-virtual {v15}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    check-cast v14, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 606
    .local v14, "parent":Lcom/android/launcher3/common/base/view/CellLayout;
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Landroid/view/View;->setVisibility(I)V

    .line 607
    invoke-virtual {v14, v15}, Lcom/android/launcher3/common/base/view/CellLayout;->onDropChild(Landroid/view/View;)V

    .line 608
    invoke-virtual {v14}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->measureChild(Landroid/view/View;)V

    .line 611
    .end local v14    # "parent":Lcom/android/launcher3/common/base/view/CellLayout;
    :cond_a
    iget-object v2, v12, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v2

    .line 612
    invoke-virtual {v2}, Lcom/android/launcher3/common/stage/Stage;->getMode()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_c

    const/4 v11, 0x1

    .line 613
    .local v11, "animate":Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    iget-object v3, v12, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    if-eqz v11, :cond_d

    const/16 v5, 0x12c

    :goto_5
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-object v4, v15

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/common/view/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/common/drag/DragView;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;)V

    goto/16 :goto_0

    .line 581
    .end local v11    # "animate":Z
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object v4, v13

    check-cast v4, Lcom/android/launcher3/folder/FolderInfo;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    const/4 v8, 0x2

    invoke-static/range {v2 .. v8}, Lcom/android/launcher3/folder/view/FolderIconView;->fromXml(Lcom/android/launcher3/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher3/folder/FolderInfo;Lcom/android/launcher3/common/base/controller/ControllerBase;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;I)Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v15

    .line 585
    goto/16 :goto_2

    .line 598
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    const-wide/16 v4, -0x66

    const-wide/16 v6, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, -0x1

    move-object v3, v13

    invoke-virtual/range {v2 .. v10}, Lcom/android/launcher3/allapps/controller/AppsController;->addOrMoveItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJIII)V

    goto :goto_3

    .line 612
    :cond_c
    const/4 v11, 0x0

    goto :goto_4

    .line 613
    .restart local v11    # "animate":Z
    :cond_d
    const/4 v5, 0x0

    goto :goto_5

    .line 616
    .end local v11    # "animate":Z
    .end local v12    # "d":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .end local v13    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v15    # "view":Landroid/view/View;
    :cond_e
    return-void

    .line 574
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private removeRightSideIconsOfDropItem(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)Ljava/util/ArrayList;
    .locals 12
    .param p1, "d"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 885
    iget-object v9, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v9, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v10, v9, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    long-to-int v5, v10

    .line 886
    .local v5, "dragItemScreen":I
    iget-object v9, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v9, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget v4, v9, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    .line 888
    .local v4, "dragItemRank":I
    iget-object v9, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v9}, Lcom/android/launcher3/Launcher;->getLauncherModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher3/LauncherModel;->getAppsLoader()Lcom/android/launcher3/allapps/model/AppsLoader;

    move-result-object v9

    .line 889
    invoke-virtual {v9, v5, v4}, Lcom/android/launcher3/allapps/model/AppsLoader;->getTopLevelItemsFromOnPage(II)Ljava/util/ArrayList;

    move-result-object v2

    .line 891
    .local v2, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 893
    .local v8, "removeApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    const/4 v1, 0x0

    .local v1, "appIndex":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v1, v9, :cond_2

    .line 894
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 896
    .local v0, "app":Lcom/android/launcher3/common/base/item/ItemInfo;
    const/4 v6, 0x0

    .local v6, "extraIndex":I
    :goto_1
    iget-object v9, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v6, v9, :cond_1

    .line 897
    iget-object v9, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v9, v9, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    invoke-virtual {v0, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 898
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 896
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 893
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 904
    .end local v0    # "app":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v6    # "extraIndex":I
    :cond_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 905
    .local v7, "removeApp":Lcom/android/launcher3/common/base/item/ItemInfo;
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 907
    .end local v7    # "removeApp":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_3
    iget-object v9, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 910
    iget-object v9, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v9, v5}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v3

    .line 911
    .local v3, "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    .restart local v0    # "app":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object v9, v3

    .line 912
    check-cast v9, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;

    invoke-virtual {v9, v0}, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->removeItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_3

    .line 915
    .end local v0    # "app":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_4
    sget-object v9, Lcom/android/launcher3/allapps/model/AppsLoader;->MENU_CUSTOM_NORMALIZER:Lcom/android/launcher3/allapps/model/AppsLoader$Normalizer;

    invoke-static {v2, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 917
    return-object v2
.end method

.method private removeRightSidePageOfDropItem(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)Ljava/util/ArrayList;
    .locals 10
    .param p1, "d"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 848
    iget-object v7, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v7, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v8, v7, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    long-to-int v3, v8

    .line 851
    .local v3, "dragItemScreen":I
    iget-object v7, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher3/Launcher;->getLauncherModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher3/LauncherModel;->getAppsLoader()Lcom/android/launcher3/allapps/model/AppsLoader;

    move-result-object v7

    .line 852
    invoke-virtual {v7, v3}, Lcom/android/launcher3/allapps/model/AppsLoader;->getTopLevelItemsFromNextPage(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 856
    .local v2, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 857
    .local v6, "removeApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    const/4 v1, 0x0

    .local v1, "appIndex":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_2

    .line 858
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 859
    .local v0, "app":Lcom/android/launcher3/common/base/item/ItemInfo;
    const/4 v4, 0x0

    .local v4, "extraIndex":I
    :goto_1
    iget-object v7, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_1

    .line 860
    iget-object v7, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v7, v7, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 861
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 859
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 857
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 867
    .end local v0    # "app":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v4    # "extraIndex":I
    :cond_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 868
    .local v5, "removeApp":Lcom/android/launcher3/common/base/item/ItemInfo;
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 872
    .end local v5    # "removeApp":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_3
    iget-object v7, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v7, v8}, Lcom/android/launcher3/allapps/view/AppsPagedView;->removeScreenToRightSideEndPage(I)V

    .line 874
    sget-object v7, Lcom/android/launcher3/allapps/model/AppsLoader;->MENU_CUSTOM_NORMALIZER:Lcom/android/launcher3/allapps/model/AppsLoader$Normalizer;

    invoke-static {v2, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 876
    return-object v2
.end method

.method private setCurrentDragOverlappingLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V
    .locals 0
    .param p1, "layout"    # Lcom/android/launcher3/common/base/view/CellLayout;

    .prologue
    .line 1442
    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragOverlappingLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    .line 1443
    return-void
.end method

.method private setCurrentDropLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V
    .locals 2
    .param p1, "layout"    # Lcom/android/launcher3/common/base/view/CellLayout;

    .prologue
    .line 1423
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-eqz v0, :cond_1

    .line 1424
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsReorderController:Lcom/android/launcher3/allapps/controller/AppsReorderController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->getExistOverLastItemMoved()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1425
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsReorderController:Lcom/android/launcher3/allapps/controller/AppsReorderController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->undoOverLastItems()V

    .line 1427
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->onDragExit()V

    .line 1429
    :cond_1
    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    .line 1430
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-eqz v0, :cond_2

    .line 1431
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->onDragEnter()V

    .line 1432
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsReorderController:Lcom/android/launcher3/allapps/controller/AppsReorderController;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->setReorderTarget(Lcom/android/launcher3/common/base/view/CellLayout;)V

    .line 1433
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->setReorderTarget(Lcom/android/launcher3/common/base/view/CellLayout;)V

    .line 1438
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->setDragMode(I)V

    .line 1439
    return-void
.end method


# virtual methods
.method public acceptDrop(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)Z
    .locals 7
    .param p1, "d"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .prologue
    const/4 v1, 0x1

    .line 1074
    const-string v4, "AppsDragController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "acceptDrop mRestorePositionOnDrop = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mRestorePositionOnDrop:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    iget-boolean v4, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mRestorePositionOnDrop:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/controller/AppsController;->isAlphabeticalMode()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1076
    iput-boolean v1, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelled:Z

    .line 1077
    iget-object v4, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 1078
    iget-object v4, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .line 1079
    .local v0, "dObject":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    iput-boolean v1, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelled:Z

    goto :goto_0

    .line 1082
    .end local v0    # "dObject":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    :cond_0
    const/4 v1, 0x0

    .line 1088
    :cond_1
    :goto_1
    return v1

    .line 1084
    :cond_2
    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getIdForScreen(Lcom/android/launcher3/common/base/view/CellLayout;)J

    move-result-wide v2

    .line 1085
    .local v2, "screenId":J
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getExtraEmptyScreenIndex()I

    move-result v4

    int-to-long v4, v4

    cmp-long v4, v2, v4

    if-nez v4, :cond_1

    .line 1086
    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->commitExtraEmptyScreen()I

    goto :goto_1
.end method

.method public addFolder(Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/base/item/IconInfo;)Lcom/android/launcher3/folder/view/FolderIconView;
    .locals 7
    .param p1, "layout"    # Lcom/android/launcher3/common/base/view/CellLayout;
    .param p2, "destInfo"    # Lcom/android/launcher3/common/base/item/IconInfo;

    .prologue
    .line 1474
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    iget-wide v2, p2, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    iget v4, p2, Lcom/android/launcher3/common/base/item/IconInfo;->cellX:I

    iget v5, p2, Lcom/android/launcher3/common/base/item/IconInfo;->cellY:I

    iget v6, p2, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/allapps/controller/AppsController;->addFolder(Lcom/android/launcher3/common/base/view/CellLayout;JIII)Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v0

    return-object v0
.end method

.method public commit(Lcom/android/launcher3/common/base/view/CellLayout;)V
    .locals 0
    .param p1, "layout"    # Lcom/android/launcher3/common/base/view/CellLayout;

    .prologue
    .line 1470
    return-void
.end method

.method public createUserFolderIfNecessary(Lcom/android/launcher3/common/base/view/CellLayout;[ILandroid/view/View;Lcom/android/launcher3/common/drag/DropTarget$DragObject;Landroid/view/View;)Z
    .locals 7
    .param p1, "targetLayout"    # Lcom/android/launcher3/common/base/view/CellLayout;
    .param p2, "targetCell"    # [I
    .param p3, "newView"    # Landroid/view/View;
    .param p4, "d"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .param p5, "targetView"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 1598
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->setReorderTarget(Lcom/android/launcher3/common/base/view/CellLayout;)V

    .line 1599
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    move-object v2, p2

    move-object v3, p3

    move-object v4, v1

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->onDropCreateUserFolder([F[ILandroid/view/View;Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/drag/DropTarget$DragObject;Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public findNearestArea(II)I
    .locals 7
    .param p1, "pixelX"    # I
    .param p2, "pixelY"    # I

    .prologue
    const/4 v3, 0x1

    .line 951
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getNextPage()I

    move-result v6

    .line 952
    .local v6, "pageIndex":I
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v1, v6}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    .line 953
    .local v0, "page":Lcom/android/launcher3/common/base/view/CellLayout;
    if-eqz v0, :cond_0

    .line 954
    sget-object v5, Lcom/android/launcher3/allapps/controller/AppsDragController;->sTempPosArray:[I

    move v1, p1

    move v2, p2

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/common/base/view/CellLayout;->findNearestArea(IIII[I)[I

    .line 957
    :cond_0
    sget-object v1, Lcom/android/launcher3/allapps/controller/AppsDragController;->sTempPosArray:[I

    aget v1, v1, v3

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v2

    mul-int/2addr v1, v2

    sget-object v2, Lcom/android/launcher3/allapps/controller/AppsDragController;->sTempPosArray:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    add-int/2addr v1, v2

    return v1
.end method

.method public getController()Lcom/android/launcher3/common/stage/Stage;
    .locals 1

    .prologue
    .line 1119
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    return-object v0
.end method

.method public getDragSourceType()I
    .locals 1

    .prologue
    .line 1634
    const/4 v0, 0x1

    return v0
.end method

.method public getHitRectRelativeToDragLayer(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .prologue
    .line 1099
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/controller/AppsController;->getContainerView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/common/view/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    .line 1100
    return-void
.end method

.method public getIntrinsicIconSize()I
    .locals 1

    .prologue
    .line 1124
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getIconSize()I

    move-result v0

    return v0
.end method

.method public getLeft()I
    .locals 1

    .prologue
    .line 1104
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getLeft()I

    move-result v0

    return v0
.end method

.method public getOutlineColor()I
    .locals 2

    .prologue
    .line 1114
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method public getPageIndexForDragView(Lcom/android/launcher3/common/base/item/ItemInfo;)I
    .locals 6
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 1617
    if-eqz p1, :cond_1

    .line 1618
    iget-wide v4, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    long-to-int v2, v4

    .line 1619
    .local v2, "pageIndex":I
    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v3, p1}, Lcom/android/launcher3/allapps/controller/AppsController;->isItemInFolder(Lcom/android/launcher3/common/base/item/ItemInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1620
    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    iget-wide v4, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsIconByItemId(J)Landroid/view/View;

    move-result-object v0

    .line 1621
    .local v0, "folder":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1622
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/folder/FolderInfo;

    .line 1623
    .local v1, "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    iget-wide v4, v1, Lcom/android/launcher3/folder/FolderInfo;->screenId:J

    long-to-int v2, v4

    .line 1629
    .end local v0    # "folder":Landroid/view/View;
    .end local v1    # "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    :cond_0
    :goto_0
    return v2

    .line 1627
    .end local v2    # "pageIndex":I
    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getNextPage()I

    move-result v2

    .restart local v2    # "pageIndex":I
    goto :goto_0
.end method

.method public getQuickOptionFlags(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)I
    .locals 4
    .param p1, "dragObject"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .prologue
    .line 1332
    if-nez p1, :cond_0

    const/4 v2, 0x0

    .line 1353
    :goto_0
    return v2

    .line 1334
    :cond_0
    iget-object v3, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v0, v3, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 1335
    .local v0, "isApp":Z
    iget-object v3, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v1, v3, Lcom/android/launcher3/folder/FolderInfo;

    .line 1336
    .local v1, "isFolder":Z
    const/4 v2, 0x0

    .line 1338
    .local v2, "optionFlags":I
    if-nez v0, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    or-int/lit8 v2, v2, 0x1

    .line 1339
    :cond_2
    if-nez v0, :cond_3

    if-eqz v1, :cond_4

    :cond_3
    or-int/lit8 v2, v2, 0x20

    .line 1340
    :cond_4
    if-nez v0, :cond_5

    if-eqz v1, :cond_6

    :cond_5
    or-int/lit16 v2, v2, 0x1000

    .line 1341
    :cond_6
    if-nez v0, :cond_7

    if-eqz v1, :cond_8

    :cond_7
    or-int/lit16 v2, v2, 0x2000

    .line 1342
    :cond_8
    if-eqz v0, :cond_9

    or-int/lit8 v2, v2, 0x40

    .line 1343
    :cond_9
    if-eqz v0, :cond_a

    or-int/lit16 v2, v2, 0x80

    .line 1344
    :cond_a
    if-eqz v0, :cond_b

    or-int/lit16 v2, v2, 0x100

    .line 1345
    :cond_b
    if-eqz v0, :cond_c

    or-int/lit16 v2, v2, 0x200

    .line 1346
    :cond_c
    if-eqz v0, :cond_d

    or-int/lit16 v2, v2, 0x400

    .line 1347
    :cond_d
    if-eqz v1, :cond_e

    or-int/lit8 v2, v2, 0x8

    .line 1348
    :cond_e
    if-eqz v1, :cond_f

    or-int/lit16 v2, v2, 0x800

    .line 1349
    :cond_f
    if-eqz v0, :cond_10

    or-int/lit16 v2, v2, 0x4000

    .line 1350
    :cond_10
    if-eqz v0, :cond_11

    const v3, 0x8000

    or-int/2addr v2, v3

    .line 1351
    :cond_11
    or-int/lit8 v2, v2, 0x4

    .line 1353
    goto :goto_0
.end method

.method public getReorderController()Lcom/android/launcher3/allapps/controller/AppsReorderController;
    .locals 1

    .prologue
    .line 1479
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsReorderController:Lcom/android/launcher3/allapps/controller/AppsReorderController;

    return-object v0
.end method

.method public getScrollZone()I
    .locals 2

    .prologue
    .line 1358
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900a8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public getTargetView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1094
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    return-object v0
.end method

.method public getTop()I
    .locals 1

    .prologue
    .line 1109
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getTop()I

    move-result v0

    return v0
.end method

.method public isDropEnabled(Z)Z
    .locals 2
    .param p1, "isDrop"    # Z

    .prologue
    const/4 v1, 0x1

    .line 159
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->getState()I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->isSelectState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    :cond_0
    return v1
.end method

.method public needDefferToBind(Lcom/android/launcher3/common/drag/DragManager;)Z
    .locals 6
    .param p1, "dragManager"    # Lcom/android/launcher3/common/drag/DragManager;

    .prologue
    .line 1638
    const/4 v2, 0x0

    .line 1639
    .local v2, "dragStartedFromApps":Z
    iget-boolean v3, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragComplete:Z

    if-nez v3, :cond_0

    .line 1640
    invoke-virtual {p1}, Lcom/android/launcher3/common/drag/DragManager;->getDragObject()Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    move-result-object v0

    .line 1641
    .local v0, "d":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    instance-of v3, v3, Lcom/android/launcher3/allapps/controller/AppsDragController;

    if-eqz v3, :cond_0

    .line 1642
    const/4 v2, 0x1

    .line 1645
    .end local v0    # "d":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    :cond_0
    iget-boolean v3, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragComplete:Z

    if-nez v3, :cond_2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    .line 1646
    .local v1, "deffer":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 1647
    const-string v3, "AppsDragController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "needDeferToBind : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragComplete:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1649
    :cond_1
    return v1

    .line 1645
    .end local v1    # "deffer":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onAdjustDraggedObjectPosition(Lcom/android/launcher3/common/drag/DropTarget$DragObject;III)V
    .locals 7
    .param p1, "dragObject"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .param p2, "startPos"    # I
    .param p3, "endPos"    # I
    .param p4, "screenId"    # I

    .prologue
    .line 1603
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->isAlphabeticalMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1604
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsReorderController:Lcom/android/launcher3/allapps/controller/AppsReorderController;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x1

    move v3, p2

    move v4, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->realTimeReorder(IFIIII)V

    .line 1605
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iput p3, v0, Lcom/android/launcher3/allapps/controller/DragAppIcon;->rank:I

    .line 1606
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    int-to-long v2, p4

    iput-wide v2, v0, Lcom/android/launcher3/allapps/controller/DragAppIcon;->screenId:J

    .line 1607
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iput p3, v0, Lcom/android/launcher3/allapps/controller/DragAppIcon;->rank:I

    .line 1608
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    int-to-long v2, p4

    iput-wide v2, v0, Lcom/android/launcher3/allapps/controller/DragAppIcon;->screenId:J

    .line 1609
    iget-object v0, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    iput p3, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    .line 1610
    iget-object v0, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    int-to-long v2, p4

    iput-wide v2, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    .line 1612
    :cond_0
    return-void
.end method

.method public onDragEnd()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 150
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->hideHintPages()V

    .line 151
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/allapps/controller/AppsController;->changeState(IZ)Z

    .line 152
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->removeEmptyPagesAndUpdateAllItemsInfo()Z

    .line 153
    iput-boolean v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragComplete:Z

    .line 154
    return v2
.end method

.method public onDragEnter(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V
    .locals 6
    .param p1, "dragObject"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .param p2, "dropTargetChanged"    # Z

    .prologue
    .line 922
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mPrevTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    const/4 v4, -0x1

    iput v4, v1, Lcom/android/launcher3/allapps/controller/DragAppIcon;->rank:I

    .line 923
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->onDragEnter()V

    .line 924
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v4

    iget-object v4, v4, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getIconSize()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->setMaxDistance(I)V

    .line 925
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    .line 926
    invoke-direct {p0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->getCurrentDropLayout()Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    .line 927
    .local v0, "layout":Lcom/android/launcher3/common/base/view/CellLayout;
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getIdForScreen(Lcom/android/launcher3/common/base/view/CellLayout;)J

    move-result-wide v2

    .line 928
    .local v2, "screenId":J
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mPrevTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iput-wide v2, v1, Lcom/android/launcher3/allapps/controller/DragAppIcon;->screenId:J

    .line 929
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    if-nez v1, :cond_0

    .line 930
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    const-wide/16 v4, -0x1

    iput-wide v4, v1, Lcom/android/launcher3/allapps/controller/DragAppIcon;->screenId:J

    .line 931
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    long-to-int v5, v2

    invoke-virtual {v4, v5}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getRankForNewItem(I)I

    move-result v4

    iput v4, v1, Lcom/android/launcher3/allapps/controller/DragAppIcon;->rank:I

    .line 934
    :cond_0
    iget-object v1, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 935
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mRestorePositionOnDrop:Z

    .line 936
    const-string v1, "AppsDragController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDragEnter mRestorePositionOnDrop = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mRestorePositionOnDrop:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mReorderAlarmListener:Lcom/android/launcher3/util/alarm/OnAlarmListener;

    invoke-virtual {v1, v4}, Lcom/android/launcher3/util/alarm/Alarm;->setOnAlarmListener(Lcom/android/launcher3/util/alarm/OnAlarmListener;)V

    .line 939
    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->setCurrentDropLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    .line 940
    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->setCurrentDragOverlappingLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    .line 941
    return-void
.end method

.method public onDragExit(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V
    .locals 4
    .param p1, "dragObject"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .param p2, "dropTargetChanged"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1034
    iget-boolean v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mInScrollArea:Z

    if-eqz v1, :cond_4

    .line 1035
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->isPageMoving()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1038
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getNextPage()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    .line 1046
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-eq v1, v2, :cond_0

    .line 1047
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->setReorderTarget(Lcom/android/launcher3/common/base/view/CellLayout;)V

    .line 1050
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    iget v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragMode:I

    invoke-virtual {v1, v2}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->onDragExit(I)V

    .line 1053
    invoke-direct {p0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->onResetScrollArea()V

    .line 1054
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v1, v3}, Lcom/android/launcher3/util/alarm/Alarm;->setOnAlarmListener(Lcom/android/launcher3/util/alarm/OnAlarmListener;)V

    .line 1055
    invoke-direct {p0, v3}, Lcom/android/launcher3/allapps/controller/AppsDragController;->setCurrentDropLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    .line 1056
    invoke-direct {p0, v3}, Lcom/android/launcher3/allapps/controller/AppsDragController;->setCurrentDragOverlappingLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    .line 1059
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportMoveToHomeAppsByDragging()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragComplete:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    if-nez v1, :cond_2

    .line 1060
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsReorderController:Lcom/android/launcher3/allapps/controller/AppsReorderController;

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->removeEmptyCell(Lcom/android/launcher3/allapps/controller/DragAppIcon;)V

    .line 1061
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsReorderController:Lcom/android/launcher3/allapps/controller/AppsReorderController;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->getExistOverLastItemMoved()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1062
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsReorderController:Lcom/android/launcher3/allapps/controller/AppsReorderController;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->undoOverLastItems()V

    .line 1065
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/controller/DragAppIcon;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iput-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/controller/DragAppIcon;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1070
    :cond_2
    :goto_1
    return-void

    .line 1040
    :cond_3
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragOverlappingLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    iput-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    goto :goto_0

    .line 1043
    :cond_4
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    iput-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    goto :goto_0

    .line 1066
    :catch_0
    move-exception v0

    .line 1067
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    const-string v1, "AppsDragController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDragExit:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onDragOver(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
    .locals 17
    .param p1, "d"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .prologue
    .line 963
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v12, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 964
    .local v12, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    if-nez v12, :cond_0

    .line 965
    const-string v2, "AppsDragController"

    const-string v3, "DragObject has null info"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    :goto_0
    return-void

    .line 970
    :cond_0
    iget v2, v12, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    if-ltz v2, :cond_1

    iget v2, v12, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    if-gez v2, :cond_2

    .line 971
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Improper spans found"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 973
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragViewVisualCenter:[F

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->getVisualCenter([F)[F

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragViewVisualCenter:[F

    .line 974
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    .line 977
    .local v10, "dragView":Lcom/android/launcher3/common/drag/DragView;
    invoke-virtual {v10}, Lcom/android/launcher3/common/drag/DragView;->getTranslationX()F

    move-result v2

    invoke-virtual {v10}, Lcom/android/launcher3/common/drag/DragView;->getRegistrationX()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v10}, Lcom/android/launcher3/common/drag/DragView;->getOffsetX()F

    move-result v3

    sub-float v15, v2, v3

    .line 978
    .local v15, "touchX":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2, v15}, Lcom/android/launcher3/allapps/view/AppsPagedView;->dragPullingPages(F)V

    .line 980
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->getCurrentDropLayout()Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v13

    .line 981
    .local v13, "layout":Lcom/android/launcher3/common/base/view/CellLayout;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-eq v13, v2, :cond_3

    .line 982
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/launcher3/allapps/controller/AppsDragController;->setCurrentDropLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    .line 983
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/launcher3/allapps/controller/AppsDragController;->setCurrentDragOverlappingLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    .line 986
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-eqz v2, :cond_8

    .line 987
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragViewVisualCenter:[F

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->mapPointFromSelfToChild(Landroid/view/View;[F)V

    .line 990
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getNextPage()I

    move-result v14

    .line 991
    .local v14, "pageIndex":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    invoke-direct/range {p0 .. p1}, Lcom/android/launcher3/allapps/controller/AppsDragController;->getTargetRank(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)I

    move-result v3

    iput v3, v2, Lcom/android/launcher3/allapps/controller/DragAppIcon;->rank:I

    .line 992
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    int-to-long v4, v14

    iput-wide v4, v2, Lcom/android/launcher3/allapps/controller/DragAppIcon;->screenId:J

    .line 994
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget v2, v2, Lcom/android/launcher3/allapps/controller/DragAppIcon;->rank:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v3, v14}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getRankForNewItem(I)I

    move-result v3

    if-le v2, v3, :cond_9

    .line 995
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v3, v14}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getRankForNewItem(I)I

    move-result v3

    iput v3, v2, Lcom/android/launcher3/allapps/controller/DragAppIcon;->rank:I

    .line 996
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTargetCell:[I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget v4, v4, Lcom/android/launcher3/allapps/controller/DragAppIcon;->rank:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v5}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v5

    rem-int/2addr v4, v5

    aput v4, v2, v3

    .line 997
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTargetCell:[I

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget v4, v4, Lcom/android/launcher3/allapps/controller/DragAppIcon;->rank:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v5}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v5

    div-int/2addr v4, v5

    aput v4, v2, v3

    .line 1003
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragViewVisualCenter:[F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTargetCell:[I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragMode:I

    move-object/from16 v5, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->onDragOver([F[ILcom/android/launcher3/common/drag/DropTarget$DragObject;Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;I)V

    .line 1005
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/controller/AppsController;->isAlphabeticalMode()Z

    move-result v2

    if-nez v2, :cond_8

    .line 1006
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragMode:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_8

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragMode:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_8

    .line 1007
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget v2, v2, Lcom/android/launcher3/allapps/controller/DragAppIcon;->rank:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mPrevTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget v3, v3, Lcom/android/launcher3/allapps/controller/DragAppIcon;->rank:I

    if-ne v2, v3, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget-wide v2, v2, Lcom/android/launcher3/allapps/controller/DragAppIcon;->screenId:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mPrevTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget-wide v4, v4, Lcom/android/launcher3/allapps/controller/DragAppIcon;->screenId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_7

    .line 1008
    :cond_4
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/allapps/controller/AppsDragController;->setDragMode(I)V

    .line 1010
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget v2, v2, Lcom/android/launcher3/allapps/controller/DragAppIcon;->rank:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget v3, v3, Lcom/android/launcher3/allapps/controller/DragAppIcon;->rank:I

    if-ne v2, v3, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget-wide v2, v2, Lcom/android/launcher3/allapps/controller/DragAppIcon;->screenId:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mPrevTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget-wide v4, v4, Lcom/android/launcher3/allapps/controller/DragAppIcon;->screenId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_6

    .line 1011
    :cond_5
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mRestorePositionOnDrop:Z

    .line 1012
    const-string v2, "AppsDragController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDragOver mRestorePositionOnDrop = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mRestorePositionOnDrop:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    if-ne v2, v3, :cond_a

    const/4 v11, 0x1

    .line 1016
    .local v11, "isApps":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->isPageMoving()Z

    move-result v2

    if-eqz v2, :cond_b

    sget v2, Lcom/android/launcher3/common/base/view/PagedView;->PAGE_SNAP_ANIMATION_DURATION:I

    div-int/lit8 v2, v2, 0x2

    add-int/lit16 v2, v2, 0xfa

    int-to-long v2, v2

    :goto_3
    invoke-virtual {v4, v2, v3}, Lcom/android/launcher3/util/alarm/Alarm;->setAlarm(J)V

    .line 1019
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mPrevTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget v3, v3, Lcom/android/launcher3/allapps/controller/DragAppIcon;->rank:I

    iput v3, v2, Lcom/android/launcher3/allapps/controller/DragAppIcon;->rank:I

    .line 1020
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mPrevTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget-wide v4, v3, Lcom/android/launcher3/allapps/controller/DragAppIcon;->screenId:J

    iput-wide v4, v2, Lcom/android/launcher3/allapps/controller/DragAppIcon;->screenId:J

    .line 1022
    .end local v11    # "isApps":Z
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v3, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {v10}, Lcom/android/launcher3/common/drag/DragView;->getDragOutline()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTargetCell:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTargetCell:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/android/launcher3/common/base/view/CellLayout;->visualizeDropLocation(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/graphics/drawable/Drawable;IIIIZ)V

    .line 1028
    .end local v14    # "pageIndex":I
    :cond_8
    invoke-virtual {v10}, Lcom/android/launcher3/common/drag/DragView;->getTranslationY()F

    move-result v2

    invoke-virtual {v10}, Lcom/android/launcher3/common/drag/DragView;->getRegistrationY()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v10}, Lcom/android/launcher3/common/drag/DragView;->getOffsetY()F

    move-result v3

    sub-float v16, v2, v3

    .line 1029
    .local v16, "touchY":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/android/launcher3/allapps/controller/AppsController;->approachBorderOnDrag(F)V

    goto/16 :goto_0

    .line 999
    .end local v16    # "touchY":F
    .restart local v14    # "pageIndex":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragViewVisualCenter:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    float-to-int v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragViewVisualCenter:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    float-to-int v4, v4

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTargetCell:[I

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/common/base/view/CellLayout;->findNearestArea(IIII[I)[I

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTargetCell:[I

    goto/16 :goto_1

    .line 1015
    :cond_a
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 1016
    .restart local v11    # "isApps":Z
    :cond_b
    if-eqz v11, :cond_c

    const/16 v2, 0xfa

    :goto_4
    int-to-long v2, v2

    goto/16 :goto_3

    :cond_c
    const/16 v2, 0x1f4

    goto :goto_4
.end method

.method public onDragStart(Lcom/android/launcher3/common/drag/DragSource;Ljava/lang/Object;I)Z
    .locals 5
    .param p1, "source"    # Lcom/android/launcher3/common/drag/DragSource;
    .param p2, "info"    # Ljava/lang/Object;
    .param p3, "dragAction"    # I

    .prologue
    const/4 v4, 0x1

    .line 128
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragComplete:Z

    .line 129
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->showHintPages()V

    move-object v0, p2

    .line 131
    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 132
    .local v0, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget v2, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    iput v2, v1, Lcom/android/launcher3/allapps/controller/DragAppIcon;->rank:I

    .line 133
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget-wide v2, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    iput-wide v2, v1, Lcom/android/launcher3/allapps/controller/DragAppIcon;->screenId:J

    .line 134
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget v2, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    iput v2, v1, Lcom/android/launcher3/allapps/controller/DragAppIcon;->cellX:I

    .line 135
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget v2, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    iput v2, v1, Lcom/android/launcher3/allapps/controller/DragAppIcon;->cellY:I

    .line 136
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsReorderController:Lcom/android/launcher3/allapps/controller/AppsReorderController;

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget v2, v2, Lcom/android/launcher3/allapps/controller/DragAppIcon;->rank:I

    invoke-virtual {v1, v2}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->setEmptyCell(I)V

    .line 137
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/controller/AppsController;->isAlphabeticalMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 138
    iput-boolean v4, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mRestorePositionOnDrop:Z

    .line 140
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    if-eqz v1, :cond_1

    .line 141
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v1, v1, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->layout:Lcom/android/launcher3/common/base/view/CellLayout;

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v2, v2, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/common/base/view/CellLayout;->removeView(Landroid/view/View;)V

    .line 144
    :cond_1
    sget-object v1, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    const v2, 0x7f0800a1

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/Talk;->say(I)V

    .line 145
    return v4
.end method

.method public onDrop(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
    .locals 3
    .param p1, "d"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragViewVisualCenter:[F

    invoke-virtual {p1, v0}, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->getVisualCenter([F)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragViewVisualCenter:[F

    .line 170
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragViewVisualCenter:[F

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->mapPointFromSelfToChild(Landroid/view/View;[F)V

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    if-nez v0, :cond_1

    .line 175
    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/controller/AppsDragController;->onDropExternal(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V

    .line 179
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsReorderController:Lcom/android/launcher3/allapps/controller/AppsReorderController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->setExistOverLastItemMoved(Z)V

    .line 180
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->forcelyAnimateReturnPages()V

    .line 181
    return-void

    .line 177
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/controller/AppsDragController;->onDropInternal(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V

    goto :goto_0
.end method

.method public onDropCompleted(Landroid/view/View;Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V
    .locals 27
    .param p1, "target"    # Landroid/view/View;
    .param p2, "d"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .param p3, "success"    # Z

    .prologue
    .line 1133
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportQuickOption()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/common/drag/DragManager;->isQuickOptionShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    if-eqz v4, :cond_0

    .line 1134
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/common/drag/DragManager;->enableQuickOptionView()V

    .line 1135
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getQuickOptionManager()Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->startBounceAnimation()V

    .line 1138
    :cond_0
    const-string v4, "AppsDragController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onDropCompleted mRestorePositionOnDrop = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mRestorePositionOnDrop:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    if-eqz v4, :cond_12

    .line 1141
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v4}, Lcom/android/launcher3/util/alarm/Alarm;->alarmPending()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1142
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v4}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    .line 1146
    :cond_1
    move-object/from16 v0, p1

    instance-of v4, v0, Lcom/android/launcher3/folder/view/FolderView;

    if-eqz v4, :cond_3

    move-object/from16 v4, p1

    check-cast v4, Lcom/android/launcher3/folder/view/FolderView;

    .line 1147
    invoke-virtual {v4}, Lcom/android/launcher3/folder/view/FolderView;->getInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v4

    iget-wide v4, v4, Lcom/android/launcher3/folder/FolderInfo;->container:J

    const-wide/16 v8, -0x66

    cmp-long v4, v4, v8

    if-nez v4, :cond_3

    const/16 v26, 0x1

    .line 1149
    .local v26, "targetIsAppsFolder":Z
    :goto_0
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/android/launcher3/allapps/view/AppsPagedView;

    move/from16 v25, v0

    .line 1151
    .local v25, "targetIsApps":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/controller/AppsController;->isAlphabeticalMode()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1152
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsReorderController:Lcom/android/launcher3/allapps/controller/AppsReorderController;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->removeEmptyCell(Lcom/android/launcher3/allapps/controller/DragAppIcon;)V

    .line 1155
    :cond_2
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 1156
    .local v16, "extraDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 1157
    .local v24, "successDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1160
    .local v10, "cancelDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1161
    move-object/from16 v0, p2

    iget-boolean v4, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelled:Z

    if-eqz v4, :cond_4

    .line 1162
    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1167
    :goto_1
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .line 1168
    .local v12, "dObject":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1169
    iget-boolean v5, v12, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelled:Z

    if-eqz v5, :cond_5

    .line 1170
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1147
    .end local v10    # "cancelDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    .end local v12    # "dObject":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .end local v16    # "extraDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    .end local v24    # "successDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    .end local v25    # "targetIsApps":Z
    .end local v26    # "targetIsAppsFolder":Z
    :cond_3
    const/16 v26, 0x0

    goto :goto_0

    .line 1164
    .restart local v10    # "cancelDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    .restart local v16    # "extraDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    .restart local v24    # "successDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    .restart local v25    # "targetIsApps":Z
    .restart local v26    # "targetIsAppsFolder":Z
    :cond_4
    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1172
    .restart local v12    # "dObject":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    :cond_5
    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1176
    .end local v12    # "dObject":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    :cond_6
    if-nez v26, :cond_7

    if-eqz v25, :cond_8

    :cond_7
    if-eqz v25, :cond_d

    .line 1177
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_d

    .line 1178
    :cond_8
    new-instance v4, Lcom/android/launcher3/allapps/controller/AppsDragController$3;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/launcher3/allapps/controller/AppsDragController$3;-><init>(Lcom/android/launcher3/allapps/controller/AppsDragController;)V

    move-object/from16 v0, v16

    invoke-static {v0, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1188
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/allapps/controller/AppsDragController;->placeObjectsToOriginalPosition(Landroid/view/View;Lcom/android/launcher3/common/drag/DropTarget$DragObject;Ljava/util/ArrayList;)V

    .line 1207
    :cond_9
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/controller/AppsController;->isAlphabeticalMode()Z

    move-result v4

    if-nez v4, :cond_a

    .line 1208
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/controller/AppsController;->updateDirtyItems()V

    .line 1212
    :cond_a
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1213
    .local v14, "extraDragInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v4, v4, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v4, :cond_b

    .line 1214
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v4, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1216
    :cond_b
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_c
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .line 1217
    .local v15, "extraDragObject":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    iget-object v4, v15, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v4, v4, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v4, :cond_c

    .line 1218
    iget-object v4, v15, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v4, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1189
    .end local v14    # "extraDragInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .end local v15    # "extraDragObject":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    :cond_d
    if-nez v26, :cond_e

    if-eqz v25, :cond_9

    .line 1190
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_9

    .line 1191
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getIdForScreen(Lcom/android/launcher3/common/base/view/CellLayout;)J

    move-result-wide v4

    long-to-int v0, v4

    move/from16 v19, v0

    .line 1192
    .local v19, "indexScreen":I
    const/16 v18, 0x0

    .line 1194
    .local v18, "indexRank":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTargetCell:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    if-gez v4, :cond_f

    .line 1195
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getItemCountPageAt(I)I

    move-result v4

    add-int/lit8 v18, v4, -0x1

    .line 1199
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/controller/AppsController;->isAlphabeticalMode()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1200
    const/4 v4, 0x0

    move-object/from16 v0, p2

    iput-boolean v4, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    .line 1201
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/controller/AppsController;->setAlphabeticList()V

    goto/16 :goto_3

    .line 1197
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTargetCell:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTargetCell:[I

    const/4 v7, 0x1

    aget v5, v5, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v7}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v7

    mul-int/2addr v5, v7

    add-int v18, v4, v5

    goto :goto_5

    .line 1203
    :cond_10
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v18

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v10, v3}, Lcom/android/launcher3/allapps/controller/AppsDragController;->placeObjectsToNextPosition(IILjava/util/ArrayList;Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V

    goto/16 :goto_3

    .line 1221
    .end local v18    # "indexRank":I
    .end local v19    # "indexScreen":I
    .restart local v14    # "extraDragInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v4, v14}, Lcom/android/launcher3/allapps/controller/AppsController;->updateBadgeItems(Ljava/util/ArrayList;)V

    .line 1222
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mRestorePositionOnDrop:Z

    .line 1223
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    .line 1328
    .end local v10    # "cancelDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    .end local v14    # "extraDragInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .end local v16    # "extraDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    .end local v24    # "successDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    .end local v25    # "targetIsApps":Z
    .end local v26    # "targetIsAppsFolder":Z
    :goto_6
    return-void

    .line 1227
    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    if-nez v4, :cond_14

    .line 1228
    if-nez p3, :cond_13

    .line 1230
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getHomeController()Lcom/android/launcher3/home/HomeController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/home/HomeController;->exitDragStateDelayed()V

    .line 1312
    :cond_13
    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/controller/AppsController;->isAlphabeticalMode()Z

    move-result v4

    if-eqz v4, :cond_22

    .line 1313
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    new-instance v5, Lcom/android/launcher3/allapps/controller/AppsDragController$5;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/launcher3/allapps/controller/AppsDragController$5;-><init>(Lcom/android/launcher3/allapps/controller/AppsDragController;)V

    const-wide/16 v8, 0x12c

    invoke-virtual {v4, v5, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1326
    :goto_8
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mRestorePositionOnDrop:Z

    .line 1327
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    goto :goto_6

    .line 1233
    :cond_14
    const/16 v17, 0x0

    .line 1234
    .local v17, "homeMakeClone":Z
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1235
    .local v20, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object/from16 v0, p1

    instance-of v4, v0, Lcom/android/launcher3/allapps/view/AppsPagedView;

    if-nez v4, :cond_15

    .line 1236
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getCloneItemEnabled()Z

    move-result v4

    if-eqz v4, :cond_1c

    move-object/from16 v0, v20

    iget-wide v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v8, -0x66

    cmp-long v4, v4, v8

    if-nez v4, :cond_1c

    const/16 v17, 0x1

    .line 1240
    :cond_15
    :goto_9
    if-eqz p3, :cond_16

    move-object/from16 v0, p2

    iget-boolean v4, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelled:Z

    if-nez v4, :cond_16

    if-eqz v17, :cond_21

    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v4, v4, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    if-eqz v4, :cond_21

    .line 1241
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v6, v4, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 1242
    .local v6, "cell":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1244
    .local v11, "cellInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget-wide v4, v4, Lcom/android/launcher3/allapps/controller/DragAppIcon;->screenId:J

    iget-wide v8, v11, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    cmp-long v4, v4, v8

    if-eqz v4, :cond_17

    .line 1245
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsReorderController:Lcom/android/launcher3/allapps/controller/AppsReorderController;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->getExistOverLastItemMoved()Z

    move-result v4

    if-eqz v4, :cond_17

    .line 1246
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsReorderController:Lcom/android/launcher3/allapps/controller/AppsReorderController;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->undoOverLastItems()V

    .line 1250
    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget v5, v11, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    iput v5, v4, Lcom/android/launcher3/allapps/controller/DragAppIcon;->rank:I

    .line 1251
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget-wide v8, v11, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    iput-wide v8, v4, Lcom/android/launcher3/allapps/controller/DragAppIcon;->screenId:J

    .line 1252
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v4}, Lcom/android/launcher3/util/alarm/Alarm;->alarmPending()Z

    move-result v4

    if-eqz v4, :cond_18

    .line 1253
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v4}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    .line 1256
    :cond_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsReorderController:Lcom/android/launcher3/allapps/controller/AppsReorderController;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    invoke-virtual {v4, v5, v7}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->realTimeReorder(Lcom/android/launcher3/allapps/controller/DragAppIcon;Lcom/android/launcher3/allapps/controller/DragAppIcon;)V

    .line 1258
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget v4, v4, Lcom/android/launcher3/allapps/controller/DragAppIcon;->rank:I

    iput v4, v11, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    .line 1259
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget-wide v4, v4, Lcom/android/launcher3/allapps/controller/DragAppIcon;->screenId:J

    iput-wide v4, v11, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    .line 1260
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/controller/AppsController;->isAlphabeticalMode()Z

    move-result v4

    if-nez v4, :cond_1d

    .line 1261
    const/4 v4, 0x1

    iput-boolean v4, v11, Lcom/android/launcher3/common/base/item/ItemInfo;->mDirty:Z

    .line 1262
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v4, v6, v11}, Lcom/android/launcher3/allapps/controller/AppsController;->addItem(Landroid/view/View;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 1271
    :goto_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget-wide v0, v4, Lcom/android/launcher3/allapps/controller/DragAppIcon;->screenId:J

    move-wide/from16 v22, v0

    .line 1272
    .local v22, "screenId":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getNextPage()I

    move-result v4

    int-to-long v4, v4

    cmp-long v4, v4, v22

    if-eqz v4, :cond_19

    .line 1273
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-wide/from16 v0, v22

    long-to-int v5, v0

    invoke-virtual {v4, v5}, Lcom/android/launcher3/allapps/view/AppsPagedView;->snapToPage(I)V

    .line 1276
    :cond_19
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_1a

    .line 1277
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v21

    check-cast v21, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 1278
    .local v21, "parent":Lcom/android/launcher3/common/base/view/CellLayout;
    if-nez v17, :cond_20

    .line 1279
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v4}, Lcom/android/launcher3/common/drag/DragView;->hasDrawn()Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 1280
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    const/16 v7, 0x12c

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher3/common/view/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/common/drag/DragView;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;)V

    .line 1287
    :goto_b
    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Lcom/android/launcher3/common/base/view/CellLayout;->onDropChild(Landroid/view/View;)V

    .line 1301
    .end local v21    # "parent":Lcom/android/launcher3/common/base/view/CellLayout;
    :cond_1a
    :goto_c
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1302
    .local v13, "dragInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v4, v4, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v4, :cond_1b

    .line 1303
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v4, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1305
    :cond_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v4, v13}, Lcom/android/launcher3/allapps/controller/AppsController;->updateBadgeItems(Ljava/util/ArrayList;)V

    goto/16 :goto_7

    .line 1236
    .end local v6    # "cell":Landroid/view/View;
    .end local v11    # "cellInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v13    # "dragInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .end local v22    # "screenId":J
    :cond_1c
    const/16 v17, 0x0

    goto/16 :goto_9

    .line 1264
    .restart local v6    # "cell":Landroid/view/View;
    .restart local v11    # "cellInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_1d
    if-eqz v17, :cond_1e

    .line 1265
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v4, v6, v11}, Lcom/android/launcher3/allapps/controller/AppsController;->addItem(Landroid/view/View;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_a

    .line 1267
    :cond_1e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/controller/AppsController;->setAlphabeticList()V

    goto/16 :goto_a

    .line 1283
    .restart local v21    # "parent":Lcom/android/launcher3/common/base/view/CellLayout;
    .restart local v22    # "screenId":J
    :cond_1f
    const/4 v4, 0x0

    move-object/from16 v0, p2

    iput-boolean v4, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    .line 1284
    const/4 v4, 0x0

    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1285
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    const/4 v5, 0x0

    invoke-virtual {v4, v6, v5}, Lcom/android/launcher3/allapps/controller/AppsController;->updateCountBadge(Landroid/view/View;Z)V

    goto :goto_b

    .line 1290
    :cond_20
    new-instance v4, Lcom/android/launcher3/allapps/controller/AppsDragController$4;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    invoke-direct {v4, v0, v1, v6, v2}, Lcom/android/launcher3/allapps/controller/AppsDragController$4;-><init>(Lcom/android/launcher3/allapps/controller/AppsDragController;Lcom/android/launcher3/common/base/view/CellLayout;Landroid/view/View;Landroid/view/View;)V

    const-wide/16 v8, 0x2d0

    invoke-virtual {v6, v4, v8, v9}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_c

    .line 1308
    .end local v6    # "cell":Landroid/view/View;
    .end local v11    # "cellInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v21    # "parent":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v22    # "screenId":J
    :cond_21
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsReorderController:Lcom/android/launcher3/allapps/controller/AppsReorderController;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->removeEmptyCell(Lcom/android/launcher3/allapps/controller/DragAppIcon;)V

    goto/16 :goto_7

    .line 1323
    .end local v17    # "homeMakeClone":Z
    .end local v20    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_22
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/controller/AppsController;->updateDirtyItems()V

    goto/16 :goto_8
.end method

.method public onEnterScrollArea(III)Z
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "direction"    # I

    .prologue
    const/4 v1, 0x1

    .line 1387
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getOpenFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1388
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getNextPage()I

    move-result v3

    if-nez p3, :cond_0

    const/4 v2, -0x1

    :goto_0
    add-int v0, v3, v2

    .line 1391
    .local v0, "page":I
    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1392
    iput-boolean v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mInScrollArea:Z

    .line 1393
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->invalidate()V

    .line 1398
    .end local v0    # "page":I
    :goto_1
    return v1

    :cond_0
    move v2, v1

    .line 1388
    goto :goto_0

    .line 1398
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onExitScrollArea()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1403
    iget-boolean v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mInScrollArea:Z

    if-eqz v1, :cond_0

    .line 1404
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->invalidate()V

    .line 1406
    iput-boolean v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mInScrollArea:Z

    .line 1407
    const/4 v0, 0x1

    .line 1410
    :cond_0
    return v0
.end method

.method public onExtraObjectDragged(Ljava/util/ArrayList;)V
    .locals 10
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
    .line 1496
    .local p1, "extraDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    if-eqz p1, :cond_2

    .line 1497
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1499
    .local v5, "targetIconList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/allapps/controller/DragAppIcon;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .line 1500
    .local v0, "d":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    iget-object v7, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v7}, Lcom/android/launcher3/common/drag/DragView;->getSourceView()Landroid/view/View;

    move-result-object v2

    .line 1501
    .local v2, "sourceView":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 1502
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 1503
    .local v3, "tag":Ljava/lang/Object;
    instance-of v7, v3, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v7, :cond_0

    move-object v1, v3

    .line 1504
    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1505
    .local v1, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    new-instance v4, Lcom/android/launcher3/allapps/controller/DragAppIcon;

    invoke-direct {v4}, Lcom/android/launcher3/allapps/controller/DragAppIcon;-><init>()V

    .line 1506
    .local v4, "targetIcon":Lcom/android/launcher3/allapps/controller/DragAppIcon;
    iget v7, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    iput v7, v4, Lcom/android/launcher3/allapps/controller/DragAppIcon;->rank:I

    .line 1507
    iget-wide v8, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    iput-wide v8, v4, Lcom/android/launcher3/allapps/controller/DragAppIcon;->screenId:J

    .line 1508
    iget v7, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    iput v7, v4, Lcom/android/launcher3/allapps/controller/DragAppIcon;->cellX:I

    .line 1509
    iget v7, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    iput v7, v4, Lcom/android/launcher3/allapps/controller/DragAppIcon;->cellY:I

    .line 1510
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1515
    .end local v0    # "d":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .end local v1    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v2    # "sourceView":Landroid/view/View;
    .end local v3    # "tag":Ljava/lang/Object;
    .end local v4    # "targetIcon":Lcom/android/launcher3/allapps/controller/DragAppIcon;
    :cond_1
    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget-object v7, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget v7, v7, Lcom/android/launcher3/allapps/controller/DragAppIcon;->rank:I

    iput v7, v6, Lcom/android/launcher3/allapps/controller/DragAppIcon;->rank:I

    .line 1516
    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget-object v7, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget-wide v8, v7, Lcom/android/launcher3/allapps/controller/DragAppIcon;->screenId:J

    iput-wide v8, v6, Lcom/android/launcher3/allapps/controller/DragAppIcon;->screenId:J

    .line 1517
    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget-object v7, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget v7, v7, Lcom/android/launcher3/allapps/controller/DragAppIcon;->cellX:I

    iput v7, v6, Lcom/android/launcher3/allapps/controller/DragAppIcon;->cellX:I

    .line 1518
    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget-object v7, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget v7, v7, Lcom/android/launcher3/allapps/controller/DragAppIcon;->cellY:I

    iput v7, v6, Lcom/android/launcher3/allapps/controller/DragAppIcon;->cellY:I

    .line 1520
    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsReorderController:Lcom/android/launcher3/allapps/controller/AppsReorderController;

    iget-object v7, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    const/4 v8, 0x0

    invoke-virtual {v6, v5, v7, v8}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->removeEmptyCellsAndViews(Ljava/util/ArrayList;Lcom/android/launcher3/allapps/controller/DragAppIcon;Z)V

    .line 1522
    .end local v5    # "targetIconList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/allapps/controller/DragAppIcon;>;"
    :cond_2
    return-void
.end method

.method public onExtraObjectDropCompleted(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
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
    .line 1594
    .local p2, "succeedDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    .local p3, "failedDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    return-void
.end method

.method public placeObjectsToOriginalPosition(Landroid/view/View;Lcom/android/launcher3/common/drag/DropTarget$DragObject;Ljava/util/ArrayList;)V
    .locals 16
    .param p1, "target"    # Landroid/view/View;
    .param p2, "mainDragObject"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1529
    .local p3, "extraDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    if-nez v2, :cond_4

    .line 1530
    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v10, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1531
    .local v10, "cellInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget v2, v10, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    packed-switch v2, :pswitch_data_0

    .line 1545
    :pswitch_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown item type: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v10, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1533
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object v4, v10

    check-cast v4, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    .line 1534
    invoke-virtual {v7}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsFocusListener()Lcom/android/launcher3/allapps/controller/AppsFocusListener;

    move-result-object v7

    .line 1533
    invoke-static/range {v2 .. v7}, Lcom/android/launcher3/allapps/AppsUtils;->createAppIcon(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/android/launcher3/common/base/item/IconInfo;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;Lcom/android/launcher3/allapps/controller/AppsFocusListener;)Landroid/view/View;

    move-result-object v9

    .line 1552
    .local v9, "cell":Landroid/view/View;
    :goto_0
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .line 1553
    .local v11, "d":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    iget-object v14, v11, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v14, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1554
    .local v14, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-object v2, v11, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v2}, Lcom/android/launcher3/common/drag/DragView;->getSourceView()Landroid/view/View;

    move-result-object v4

    .line 1557
    .local v4, "view":Landroid/view/View;
    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1558
    move-object v4, v9

    .line 1561
    :cond_1
    iget v12, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    .line 1562
    .local v12, "indexRank":I
    iget-wide v2, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    long-to-int v13, v2

    .line 1563
    .local v13, "indexScreen":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/controller/AppsController;->isAlphabeticalMode()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1564
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsReorderController:Lcom/android/launcher3/allapps/controller/AppsReorderController;

    invoke-virtual {v2, v13, v12}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->makeEmptyCellAndReorder(II)V

    .line 1565
    const/4 v2, 0x1

    iput-boolean v2, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->mDirty:Z

    .line 1567
    :cond_2
    const-wide/16 v2, -0x66

    iput-wide v2, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    .line 1568
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v2, v4, v14}, Lcom/android/launcher3/allapps/controller/AppsController;->addItem(Landroid/view/View;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 1570
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1571
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    check-cast v15, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 1572
    .local v15, "parent":Lcom/android/launcher3/common/base/view/CellLayout;
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1573
    invoke-virtual {v15, v4}, Lcom/android/launcher3/common/base/view/CellLayout;->onDropChild(Landroid/view/View;)V

    .line 1574
    invoke-virtual {v15}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->measureChild(Landroid/view/View;)V

    .line 1577
    .end local v15    # "parent":Lcom/android/launcher3/common/base/view/CellLayout;
    :cond_3
    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/android/launcher3/allapps/view/AppsPagedView;

    if-eqz v2, :cond_0

    .line 1578
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    iget-object v3, v11, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    const/16 v5, 0x12c

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/common/view/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/common/drag/DragView;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;)V

    goto :goto_1

    .line 1538
    .end local v4    # "view":Landroid/view/View;
    .end local v9    # "cell":Landroid/view/View;
    .end local v11    # "d":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .end local v12    # "indexRank":I
    .end local v13    # "indexScreen":I
    .end local v14    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object v4, v10

    check-cast v4, Lcom/android/launcher3/folder/FolderInfo;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    const/4 v8, 0x2

    invoke-static/range {v2 .. v8}, Lcom/android/launcher3/folder/view/FolderIconView;->fromXml(Lcom/android/launcher3/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher3/folder/FolderInfo;Lcom/android/launcher3/common/base/controller/ControllerBase;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;I)Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v9

    .line 1542
    .restart local v9    # "cell":Landroid/view/View;
    goto/16 :goto_0

    .line 1548
    .end local v9    # "cell":Landroid/view/View;
    .end local v10    # "cellInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v9, v2, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 1549
    .restart local v9    # "cell":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/common/base/item/ItemInfo;

    .restart local v10    # "cellInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    goto/16 :goto_0

    .line 1583
    :cond_5
    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/android/launcher3/allapps/view/AppsPagedView;

    if-nez v2, :cond_6

    .line 1584
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    const/4 v3, 0x0

    invoke-virtual {v2, v9, v3}, Lcom/android/launcher3/allapps/controller/AppsController;->updateCountBadge(Landroid/view/View;Z)V

    .line 1587
    :cond_6
    return-void

    .line 1531
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public scrollLeft()V
    .locals 2

    .prologue
    .line 1363
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->canDragScroll()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1364
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->scrollLeft()V

    .line 1366
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getOpenFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v0

    .line 1367
    .local v0, "openFolder":Lcom/android/launcher3/folder/view/FolderView;
    if-eqz v0, :cond_0

    .line 1368
    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderView;->completeDragExit()V

    .line 1371
    .end local v0    # "openFolder":Lcom/android/launcher3/folder/view/FolderView;
    :cond_0
    return-void
.end method

.method public scrollRight()V
    .locals 2

    .prologue
    .line 1375
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->canDragScroll()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1376
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->scrollRight()V

    .line 1378
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getOpenFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v0

    .line 1379
    .local v0, "openFolder":Lcom/android/launcher3/folder/view/FolderView;
    if-eqz v0, :cond_0

    .line 1380
    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderView;->completeDragExit()V

    .line 1383
    .end local v0    # "openFolder":Lcom/android/launcher3/folder/view/FolderView;
    :cond_0
    return-void
.end method

.method public setDragMode(I)V
    .locals 3
    .param p1, "dragMode"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 1447
    iget v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragMode:I

    if-eq p1, v0, :cond_1

    .line 1448
    if-nez p1, :cond_2

    .line 1449
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    .line 1450
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->cleanup()V

    .line 1464
    :cond_0
    :goto_0
    iput p1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragMode:I

    .line 1466
    :cond_1
    return-void

    .line 1451
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 1452
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    .line 1453
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mPrevTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iput v1, v0, Lcom/android/launcher3/allapps/controller/DragAppIcon;->rank:I

    goto :goto_0

    .line 1454
    :cond_3
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    .line 1455
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    .line 1456
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mPrevTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iput v1, v0, Lcom/android/launcher3/allapps/controller/DragAppIcon;->rank:I

    goto :goto_0

    .line 1457
    :cond_4
    const/4 v0, 0x3

    if-ne p1, v0, :cond_5

    .line 1458
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->cleanup()V

    goto :goto_0

    .line 1459
    :cond_5
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1460
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    .line 1461
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->cleanup()V

    .line 1462
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v0, v2, v2}, Lcom/android/launcher3/allapps/controller/AppsController;->changeState(IZ)Z

    goto :goto_0
.end method

.method public setup(Lcom/android/launcher3/common/view/DragLayer;Lcom/android/launcher3/allapps/controller/AppsController;)V
    .locals 2
    .param p1, "dragLayer"    # Lcom/android/launcher3/common/view/DragLayer;
    .param p2, "appsController"    # Lcom/android/launcher3/allapps/controller/AppsController;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    .line 117
    iput-object p2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    .line 118
    new-instance v0, Lcom/android/launcher3/allapps/controller/AppsReorderController;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v0, v1, p2}, Lcom/android/launcher3/allapps/controller/AppsReorderController;-><init>(Landroid/content/Context;Lcom/android/launcher3/allapps/controller/AppsController;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsReorderController:Lcom/android/launcher3/allapps/controller/AppsReorderController;

    .line 119
    new-instance v0, Lcom/android/launcher3/folder/controller/FolderIconDropController;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v0, v1, p0}, Lcom/android/launcher3/folder/controller/FolderIconDropController;-><init>(Landroid/content/Context;Lcom/android/launcher3/common/drag/DragState;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    .line 120
    return-void
.end method

.method public startDrag(Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;)V
    .locals 0
    .param p1, "cellInfo"    # Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    .line 124
    return-void
.end method
