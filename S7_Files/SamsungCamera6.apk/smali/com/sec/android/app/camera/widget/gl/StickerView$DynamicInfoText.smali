.class public final Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;
.super Ljava/lang/Object;
.source "StickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/widget/gl/StickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DynamicInfoText"
.end annotation


# instance fields
.field private mEditable:Z

.field private mExtraType:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraType;

.field private mFontSize:F

.field private mGLText:Lcom/samsung/android/glview/GLText;

.field private mHAlign:I

.field private mHeight:F

.field private mLeft:F

.field private mTextEditBG:Lcom/samsung/android/glview/GLRectangle;

.field private mTop:F

.field private mVAlign:I

.field private mWidth:F

.field final synthetic this$0:Lcom/sec/android/app/camera/widget/gl/StickerView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/widget/gl/StickerView;Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;F)V
    .locals 10
    .param p1, "this$0"    # Lcom/sec/android/app/camera/widget/gl/StickerView;
    .param p2, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p3, "extraMsg"    # Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;
    .param p4, "ratio"    # F

    .prologue
    .line 801
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;->this$0:Lcom/sec/android/app/camera/widget/gl/StickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 788
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;->mGLText:Lcom/samsung/android/glview/GLText;

    .line 789
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;->mTextEditBG:Lcom/samsung/android/glview/GLRectangle;

    .line 790
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;->mEditable:Z

    .line 791
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;->mHAlign:I

    .line 792
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;->mVAlign:I

    .line 793
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;->mLeft:F

    .line 794
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;->mTop:F

    .line 795
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;->mHeight:F

    .line 796
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;->mWidth:F

    .line 799
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;->mFontSize:F

    .line 802
    invoke-virtual {p3}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;->getFontSize()F

    move-result v0

    mul-float/2addr v0, p4

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;->mFontSize:F

    .line 803
    invoke-virtual {p3}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;->getLeft()F

    move-result v0

    mul-float/2addr v0, p4

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;->mLeft:F

    .line 804
    invoke-virtual {p3}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;->getTop()F

    move-result v0

    mul-float/2addr v0, p4

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;->mTop:F

    .line 805
    invoke-virtual {p3}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;->getHeight()F

    move-result v0

    mul-float/2addr v0, p4

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;->mHeight:F

    .line 806
    invoke-virtual {p3}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;->getWidth()F

    move-result v0

    mul-float/2addr v0, p4

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;->mWidth:F

    .line 808
    new-instance v0, Lcom/samsung/android/glview/GLText;

    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p3}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;->getWidth()F

    move-result v4

    mul-float/2addr v4, p4

    invoke-virtual {p3}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;->getHeight()F

    move-result v5

    mul-float/2addr v5, p4

    invoke-virtual {p3}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;->getDefaultText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;->getFontSize()F

    move-result v7

    mul-float/2addr v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;->mGLText:Lcom/samsung/android/glview/GLText;

    .line 809
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;->mGLText:Lcom/samsung/android/glview/GLText;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;->mLeft:F

    # getter for: Lcom/sec/android/app/camera/widget/gl/StickerView;->HANDLE_SIZE:F
    invoke-static {p1}, Lcom/sec/android/app/camera/widget/gl/StickerView;->access$1000(Lcom/sec/android/app/camera/widget/gl/StickerView;)F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;->mTop:F

    # getter for: Lcom/sec/android/app/camera/widget/gl/StickerView;->HANDLE_SIZE:F
    invoke-static {p1}, Lcom/sec/android/app/camera/widget/gl/StickerView;->access$1000(Lcom/sec/android/app/camera/widget/gl/StickerView;)F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLText;->moveLayoutAbsolute(FF)V

    .line 810
    invoke-virtual {p3}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;->getEditable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;->mEditable:Z

    .line 811
    invoke-virtual {p3}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;->getExtraType()Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraType;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;->mExtraType:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraType;

    .line 812
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;->mGLText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setShadowVisibility(Z)V

    .line 813
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;->mGLText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {p3}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;->getTextFont()Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextFont;

    move-result-object v1

    # invokes: Lcom/sec/android/app/camera/widget/gl/StickerView;->getTextFont(Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextFont;)Landroid/graphics/Typeface;
    invoke-static {p1, v1}, Lcom/sec/android/app/camera/widget/gl/StickerView;->access$1100(Lcom/sec/android/app/camera/widget/gl/StickerView;Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextFont;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    .line 814
    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;->mEditable:Z

    if-eqz v0, :cond_0

    .line 815
    new-instance v0, Lcom/samsung/android/glview/GLRectangle;

    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;->mGLText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLText;->getLeft()F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;->mGLText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLText;->getTop()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;->mGLText:Lcom/samsung/android/glview/GLText;

    .line 816
    invoke-virtual {v4}, Lcom/samsung/android/glview/GLText;->getWidth()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;->mGLText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLText;->getHeight()F

    move-result v5

    # getter for: Lcom/sec/android/app/camera/widget/gl/StickerView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {p1}, Lcom/sec/android/app/camera/widget/gl/StickerView;->access$1200(Lcom/sec/android/app/camera/widget/gl/StickerView;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v6

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0d004f

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getColor(I)I

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/glview/GLRectangle;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;->mTextEditBG:Lcom/samsung/android/glview/GLRectangle;

    .line 818
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;->mGLText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {p3}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;->getTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setColor(I)V

    .line 819
    invoke-virtual {p3}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;->getHAlign()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;->mHAlign:I

    .line 820
    invoke-virtual {p3}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;->getVAlign()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;->mVAlign:I

    .line 822
    invoke-virtual {p3}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;->getHAlign()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 823
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    .line 824
    .local v9, "paint":Landroid/graphics/Paint;
    invoke-virtual {p3}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;->getFontSize()F

    move-result v0

    mul-float/2addr v0, p4

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 825
    invoke-virtual {p3}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;->getDefaultText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p3}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;->getWidth()F

    move-result v1

    mul-float/2addr v1, p4

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    .line 826
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;->mGLText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x1

    invoke-virtual {p3}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;->getVAlign()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 833
    .end local v9    # "paint":Landroid/graphics/Paint;
    :goto_0
    return-void

    .line 828
    .restart local v9    # "paint":Landroid/graphics/Paint;
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;->mGLText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {p3}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;->getHAlign()I

    move-result v1

    invoke-virtual {p3}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;->getVAlign()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    goto :goto_0

    .line 831
    .end local v9    # "paint":Landroid/graphics/Paint;
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;->mGLText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {p3}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;->getHAlign()I

    move-result v1

    invoke-virtual {p3}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;->getVAlign()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;)Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraType;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;

    .prologue
    .line 787
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;->mExtraType:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraType;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;

    .prologue
    .line 787
    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;->mEditable:Z

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;)F
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;

    .prologue
    .line 787
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;->mFontSize:F

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;)F
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;

    .prologue
    .line 787
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;->mWidth:F

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;)F
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;

    .prologue
    .line 787
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;->mHeight:F

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;)F
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;

    .prologue
    .line 787
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;->mLeft:F

    return v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;)F
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;

    .prologue
    .line 787
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;->mTop:F

    return v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;

    .prologue
    .line 787
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;->mHAlign:I

    return v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;

    .prologue
    .line 787
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;->mVAlign:I

    return v0
