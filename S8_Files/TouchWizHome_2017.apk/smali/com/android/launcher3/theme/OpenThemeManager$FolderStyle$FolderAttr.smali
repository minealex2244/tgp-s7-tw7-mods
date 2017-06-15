.class Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;
.super Ljava/lang/Object;
.source "OpenThemeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FolderAttr"
.end annotation


# instance fields
.field private folderSize:I

.field private mCloseFolderColor:I

.field private mCloseFolderImage:Landroid/graphics/Bitmap;

.field private mOpenFolderBgColor:I

.field private mOpenFolderImage:Landroid/graphics/drawable/Drawable;

.field private mOpenFolderTextColor:I

.field private mOpenFolderTitleColor:I

.field final synthetic this$0:Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;


# direct methods
.method private constructor <init>(Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;)V
    .locals 2

    .prologue
    .line 749
    iput-object p1, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;->this$0:Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 757
    # getter for: Lcom/android/launcher3/theme/OpenThemeManager;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/launcher3/theme/OpenThemeManager;->access$300()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09009a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;->folderSize:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;Lcom/android/launcher3/theme/OpenThemeManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;
    .param p2, "x1"    # Lcom/android/launcher3/theme/OpenThemeManager$1;

    .prologue
    .line 749
    invoke-direct {p0, p1}, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;-><init>(Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;IILandroid/graphics/drawable/Drawable;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/graphics/drawable/Drawable;
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .prologue
    .line 749
    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;->set(IILandroid/graphics/drawable/Drawable;II)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;

    .prologue
    .line 749
    invoke-direct {p0}, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;->getCloseFolderImage()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;

    .prologue
    .line 749
    invoke-direct {p0}, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;->getOpenFolderImage()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;

    .prologue
    .line 749
    invoke-direct {p0}, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;->getOpenFolderTitleColor()I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;

    .prologue
    .line 749
    invoke-direct {p0}, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;->getOpenFolderTextColor()I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;

    .prologue
    .line 749
    invoke-direct {p0}, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;->getCloseFolderColor()I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;IIIII)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .prologue
    .line 749
    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;->set(IIIII)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;
    .param p2, "x2"    # Landroid/graphics/drawable/Drawable;
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 749
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;->set(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;Landroid/graphics/drawable/Drawable;III)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 749
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;->set(Landroid/graphics/drawable/Drawable;III)V

    return-void
.end method

.method private getCloseFolderColor()I
    .locals 1

    .prologue
    .line 835
    iget v0, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;->mCloseFolderColor:I

    return v0
.end method

.method private getCloseFolderImage()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 847
    iget-object v0, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;->mCloseFolderImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private getOpenFolderImage()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 851
    iget-object v0, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;->mOpenFolderImage:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private getOpenFolderTextColor()I
    .locals 1

    .prologue
    .line 843
    iget v0, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;->mOpenFolderTextColor:I

    return v0
.end method

.method private getOpenFolderTitleColor()I
    .locals 1

    .prologue
    .line 839
    iget v0, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;->mOpenFolderTitleColor:I

    return v0
.end method

