.class Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$TabMenuAdapter;
.super Ljava/lang/Object;
.source "WatermarkThumbnailListMenu.java"

# interfaces
.implements Lcom/samsung/android/glview/GLAbsList$Adapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabMenuAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;)V
    .locals 0

    .prologue
    .line 721
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$TabMenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;
    .param p2, "x1"    # Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$1;

    .prologue
    .line 721
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$TabMenuAdapter;-><init>(Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 724
    const/4 v0, 0x6

    return v0
.end method

.method public getView(ILcom/samsung/android/glview/GLView;)Lcom/samsung/android/glview/GLView;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Lcom/samsung/android/glview/GLView;

    .prologue
    const/4 v2, 0x0

    .line 729
    if-nez p2, :cond_1

    .line 730
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$TabMenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mWatermarkCategoryResource:Lcom/sec/android/app/camera/resourcedata/WatermarkCategoryResourceData;
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->access$1500(Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;)Lcom/sec/android/app/camera/resourcedata/WatermarkCategoryResourceData;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/resourcedata/WatermarkCategoryResourceData;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v8

    .line 731
    .local v8, "itemData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$TabMenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mTabItemList:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->access$1600(Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v8}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/gl/WatermarkTabItem;

    .line 732
    .local v0, "item":Lcom/sec/android/app/camera/widget/gl/WatermarkTabItem;
    if-nez v0, :cond_0

    .line 733
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$TabMenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;

    iget-object v1, v1, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v8}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getTitleId()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    # getter for: Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_ITEM_TEXT_FONT_SIZE:I
    invoke-static {}, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->access$1700()I

    move-result v3

    int-to-float v3, v3

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/sec/android/app/camera/util/Util;->getStringWidth(Ljava/lang/String;FLandroid/graphics/Typeface;)F

    move-result v9

    .line 734
    .local v9, "tabTextWidth":F
    new-instance v0, Lcom/sec/android/app/camera/widget/gl/WatermarkTabItem;

    .end local v0    # "item":Lcom/sec/android/app/camera/widget/gl/WatermarkTabItem;
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$TabMenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;

    iget-object v1, v1, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$TabMenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mTabTextPadding:I
    invoke-static {v3}, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->access$1800(Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float v4, v9, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$TabMenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->WATERMARK_TAB_MENU_HEIGHT:I
    invoke-static {v3}, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->access$1900(Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;)I

    move-result v3

    int-to-float v5, v3

    invoke-virtual {v8}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v6

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$TabMenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;

    iget-object v3, v3, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 735
    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v8}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getTitleId()I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    move v3, v2

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/widget/gl/WatermarkTabItem;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFILjava/lang/String;)V

    .line 736
    .restart local v0    # "item":Lcom/sec/android/app/camera/widget/gl/WatermarkTabItem;
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$TabMenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mTabList:Lcom/samsung/android/glview/GLList;
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->access$2000(Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;)Lcom/samsung/android/glview/GLList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/WatermarkTabItem;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 737
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$TabMenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/WatermarkTabItem;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 738
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/widget/gl/WatermarkTabItem;->setTag(I)V

    .line 739
    new-instance v1, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$TabMenuAdapter$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$TabMenuAdapter$1;-><init>(Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$TabMenuAdapter;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/WatermarkTabItem;->setTabItemSelectListener(Lcom/sec/android/app/camera/widget/gl/WatermarkTabItem$TabItemSelectListener;)V

    .line 762
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$TabMenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mTabItemList:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->access$1600(Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v8}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 766
    .end local v0    # "item":Lcom/sec/android/app/camera/widget/gl/WatermarkTabItem;
    .end local v8    # "itemData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .end local v9    # "tabTextWidth":F
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
    .line 771
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$TabMenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->mTabItemList:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->access$1600(Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 772
    return-void
.end method