.end method


# virtual methods
.method public getFontSize()F
    .locals 1

    .prologue
    .line 836
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;->mFontSize:F

    return v0
.end method

.method public getGLText()Lcom/samsung/android/glview/GLText;
    .locals 1

    .prologue
    .line 840
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;->mGLText:Lcom/samsung/android/glview/GLText;

    return-object v0
.end method

.method public getGLTextEditBG()Lcom/samsung/android/glview/GLRectangle;
    .locals 1

    .prologue
    .line 844
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;->mTextEditBG:Lcom/samsung/android/glview/GLRectangle;

    return-object v0
.end method

.method public getLeft()F
    .locals 3

    .prologue
    .line 848
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;->mGLText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLText;->getLayoutX()F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;->this$0:Lcom/sec/android/app/camera/widget/gl/StickerView;

    # getter for: Lcom/sec/android/app/camera/widget/gl/StickerView;->HANDLE_SIZE:F
    invoke-static {v1}, Lcom/sec/android/app/camera/widget/gl/StickerView;->access$1000(Lcom/sec/android/app/camera/widget/gl/StickerView;)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method public getTop()F
    .locals 3

    .prologue
    .line 852
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;->mGLText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLText;->getLayoutY()F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerView$DynamicInfoText;->this$0:Lcom/sec/android/app/camera/widget/gl/StickerView;

    # getter for: Lcom/sec/android/app/camera/widget/gl/StickerView;->HANDLE_SIZE:F
    invoke-static {v1}, Lcom/sec/android/app/camera/widget/gl/StickerView;->access$1000(Lcom/sec/android/app/camera/widget/gl/StickerView;)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method
