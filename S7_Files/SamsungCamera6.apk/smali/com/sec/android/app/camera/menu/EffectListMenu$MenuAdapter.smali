.class Lcom/sec/android/app/camera/menu/EffectListMenu$MenuAdapter;
.super Ljava/lang/Object;
.source "EffectListMenu.java"

# interfaces
.implements Lcom/samsung/android/glview/GLAbsList$Adapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/menu/EffectListMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/menu/EffectListMenu;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/menu/EffectListMenu;)V
    .locals 0

    .prologue
    .line 368
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/EffectListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/EffectListMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/menu/EffectListMenu;Lcom/sec/android/app/camera/menu/EffectListMenu$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/app/camera/menu/EffectListMenu;
    .param p2, "x1"    # Lcom/sec/android/app/camera/menu/EffectListMenu$1;

    .prologue
    .line 368
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/EffectListMenu$MenuAdapter;-><init>(Lcom/sec/android/app/camera/menu/EffectListMenu;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/EffectListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/EffectListMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/EffectListMenu;->access$100(Lcom/sec/android/app/camera/menu/EffectListMenu;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v0

    return v0
.end method

.method public getView(ILcom/samsung/android/glview/GLView;)Lcom/samsung/android/glview/GLView;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Lcom/samsung/android/glview/GLView;

    .prologue
    const/4 v2, 0x0

    .line 376
    if-nez p2, :cond_2

    .line 377
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/EffectListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/EffectListMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/EffectListMenu;->access$100(Lcom/sec/android/app/camera/menu/EffectListMenu;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v6

    .line 378
    .local v6, "itemData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/EffectListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/EffectListMenu;->mItemList:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/EffectListMenu;->access$200(Lcom/sec/android/app/camera/menu/EffectListMenu;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v6}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;

    .line 380
    .local v0, "item":Lcom/sec/android/app/camera/widget/gl/EffectListItem;
    if-nez v0, :cond_0

    .line 381
    invoke-virtual {v6}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/EffectListMenu;

    iget-object v3, v3, Lcom/sec/android/app/camera/menu/EffectListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCommandReceiver()Lcom/sec/android/app/camera/interfaces/CommandInterface;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/interfaces/CommandInterface;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v7

    .line 382
    .local v7, "command":Lcom/sec/android/app/camera/command/MenuCommand;
    if-eqz v7, :cond_0

    .line 383
    new-instance v0, Lcom/sec/android/app/camera/widget/gl/EffectListItem;

    .end local v0    # "item":Lcom/sec/android/app/camera/widget/gl/EffectListItem;
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/EffectListMenu;

    iget-object v1, v1, Lcom/sec/android/app/camera/menu/EffectListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/EffectListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/EffectListMenu;->EFFECT_ITEM_WIDTH:I
    invoke-static {v3}, Lcom/sec/android/app/camera/menu/EffectListMenu;->access$300(Lcom/sec/android/app/camera/menu/EffectListMenu;)I

    move-result v3

    int-to-float v4, v3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/EffectListMenu$MenuAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne p1, v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/EffectListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/EffectListMenu;->EFFECT_ITEM_HEIGHT:I
    invoke-static {v3}, Lcom/sec/android/app/camera/menu/EffectListMenu;->access$400(Lcom/sec/android/app/camera/menu/EffectListMenu;)I

    move-result v3

    int-to-float v5, v3

    :goto_0
    move v3, v2

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/widget/gl/EffectListItem;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;)V

    .line 384
    .restart local v0    # "item":Lcom/sec/android/app/camera/widget/gl/EffectListItem;
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/EffectListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/EffectListMenu;->mMute:Z
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/EffectListMenu;->access$600(Lcom/sec/android/app/camera/menu/EffectListMenu;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->setMute(Z)V

    .line 385
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/EffectListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/EffectListMenu;->mList:Lcom/samsung/android/glview/GLList;
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/EffectListMenu;->access$700(Lcom/sec/android/app/camera/menu/EffectListMenu;)Lcom/samsung/android/glview/GLList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 386
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/EffectListMenu;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 387
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/EffectListItem;->setTag(I)V

    .line 388
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/EffectListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/EffectListMenu;->mItemList:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/EffectListMenu;->access$200(Lcom/sec/android/app/camera/menu/EffectListMenu;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v6}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 393
    .end local v0    # "item":Lcom/sec/android/app/camera/widget/gl/EffectListItem;
    .end local v6    # "itemData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .end local v7    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    :cond_0
    :goto_1
    return-object v0

    .line 383
    .restart local v6    # "itemData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .restart local v7    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/EffectListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/EffectListMenu;->EFFECT_ITEM_HEIGHT:I
    invoke-static {v3}, Lcom/sec/android/app/camera/menu/EffectListMenu;->access$400(Lcom/sec/android/app/camera/menu/EffectListMenu;)I

    move-result v3

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/EffectListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/EffectListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/EffectListMenu;->EFFECT_LINE_THICKNESS:I
    invoke-static {v5}, Lcom/sec/android/app/camera/menu/EffectListMenu;->access$500(Lcom/sec/android/app/camera/menu/EffectListMenu;)I

    move-result v5

    add-int/2addr v3, v5

    int-to-float v5, v3

    goto :goto_0

    .end local v6    # "itemData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .end local v7    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    :cond_2
    move-object v0, p2

    .line 393
    goto :goto_1
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 399
    return-void
.end method
