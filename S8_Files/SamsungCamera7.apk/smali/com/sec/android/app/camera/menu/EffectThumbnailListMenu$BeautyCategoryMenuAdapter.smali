.class Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$BeautyCategoryMenuAdapter;
.super Ljava/lang/Object;
.source "EffectThumbnailListMenu.java"

# interfaces
.implements Lcom/samsung/android/glview/GLAbsList$Adapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BeautyCategoryMenuAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)V
    .locals 0

    .prologue
    .line 2127
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$BeautyCategoryMenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;
    .param p2, "x1"    # Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$1;

    .prologue
    .line 2127
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$BeautyCategoryMenuAdapter;-><init>(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 2130
    # getter for: Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentBeautyCategoryResourceListLock:Ljava/lang/Object;
    invoke-static {}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->access$1000()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2131
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$BeautyCategoryMenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentBeautyCategoryResourceList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->access$1100(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 2132
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getView(ILcom/samsung/android/glview/GLView;)Lcom/samsung/android/glview/GLView;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Lcom/samsung/android/glview/GLView;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v2, 0x0

    .line 2137
    if-nez p2, :cond_4

    .line 2139
    # getter for: Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentBeautyCategoryResourceListLock:Ljava/lang/Object;
    invoke-static {}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->access$1000()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 2140
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$BeautyCategoryMenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentBeautyCategoryResourceList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->access$1100(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    .line 2141
    .local v6, "itemData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2142
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$BeautyCategoryMenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyItemList:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->access$1200(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v6}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/gl/EffectItem;

    .line 2143
    .local v0, "item":Lcom/sec/android/app/camera/widget/gl/EffectItem;
    if-nez v0, :cond_4

    .line 2144
    invoke-virtual {v6}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$BeautyCategoryMenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    iget-object v3, v3, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCommandReceiver()Lcom/sec/android/app/camera/interfaces/CommandInterface;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/interfaces/CommandInterface;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v7

    .line 2145
    .local v7, "command":Lcom/sec/android/app/camera/command/MenuCommand;
    if-eqz v7, :cond_4

    .line 2146
    new-instance v0, Lcom/sec/android/app/camera/widget/gl/EffectItem;

    .end local v0    # "item":Lcom/sec/android/app/camera/widget/gl/EffectItem;
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$BeautyCategoryMenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    iget-object v1, v1, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$BeautyCategoryMenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_ITEM_WIDTH:I
    invoke-static {v3}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->access$1300(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)I

    move-result v3

    int-to-float v4, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$BeautyCategoryMenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_ITEM_HEIGHT:I
    invoke-static {v3}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->access$1400(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)I

    move-result v3

    int-to-float v5, v3

    move v3, v2

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/widget/gl/EffectItem;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;)V

    .line 2147
    .restart local v0    # "item":Lcom/sec/android/app/camera/widget/gl/EffectItem;
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$BeautyCategoryMenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->access$1500(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/EffectItem;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 2148
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$BeautyCategoryMenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->access$1500(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/EffectItem;->setFocusListener(Lcom/samsung/android/glview/GLView$FocusListener;)V

    .line 2149
    new-instance v1, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$BeautyCategoryMenuAdapter$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$BeautyCategoryMenuAdapter$1;-><init>(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$BeautyCategoryMenuAdapter;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/EffectItem;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 2158
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_GPU_EFFECT:Z

    if-eqz v1, :cond_3

    const/16 v1, 0x7f

    :goto_0
    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/EffectItem;->setTag(I)V

    .line 2160
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$BeautyCategoryMenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentMode:I
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->access$300(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)I

    move-result v1

    if-ne v1, v10, :cond_0

    .line 2161
    invoke-virtual {v0, v9}, Lcom/sec/android/app/camera/widget/gl/EffectItem;->setDeleteButtonVisibility(I)V

    .line 2162
    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/EffectItem;->getButton()Lcom/samsung/android/glview/GLView;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/samsung/android/glview/GLView;->setClickable(Z)V

    .line 2165
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$BeautyCategoryMenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyItemList:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->access$1200(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v6}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2166
    if-nez p1, :cond_1

    .line 2167
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$BeautyCategoryMenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    # invokes: Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->refreshNextFocus(Lcom/samsung/android/glview/GLView;)V
    invoke-static {v1, v0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->access$1600(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;Lcom/samsung/android/glview/GLView;)V

    .line 2169
    :cond_1
    new-instance v8, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$BeautyCategoryMenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    iget-object v1, v1, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$BeautyCategoryMenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;
    invoke-static {v2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->access$1700(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$BeautyCategoryMenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyLastBox:Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;
    invoke-static {v3}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->access$1800(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;

    move-result-object v3

    invoke-direct {v8, v1, v2, v3}, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;-><init>(Lcom/samsung/android/glview/GLContext;Lcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;)V

    .line 2170
    .local v8, "dropBox":Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;
    invoke-virtual {v8, v10}, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;->enableAreaLine(Z)V

    .line 2171
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$BeautyCategoryMenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    # setter for: Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyLastBox:Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;
    invoke-static {v1, v8}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->access$1802(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;)Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;

    .line 2172
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$BeautyCategoryMenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyFirstBox:Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->access$1900(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;

    move-result-object v1

    if-nez v1, :cond_2

    .line 2173
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$BeautyCategoryMenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    # setter for: Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyFirstBox:Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;
    invoke-static {v1, v8}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->access$1902(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;)Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;

    .line 2175
    :cond_2
    const-string v1, "beautyDropBox"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/EffectItem;->setObjectTag(Ljava/lang/String;)V

    .line 2176
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$BeautyCategoryMenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    invoke-virtual {v8, v1}, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;->setDragListener(Lcom/samsung/android/glview/GLView$DragListener;)V

    .line 2177
    invoke-virtual {v8, v0}, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 2178
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$BeautyCategoryMenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyDragDropItemList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->access$2000(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2183
    .end local v0    # "item":Lcom/sec/android/app/camera/widget/gl/EffectItem;
    .end local v6    # "itemData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .end local v7    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    .end local v8    # "dropBox":Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;
    :goto_1
    return-object v8

    .line 2141
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 2158
    .restart local v0    # "item":Lcom/sec/android/app/camera/widget/gl/EffectItem;
    .restart local v6    # "itemData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .restart local v7    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    :cond_3
    const/16 v1, 0x8

    goto :goto_0

    .end local v0    # "item":Lcom/sec/android/app/camera/widget/gl/EffectItem;
    .end local v6    # "itemData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .end local v7    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    :cond_4
    move-object v8, p2

    .line 2183
    goto :goto_1
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2188
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$BeautyCategoryMenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    # setter for: Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyFirstBox:Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->access$1902(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;)Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;

    .line 2189
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$BeautyCategoryMenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    # setter for: Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyLastBox:Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->access$1802(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;)Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;

    .line 2190
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$BeautyCategoryMenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyDragDropItemList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->access$2000(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2191
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$BeautyCategoryMenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyItemList:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->access$1200(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 2192
    return-void
.end method
