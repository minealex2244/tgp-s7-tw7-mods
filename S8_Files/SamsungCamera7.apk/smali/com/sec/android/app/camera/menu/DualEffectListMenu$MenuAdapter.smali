.class Lcom/sec/android/app/camera/menu/DualEffectListMenu$MenuAdapter;
.super Ljava/lang/Object;
.source "DualEffectListMenu.java"

# interfaces
.implements Lcom/samsung/android/glview/GLAbsList$Adapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/menu/DualEffectListMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/menu/DualEffectListMenu;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/menu/DualEffectListMenu;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/DualEffectListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/DualEffectListMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/menu/DualEffectListMenu;Lcom/sec/android/app/camera/menu/DualEffectListMenu$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/app/camera/menu/DualEffectListMenu;
    .param p2, "x1"    # Lcom/sec/android/app/camera/menu/DualEffectListMenu$1;

    .prologue
    .line 204
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/DualEffectListMenu$MenuAdapter;-><init>(Lcom/sec/android/app/camera/menu/DualEffectListMenu;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/DualEffectListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/DualEffectListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/DualEffectListMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->access$100(Lcom/sec/android/app/camera/menu/DualEffectListMenu;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public getView(ILcom/samsung/android/glview/GLView;)Lcom/samsung/android/glview/GLView;
    .locals 13
    .param p1, "position"    # I
    .param p2, "convertView"    # Lcom/samsung/android/glview/GLView;

    .prologue
    const/4 v2, 0x0

    .line 213
    if-nez p2, :cond_2

    .line 214
    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/DualEffectListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/DualEffectListMenu;

    iget-object v1, v1, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/DualEffectListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/DualEffectListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/DualEffectListMenu;->EFFECT_ITEM_WIDTH:I
    invoke-static {v4}, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->access$200(Lcom/sec/android/app/camera/menu/DualEffectListMenu;)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/DualEffectListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/DualEffectListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/DualEffectListMenu;->EFFECT_ITEM_HEIGHT:I
    invoke-static {v5}, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->access$300(Lcom/sec/android/app/camera/menu/DualEffectListMenu;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x3

    int-to-float v5, v5

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    .line 215
    .local v0, "lineView":Lcom/samsung/android/glview/GLViewGroup;
    const/4 v11, 0x0

    .local v11, "i":I
    mul-int/lit8 v12, p1, 0x3

    .local v12, "resourceIndex":I
    :goto_0
    const/4 v1, 0x3

    if-ge v11, v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/DualEffectListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/DualEffectListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/DualEffectListMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->access$100(Lcom/sec/android/app/camera/menu/DualEffectListMenu;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v1

    if-ge v12, v1, :cond_3

    .line 217
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/DualEffectListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/DualEffectListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/DualEffectListMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->access$100(Lcom/sec/android/app/camera/menu/DualEffectListMenu;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v1

    invoke-virtual {v1, v12}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v9

    .line 218
    .local v9, "itemData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/DualEffectListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/DualEffectListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/DualEffectListMenu;->mItemList:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->access$400(Lcom/sec/android/app/camera/menu/DualEffectListMenu;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v9}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;

    .line 219
    .local v3, "item":Lcom/sec/android/app/camera/widget/gl/DualEffectItem;
    if-nez v3, :cond_0

    .line 220
    invoke-virtual {v9}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/DualEffectListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/DualEffectListMenu;

    iget-object v4, v4, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCommandReceiver()Lcom/sec/android/app/camera/interfaces/CommandInterface;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/interfaces/CommandInterface;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v10

    .line 221
    .local v10, "command":Lcom/sec/android/app/camera/command/MenuCommand;
    if-eqz v10, :cond_0

    .line 222
    new-instance v3, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;

    .end local v3    # "item":Lcom/sec/android/app/camera/widget/gl/DualEffectItem;
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/DualEffectListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/DualEffectListMenu;

    iget-object v4, v1, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/DualEffectListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/DualEffectListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/DualEffectListMenu;->EFFECT_ITEM_HEIGHT:I
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->access$300(Lcom/sec/android/app/camera/menu/DualEffectListMenu;)I

    move-result v1

    mul-int/2addr v1, v11

    int-to-float v6, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/DualEffectListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/DualEffectListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/DualEffectListMenu;->EFFECT_ITEM_WIDTH:I
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->access$200(Lcom/sec/android/app/camera/menu/DualEffectListMenu;)I

    move-result v1

    int-to-float v7, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/DualEffectListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/DualEffectListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/DualEffectListMenu;->EFFECT_ITEM_HEIGHT:I
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->access$300(Lcom/sec/android/app/camera/menu/DualEffectListMenu;)I

    move-result v1

    int-to-float v8, v1

    move v5, v2

    invoke-direct/range {v3 .. v10}, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;)V

    .line 223
    .restart local v3    # "item":Lcom/sec/android/app/camera/widget/gl/DualEffectItem;
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/DualEffectListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/DualEffectListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/DualEffectListMenu;->mMute:Z
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->access$500(Lcom/sec/android/app/camera/menu/DualEffectListMenu;)Z

    move-result v1

    invoke-virtual {v3, v1}, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->setMute(Z)V

    .line 224
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/DualEffectListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/DualEffectListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/DualEffectListMenu;->mList:Lcom/samsung/android/glview/GLGridList;
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->access$600(Lcom/sec/android/app/camera/menu/DualEffectListMenu;)Lcom/samsung/android/glview/GLGridList;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 225
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/DualEffectListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/DualEffectListMenu;

    invoke-virtual {v3, v1}, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 226
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_GPU_EFFECT:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x7f

    :goto_1
    invoke-virtual {v3, v1}, Lcom/sec/android/app/camera/widget/gl/DualEffectItem;->setTag(I)V

    .line 228
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/DualEffectListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/DualEffectListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/DualEffectListMenu;->mItemList:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/DualEffectListMenu;->access$400(Lcom/sec/android/app/camera/menu/DualEffectListMenu;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v9}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v4

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 231
    .end local v10    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    :cond_0
    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 215
    add-int/lit8 v11, v11, 0x1

    mul-int/lit8 v1, p1, 0x3

    add-int v12, v1, v11

    goto/16 :goto_0

    .line 226
    .restart local v10    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    :cond_1
    const/16 v1, 0x8

    goto :goto_1

    .end local v0    # "lineView":Lcom/samsung/android/glview/GLViewGroup;
    .end local v3    # "item":Lcom/sec/android/app/camera/widget/gl/DualEffectItem;
    .end local v9    # "itemData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .end local v10    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    .end local v11    # "i":I
    .end local v12    # "resourceIndex":I
    :cond_2
    move-object v0, p2

    .line 235
    :cond_3
    return-object v0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 241
    return-void
.end method
