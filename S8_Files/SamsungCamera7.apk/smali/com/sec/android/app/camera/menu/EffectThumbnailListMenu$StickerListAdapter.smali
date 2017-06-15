.class Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$StickerListAdapter;
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
    name = "StickerListAdapter"
.end annotation


# instance fields
.field private mCategoryCommandId:I

.field private mStickerItemList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/android/app/camera/widget/gl/StickerItem;",
            ">;"
        }
    .end annotation
.end field

.field private mStickerResource:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;)V
    .locals 13
    .param p2, "stickerMode"    # Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2337
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$StickerListAdapter;->this$0:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2333
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    iput-object v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$StickerListAdapter;->mStickerItemList:Landroid/util/SparseArray;

    .line 2334
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$StickerListAdapter;->mStickerResource:Ljava/util/ArrayList;

    .line 2338
    iget v5, p2, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;->commandId:I

    iput v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$StickerListAdapter;->mCategoryCommandId:I

    .line 2340
    iget-object v5, p2, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;->packageName:Ljava/lang/String;

    invoke-static {v5}, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->getStickerType(Ljava/lang/String;)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 2355
    const/4 v4, -0x1

    .line 2359
    .local v4, "titleResId":I
    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {p2}, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;->getStickerList()Ljava/util/LinkedHashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2360
    .local v3, "stickerInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerInfo;

    .line 2361
    .local v2, "stickerInfo":Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerInfo;
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/StickerMenuResourceBundle;

    const/4 v6, 0x5

    new-array v6, v6, [I

    iget v7, v2, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerInfo;->thumbnailResourceId:I

    aput v7, v6, v8

    aput v8, v6, v9

    aput v8, v6, v10

    iget v7, v2, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerInfo;->commandId:I

    aput v7, v6, v11

    aput v4, v6, v12

    invoke-direct {v0, v6}, Lcom/sec/android/app/camera/resourcedata/StickerMenuResourceBundle;-><init>([I)V

    .line 2362
    .local v0, "bundle":Lcom/sec/android/app/camera/resourcedata/StickerMenuResourceBundle;
    iget-object v6, p2, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/sec/android/app/camera/resourcedata/StickerMenuResourceBundle;->setPackage(Ljava/lang/String;)V

    .line 2363
    iget-object v6, v2, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerInfo;->stickerName:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/sec/android/app/camera/resourcedata/StickerMenuResourceBundle;->setStickerName(Ljava/lang/String;)V

    .line 2364
    iget v6, p2, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;->stickerType:I

    invoke-virtual {v0, v6}, Lcom/sec/android/app/camera/resourcedata/StickerMenuResourceBundle;->setStickerType(I)V

    .line 2365
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$StickerListAdapter;->mStickerResource:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2343
    .end local v0    # "bundle":Lcom/sec/android/app/camera/resourcedata/StickerMenuResourceBundle;
    .end local v2    # "stickerInfo":Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerInfo;
    .end local v3    # "stickerInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerInfo;>;"
    .end local v4    # "titleResId":I
    :pswitch_0
    const/16 v5, 0x232d

    invoke-static {v5}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v1

    .line 2344
    .local v1, "resIDs":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v5, 0x5

    new-array v5, v5, [I

    iget v6, v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    aput v6, v5, v8

    iget v6, v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    aput v6, v5, v9

    iget v6, v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    aput v6, v5, v10

    const/16 v6, 0x232d

    aput v6, v5, v11

    iget v6, v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    aput v6, v5, v12

    invoke-direct {v0, v5}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;-><init>([I)V

    .line 2345
    .local v0, "bundle":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$StickerListAdapter;->mStickerResource:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2346
    const v4, 0x7f090168

    .line 2347
    .restart local v4    # "titleResId":I
    goto :goto_0

    .line 2349
    .end local v0    # "bundle":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .end local v1    # "resIDs":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    .end local v4    # "titleResId":I
    :pswitch_1
    const v4, 0x7f090038

    .line 2350
    .restart local v4    # "titleResId":I
    goto :goto_0

    .line 2352
    .end local v4    # "titleResId":I
    :pswitch_2
    const v4, 0x7f09022f

    .line 2353
    .restart local v4    # "titleResId":I
    goto :goto_0

    .line 2367
    .restart local v3    # "stickerInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerInfo;>;"
    :cond_0
    return-void

    .line 2340
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;
    .param p2, "x1"    # Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;
    .param p3, "x2"    # Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$1;

    .prologue
    .line 2331
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$StickerListAdapter;-><init>(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 2371
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$StickerListAdapter;->mStickerResource:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getView(ILcom/samsung/android/glview/GLView;)Lcom/samsung/android/glview/GLView;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Lcom/samsung/android/glview/GLView;

    .prologue
    const/4 v2, 0x0

    .line 2376
    if-nez p2, :cond_1

    .line 2377
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$StickerListAdapter;->mStickerResource:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    .line 2378
    .local v6, "itemData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$StickerListAdapter;->mStickerItemList:Landroid/util/SparseArray;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/gl/StickerItem;

    .line 2379
    .local v0, "item":Lcom/sec/android/app/camera/widget/gl/StickerItem;
    if-nez v0, :cond_0

    .line 2380
    invoke-virtual {v6}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$StickerListAdapter;->this$0:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    iget-object v3, v3, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCommandReceiver()Lcom/sec/android/app/camera/interfaces/CommandInterface;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/interfaces/CommandInterface;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v7

    .line 2381
    .local v7, "command":Lcom/sec/android/app/camera/command/MenuCommand;
    if-eqz v7, :cond_0

    .line 2382
    new-instance v0, Lcom/sec/android/app/camera/widget/gl/StickerItem;

    .end local v0    # "item":Lcom/sec/android/app/camera/widget/gl/StickerItem;
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$StickerListAdapter;->this$0:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    iget-object v1, v1, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$StickerListAdapter;->this$0:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_ITEM_WIDTH:I
    invoke-static {v3}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->access$3400(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)I

    move-result v3

    int-to-float v4, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$StickerListAdapter;->this$0:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_ITEM_HEIGHT:I
    invoke-static {v3}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->access$3500(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)I

    move-result v3

    int-to-float v5, v3

    move v3, v2

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/widget/gl/StickerItem;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;)V

    .line 2383
    .restart local v0    # "item":Lcom/sec/android/app/camera/widget/gl/StickerItem;
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$StickerListAdapter;->this$0:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mStickerListMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->access$3600(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$StickerListAdapter;->mCategoryCommandId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/glview/GLView$TouchListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/StickerItem;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 2384
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$StickerListAdapter;->this$0:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mStickerListMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->access$3600(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$StickerListAdapter;->mCategoryCommandId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/glview/GLView$FocusListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/StickerItem;->setFocusListener(Lcom/samsung/android/glview/GLView$FocusListener;)V

    .line 2385
    new-instance v1, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$StickerListAdapter$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$StickerListAdapter$1;-><init>(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$StickerListAdapter;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/StickerItem;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 2394
    new-instance v1, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$StickerListAdapter$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$StickerListAdapter$2;-><init>(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$StickerListAdapter;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/StickerItem;->setSelectListener(Lcom/sec/android/app/camera/widget/gl/StickerItem$SelectListener;)V

    .line 2400
    invoke-virtual {v6}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/StickerItem;->setTag(I)V

    .line 2402
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$StickerListAdapter;->mStickerItemList:Landroid/util/SparseArray;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2403
    if-nez p1, :cond_0

    .line 2404
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$StickerListAdapter;->this$0:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    # invokes: Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->refreshNextFocus(Lcom/samsung/android/glview/GLView;)V
    invoke-static {v1, v0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->access$1600(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;Lcom/samsung/android/glview/GLView;)V

    .line 2410
    .end local v0    # "item":Lcom/sec/android/app/camera/widget/gl/StickerItem;
    .end local v6    # "itemData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .end local v7    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    move-object v0, p2

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 2415
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$StickerListAdapter;->mStickerItemList:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 2416
    return-void
.end method
