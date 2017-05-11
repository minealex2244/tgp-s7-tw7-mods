.class public Lcom/android/launcher3/widget/controller/WidgetDragController;
.super Ljava/lang/Object;
.source "WidgetDragController.java"

# interfaces
.implements Lcom/android/launcher3/common/drag/DragSource;


# static fields
.field private static final TAG:Ljava/lang/String; = "WidgetDragController"


# instance fields
.field private final mDragManager:Lcom/android/launcher3/common/drag/DragManager;

.field private mHostViewLoader:Lcom/android/launcher3/widget/WidgetHostViewLoader;

.field private final mIconCache:Lcom/android/launcher3/common/model/IconCache;

.field private final mLauncher:Lcom/android/launcher3/Launcher;

.field protected mPreviewUtils:Lcom/android/launcher3/widget/model/WidgetPreviewUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    check-cast p1, Lcom/android/launcher3/Launcher;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/android/launcher3/widget/controller/WidgetDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 63
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetDragController;->mDragManager:Lcom/android/launcher3/common/drag/DragManager;

    .line 64
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/common/model/IconCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetDragController;->mIconCache:Lcom/android/launcher3/common/model/IconCache;

    .line 65
    invoke-static {}, Lcom/android/launcher3/widget/model/WidgetPreviewUtils;->getInstance()Lcom/android/launcher3/widget/model/WidgetPreviewUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetDragController;->mPreviewUtils:Lcom/android/launcher3/widget/model/WidgetPreviewUtils;

    .line 66
    return-void
.end method