.method private set(IIIII)V
    .locals 6
    .param p1, "shape"    # I
    .param p2, "closeColor"    # I
    .param p3, "bgColor"    # I
    .param p4, "titleColor"    # I
    .param p5, "textColor"    # I

    .prologue
    .line 761
    # getter for: Lcom/android/launcher3/theme/OpenThemeManager;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/launcher3/theme/OpenThemeManager;->access$300()Landroid/content/Context;

    move-result-object v0

    .line 763
    .local v0, "context":Landroid/content/Context;
    iput p2, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;->mCloseFolderColor:I

    .line 764
    iput p4, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;->mOpenFolderTitleColor:I

    .line 765
    iput p5, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;->mOpenFolderTextColor:I

    .line 766
    iput p3, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;->mOpenFolderBgColor:I

    .line 767
    iget-object v3, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;->this$0:Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;

    # getter for: Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mThemeManager:Lcom/android/launcher3/theme/OpenThemeManager;
    invoke-static {v3}, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->access$400(Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;)Lcom/android/launcher3/theme/OpenThemeManager;

    move-result-object v3

    const-string v4, "open_folder_background_theme"

    invoke-virtual {v3, v4}, Lcom/android/launcher3/theme/OpenThemeManager;->getItemDrawableforDefaultResource(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;->mOpenFolderImage:Landroid/graphics/drawable/Drawable;

    .line 769
    iget-object v3, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;->mOpenFolderImage:Landroid/graphics/drawable/Drawable;

    instance-of v3, v3, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v3, :cond_0

    .line 770
    iget-object v3, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;->this$0:Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;

    # getter for: Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mThemeManager:Lcom/android/launcher3/theme/OpenThemeManager;
    invoke-static {v3}, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->access$400(Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;)Lcom/android/launcher3/theme/OpenThemeManager;

    move-result-object v3

    sget-object v4, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->OPEN_FOLDER_BG:Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;

    invoke-virtual {v4}, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->value()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/launcher3/theme/OpenThemeManager;->getItemBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 771
    .local v1, "openBg":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 772
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 775
    .end local v1    # "openBg":Landroid/graphics/Bitmap;
    :cond_0
    iget-object v3, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;->mOpenFolderImage:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;->mOpenFolderBgColor:I

    const v4, 0x1ffffff

    if-eq v3, v4, :cond_1

    .line 776
    iget-object v3, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;->mOpenFolderImage:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;->mOpenFolderBgColor:I

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 779
    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;->this$0:Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;

    # getter for: Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mThemeManager:Lcom/android/launcher3/theme/OpenThemeManager;
    invoke-static {v3}, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->access$400(Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;)Lcom/android/launcher3/theme/OpenThemeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/theme/OpenThemeManager;->isDefaultTheme()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 781
    sparse-switch p2, :sswitch_data_0

    .line 796
    const v2, 0x7f02009c

    .line 798
    .local v2, "resourceId":I
    :goto_0
    # getter for: Lcom/android/launcher3/theme/OpenThemeManager;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/launcher3/theme/OpenThemeManager;->access$300()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher3/util/BitmapUtils;->getBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;->mCloseFolderImage:Landroid/graphics/Bitmap;

    .line 802
    .end local v2    # "resourceId":I
    :goto_1
    iget-object v3, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;->mCloseFolderImage:Landroid/graphics/Bitmap;

    iget v4, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;->folderSize:I

    invoke-static {v3, v4}, Lcom/android/launcher3/theme/ThemeUtils;->resizeBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;->mCloseFolderImage:Landroid/graphics/Bitmap;

    .line 803
    return-void

    .line 783
    :sswitch_0
    const v2, 0x7f02009b

    .line 784
    .restart local v2    # "resourceId":I
    goto :goto_0

    .line 786
    .end local v2    # "resourceId":I
    :sswitch_1
    const v2, 0x7f02009d

    .line 787
    .restart local v2    # "resourceId":I
    goto :goto_0

    .line 789
    .end local v2    # "resourceId":I
    :sswitch_2
    const v2, 0x7f02009e

    .line 790
    .restart local v2    # "resourceId":I
    goto :goto_0

    .line 792
    .end local v2    # "resourceId":I
    :sswitch_3
    const v2, 0x7f02009f

    .line 793
    .restart local v2    # "resourceId":I
    goto :goto_0

    .line 800
    .end local v2    # "resourceId":I
    :cond_2
    # getter for: Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mFolderShapeRes:[I
    invoke-static {}, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->access$500()[I

    move-result-object v3

    aget v3, v3, p1

    invoke-static {v0, v3, p2}, Lcom/android/launcher3/util/BitmapUtils;->getBitmapWithColor(Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;->mCloseFolderImage:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 781
    nop

    :sswitch_data_0
    .sparse-switch
        -0x891c52 -> :sswitch_1
        -0x652e01 -> :sswitch_0
        -0x114282 -> :sswitch_2
        -0xc1e73 -> :sswitch_3
    .end sparse-switch
.end method

.method private set(IILandroid/graphics/drawable/Drawable;II)V
    .locals 3
    .param p1, "shape"    # I
    .param p2, "closeColor"    # I
    .param p3, "open"    # Landroid/graphics/drawable/Drawable;
    .param p4, "titleColor"    # I
    .param p5, "textColor"    # I

    .prologue
    .line 824
    # getter for: Lcom/android/launcher3/theme/OpenThemeManager;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/launcher3/theme/OpenThemeManager;->access$300()Landroid/content/Context;

    move-result-object v0

    .line 826
    .local v0, "context":Landroid/content/Context;
    iput p2, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;->mCloseFolderColor:I

    .line 827
    # getter for: Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mFolderShapeRes:[I
    invoke-static {}, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->access$500()[I

    move-result-object v1

    aget v1, v1, p1

    invoke-static {v0, v1, p2}, Lcom/android/launcher3/util/BitmapUtils;->getBitmapWithColor(Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;->mCloseFolderImage:Landroid/graphics/Bitmap;

    .line 828
    iput-object p3, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;->mOpenFolderImage:Landroid/graphics/drawable/Drawable;

    .line 829
    iput p4, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;->mOpenFolderTitleColor:I

    .line 830
    iput p5, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;->mOpenFolderTextColor:I

    .line 831
    iget-object v1, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;->mCloseFolderImage:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;->folderSize:I

    invoke-static {v1, v2}, Lcom/android/launcher3/theme/ThemeUtils;->resizeBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;->mCloseFolderImage:Landroid/graphics/Bitmap;

    .line 832
    return-void
.end method

.method private set(Landroid/graphics/drawable/Drawable;III)V
    .locals 3
    .param p1, "close"    # Landroid/graphics/drawable/Drawable;
    .param p2, "bgColor"    # I
    .param p3, "titleColor"    # I
    .param p4, "textColor"    # I

    .prologue
    .line 814
    invoke-static {p1}, Lcom/android/launcher3/util/BitmapUtils;->getBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;->mCloseFolderImage:Landroid/graphics/Bitmap;

    .line 815
    iput p2, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;->mOpenFolderBgColor:I

    .line 816
    iput p3, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;->mOpenFolderTitleColor:I

    .line 817
    iput p4, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;->mOpenFolderTextColor:I

    .line 818
    iget-object v0, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;->this$0:Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;

    # getter for: Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mThemeManager:Lcom/android/launcher3/theme/OpenThemeManager;
    invoke-static {v0}, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->access$400(Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;)Lcom/android/launcher3/theme/OpenThemeManager;

    move-result-object v0

    const-string v1, "open_folder_background_theme"

    invoke-virtual {v0, v1}, Lcom/android/launcher3/theme/OpenThemeManager;->getItemDrawableforDefaultResource(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;->mOpenFolderImage:Landroid/graphics/drawable/Drawable;

    .line 819
    iget-object v0, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;->mOpenFolderImage:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;->mOpenFolderImage:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;->mOpenFolderBgColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 820
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;->mCloseFolderImage:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;->folderSize:I

    invoke-static {v0, v1}, Lcom/android/launcher3/theme/ThemeUtils;->resizeBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;->mCloseFolderImage:Landroid/graphics/Bitmap;

    .line 821
    return-void
.end method

.method private set(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V
    .locals 2
    .param p1, "close"    # Landroid/graphics/drawable/Drawable;
    .param p2, "open"    # Landroid/graphics/drawable/Drawable;
    .param p3, "titleColor"    # I
    .param p4, "textColor"    # I

    .prologue
    .line 806
    invoke-static {p1}, Lcom/android/launcher3/util/BitmapUtils;->getBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;->mCloseFolderImage:Landroid/graphics/Bitmap;

    .line 807
    iput-object p2, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;->mOpenFolderImage:Landroid/graphics/drawable/Drawable;

    .line 808
    iput p3, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;->mOpenFolderTitleColor:I

    .line 809
    iput p4, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;->mOpenFolderTextColor:I

    .line 810
    iget-object v0, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;->mCloseFolderImage:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;->folderSize:I

    invoke-static {v0, v1}, Lcom/android/launcher3/theme/ThemeUtils;->resizeBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;->mCloseFolderImage:Landroid/graphics/Bitmap;

    .line 811
    return-void
.end method