.method private beginDragging(Landroid/view/View;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 97
    instance-of v2, p1, Lcom/android/launcher3/widget/view/WidgetItemView;

    if-eqz v2, :cond_1

    .line 99
    const v2, 0x7f0f00d5

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 103
    .local v0, "image":Landroid/widget/ImageView;
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_0

    .line 104
    const/4 v1, 0x0

    .line 114
    .end local v0    # "image":Landroid/widget/ImageView;
    .end local p1    # "v":Landroid/view/View;
    :goto_0
    return v1

    .line 107
    .restart local v0    # "image":Landroid/widget/ImageView;
    .restart local p1    # "v":Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/widget/controller/WidgetDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getHomeController()Lcom/android/launcher3/home/HomeController;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/launcher3/home/HomeController;->enterDragState(Z)V

    .line 109
    check-cast p1, Lcom/android/launcher3/widget/view/WidgetItemView;

    .end local p1    # "v":Landroid/view/View;
    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/widget/controller/WidgetDragController;->beginDraggingWidget(Lcom/android/launcher3/widget/view/WidgetItemView;Landroid/widget/ImageView;)Z

    goto :goto_0

    .line 111
    .end local v0    # "image":Landroid/widget/ImageView;
    .restart local p1    # "v":Landroid/view/View;
    :cond_1
    const-string v2, "WidgetDragController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected dragging view: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private beginDraggingWidget(Lcom/android/launcher3/widget/view/WidgetItemView;Landroid/widget/ImageView;)Z
    .locals 19
    .param p1, "v"    # Lcom/android/launcher3/widget/view/WidgetItemView;
    .param p2, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 118
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/widget/view/WidgetItemView;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;

    .line 122
    .local v5, "createItemInfo":Lcom/android/launcher3/common/base/item/PendingAddItemInfo;
    const/high16 v7, 0x3f800000    # 1.0f

    .line 124
    .local v7, "scale":F
    invoke-virtual/range {p2 .. p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;

    .line 126
    .local v10, "drawable":Lcom/android/launcher3/common/drawable/FastBitmapDrawable;
    invoke-virtual {v10}, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 128
    .local v6, "bounds":Landroid/graphics/Rect;
    instance-of v1, v5, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    if-eqz v1, :cond_2

    move-object v9, v5

    .line 132
    check-cast v9, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    .line 133
    .local v9, "createWidgetInfo":Lcom/android/launcher3/widget/PendingAddWidgetInfo;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/widget/controller/WidgetDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getHomeController()Lcom/android/launcher3/home/HomeController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/android/launcher3/home/Workspace;->estimateItemSize(Lcom/android/launcher3/common/base/item/ItemInfo;)[I

    move-result-object v18

    .line 135
    .local v18, "size":[I
    invoke-virtual {v10}, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v11

    .line 136
    .local v11, "icon":Landroid/graphics/Bitmap;
    const/high16 v14, 0x3fa00000    # 1.25f

    .line 137
    .local v14, "minScale":F
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v14

    float-to-int v1, v1

    const/4 v2, 0x0

    aget v2, v18, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 139
    .local v13, "maxWidth":I
    const/4 v1, 0x1

    new-array v0, v1, [I

    move-object/from16 v16, v0

    .line 140
    .local v16, "previewSizeBeforeScale":[I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/widget/controller/WidgetDragController;->mPreviewUtils:Lcom/android/launcher3/widget/model/WidgetPreviewUtils;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/widget/controller/WidgetDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v4, v9, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->info:Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    move-object/from16 v0, v16

    invoke-virtual {v1, v2, v4, v13, v0}, Lcom/android/launcher3/widget/model/WidgetPreviewUtils;->generateWidgetPreview(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;I[I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 143
    .local v3, "preview":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    aget v1, v16, v1

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 145
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    const/4 v2, 0x0

    aget v2, v16, v2

    sub-int/2addr v1, v2

    div-int/lit8 v15, v1, 0x2

    .line 146
    .local v15, "padding":I
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 147
    invoke-virtual/range {p2 .. p2}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    mul-int/2addr v1, v15

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int v15, v1, v2

    .line 150
    :cond_0
    iget v1, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v15

    iput v1, v6, Landroid/graphics/Rect;->left:I

    .line 151
    iget v1, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v15

    iput v1, v6, Landroid/graphics/Rect;->right:I

    .line 153
    .end local v15    # "padding":I
    :cond_1
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v7, v1, v2

    .line 168
    .end local v9    # "createWidgetInfo":Lcom/android/launcher3/widget/PendingAddWidgetInfo;
    .end local v11    # "icon":Landroid/graphics/Bitmap;
    .end local v13    # "maxWidth":I
    .end local v14    # "minScale":F
    .end local v16    # "previewSizeBeforeScale":[I
    .end local v18    # "size":[I
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/widget/controller/WidgetDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v2, p2

    move-object/from16 v4, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/launcher3/Launcher;->beginDragFromWidget(Landroid/view/View;Landroid/graphics/Bitmap;Lcom/android/launcher3/common/drag/DragSource;Ljava/lang/Object;Landroid/graphics/Rect;F)V

    .line 170
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 171
    const/4 v1, 0x1

    return v1

    .line 155
    .end local v3    # "preview":Landroid/graphics/Bitmap;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/widget/view/WidgetItemView;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    .line 156
    .local v8, "createShortcutInfo":Lcom/android/launcher3/widget/PendingAddShortcutInfo;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/widget/controller/WidgetDragController;->mIconCache:Lcom/android/launcher3/common/model/IconCache;

    invoke-virtual {v8}, Lcom/android/launcher3/widget/PendingAddShortcutInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/common/model/IconCache;->getFullResIcon(Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 157
    .local v11, "icon":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/widget/controller/WidgetDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getIconSize()I

    move-result v12

    .line 158
    .local v12, "iconSize":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/widget/controller/WidgetDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v11, v1, v12, v12}, Lcom/android/launcher3/util/BitmapUtils;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 159
    .local v17, "previewWithoutTray":Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/android/launcher3/theme/OpenThemeManager;->getInstance()Lcom/android/launcher3/theme/OpenThemeManager;

    move-result-object v1

    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v1, v0, v12, v2}, Lcom/android/launcher3/theme/OpenThemeManager;->getIconWithTrayIfNeeded(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 160
    .restart local v3    # "preview":Landroid/graphics/Bitmap;
    if-nez v3, :cond_3

    .line 161
    move-object/from16 v3, v17

    .line 163
    :cond_3
    const/4 v1, 0x1

    iput v1, v5, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->spanY:I

    iput v1, v5, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->spanX:I

    .line 164
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/widget/controller/WidgetDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getIconSize()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v7, v1, v2

    goto :goto_0
.end method


# virtual methods
.method public getController()Lcom/android/launcher3/common/stage/Stage;
    .locals 1

    .prologue
    .line 231
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDragSourceType()I
    .locals 1

    .prologue
    .line 221
    const/4 v0, 0x5

    return v0
.end method

.method public getIntrinsicIconSize()I
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x0

    return v0
.end method

.method public getOutlineColor()I
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getOutlineColor()I

    move-result v0

    return v0
.end method

.method public getPageIndexForDragView(Lcom/android/launcher3/common/base/item/ItemInfo;)I
    .locals 1
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 216
    const/4 v0, 0x0

    return v0
.end method

.method public getQuickOptionFlags(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)I
    .locals 1
    .param p1, "dragObject"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .prologue
    .line 202
    const/4 v0, 0x0

    return v0
.end method

.method public onDropCompleted(Landroid/view/View;Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "d"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .param p3, "success"    # Z

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetDragController;->mHostViewLoader:Lcom/android/launcher3/widget/WidgetHostViewLoader;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetDragController;->mHostViewLoader:Lcom/android/launcher3/widget/WidgetHostViewLoader;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/WidgetHostViewLoader;->onHostViewDropped()V

    .line 184
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetDragController;->mHostViewLoader:Lcom/android/launcher3/widget/WidgetHostViewLoader;

    .line 187
    :cond_0
    if-nez p3, :cond_1

    .line 190
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHomeController()Lcom/android/launcher3/home/HomeController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->exitDragStateDelayed()V

    .line 195
    :cond_1
    if-nez p3, :cond_2

    .line 196
    const/4 v0, 0x0

    iput-boolean v0, p2, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    .line 198
    :cond_2
    return-void
.end method

.method public onExtraObjectDragged(Ljava/util/ArrayList;)V
    .locals 0
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
    .line 207
    .local p1, "extraDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
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
    .line 212
    .local p2, "succeedDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    .local p3, "failedDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    return-void
.end method

.method public startDrag(Landroid/view/View;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 69
    invoke-virtual {p1}, Landroid/view/View;->isInTouchMode()Z

    move-result v3

    if-nez v3, :cond_1

    .line 93
    :cond_0
    :goto_0
    return v2

    .line 70
    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/widget/controller/WidgetDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->isRunningAnimation()Z

    move-result v3

    if-nez v3, :cond_0

    .line 73
    const-string v3, "WidgetDragController"

    const-string v4, "onLonglick dragging enabled?."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v3, p0, Lcom/android/launcher3/widget/controller/WidgetDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->isDraggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 77
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    if-eqz v3, :cond_2

    .line 79
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    .line 80
    .local v0, "info":Lcom/android/launcher3/widget/PendingAddWidgetInfo;
    invoke-virtual {v0}, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->getProviderInfo()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    .line 81
    .local v1, "providerInfo":Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;
    invoke-virtual {v1}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->getSpanX()I

    move-result v3

    iput v3, v0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->spanX:I

    .line 82
    invoke-virtual {v1}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->getSpanY()I

    move-result v3

    iput v3, v0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->spanY:I

    .line 83
    invoke-virtual {v1}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->getMinSpanX()I

    move-result v3

    iput v3, v0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->minSpanX:I

    .line 84
    invoke-virtual {v1}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->getMinSpanY()I

    move-result v3

    iput v3, v0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->minSpanY:I

    .line 87
    .end local v0    # "info":Lcom/android/launcher3/widget/PendingAddWidgetInfo;
    .end local v1    # "providerInfo":Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/controller/WidgetDragController;->beginDragging(Landroid/view/View;)Z

    move-result v2

    .line 88
    .local v2, "status":Z
    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    if-eqz v3, :cond_0

    .line 89
    new-instance v3, Lcom/android/launcher3/widget/WidgetHostViewLoader;

    iget-object v4, p0, Lcom/android/launcher3/widget/controller/WidgetDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v3, v4, p1}, Lcom/android/launcher3/widget/WidgetHostViewLoader;-><init>(Lcom/android/launcher3/Launcher;Landroid/view/View;)V

    iput-object v3, p0, Lcom/android/launcher3/widget/controller/WidgetDragController;->mHostViewLoader:Lcom/android/launcher3/widget/WidgetHostViewLoader;

    .line 90
    iget-object v3, p0, Lcom/android/launcher3/widget/controller/WidgetDragController;->mHostViewLoader:Lcom/android/launcher3/widget/WidgetHostViewLoader;

    invoke-virtual {v3}, Lcom/android/launcher3/widget/WidgetHostViewLoader;->preloadWidget()Z

    .line 91
    iget-object v3, p0, Lcom/android/launcher3/widget/controller/WidgetDragController;->mDragManager:Lcom/android/launcher3/common/drag/DragManager;

    iget-object v4, p0, Lcom/android/launcher3/widget/controller/WidgetDragController;->mHostViewLoader:Lcom/android/launcher3/widget/WidgetHostViewLoader;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/common/drag/DragManager;->addDragListener(Lcom/android/launcher3/common/drag/DragManager$DragListener;)V

    goto :goto_0
.end method
