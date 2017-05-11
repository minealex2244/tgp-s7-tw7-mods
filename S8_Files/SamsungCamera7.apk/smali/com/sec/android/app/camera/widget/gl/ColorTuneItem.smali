.class public Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;
.super Lcom/samsung/android/glview/GLViewGroup;
.source "ColorTuneItem.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$ClickListener;
.implements Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;
.implements Lcom/samsung/android/glview/GLView$TouchListener;
.implements Lcom/samsung/android/glview/GLView$FocusListener;
.implements Lcom/samsung/android/glview/GLView$KeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/widget/gl/ColorTuneItem$ColorTuneItemSelectListener;
    }
.end annotation


# instance fields
.field private final BUTTON_HEIGHT:I

.field private final BUTTON_WIDTH:I

.field private final CENTER_ITEM_HEIGHT:I

.field private final FONT_SIZE:I

.field private final ITEM_WIDTH:I

.field private final LINE_WIDTH:I

.field private final LIST_TOP_MARGIN:I

.field private final TEXT_HEIGHT:I

.field private final TEXT_TOP_MARGIN:I

.field private mButton:Lcom/samsung/android/glview/GLSelectButton;

.field private mButtonBG:Lcom/samsung/android/glview/GLImage;

.field private mButtonChecked:Lcom/samsung/android/glview/GLImage;

.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field protected mColorTuneItemSelectListener:Lcom/sec/android/app/camera/widget/gl/ColorTuneItem$ColorTuneItemSelectListener;

.field private mCommandId:I

.field private mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

.field private mTitle:Lcom/samsung/android/glview/GLText;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;I)V
    .locals 7
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "data"    # Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .param p7, "commandId"    # I

    .prologue
    const v6, 0x7f0a02d3

    .line 59
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    .line 39
    const v0, 0x7f0a00f3

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->ITEM_WIDTH:I

    .line 40
    const v0, 0x7f0a02d4

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->CENTER_ITEM_HEIGHT:I

    .line 41
    invoke-static {v6}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->BUTTON_WIDTH:I

    .line 42
    invoke-static {v6}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->BUTTON_HEIGHT:I

    .line 43
    const v0, 0x7f0a00f1

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->TEXT_HEIGHT:I

    .line 44
    const v0, 0x7f0a00f2

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->TEXT_TOP_MARGIN:I

    .line 45
    const v0, 0x7f0a00ef

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->FONT_SIZE:I

    .line 46
    const v0, 0x7f0a00f0

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->LINE_WIDTH:I

    .line 47
    const v0, 0x7f0a02d5

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->LIST_TOP_MARGIN:I

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mColorTuneItemSelectListener:Lcom/sec/android/app/camera/widget/gl/ColorTuneItem$ColorTuneItemSelectListener;

    .line 61
    iput p7, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mCommandId:I

    .line 62
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 63
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 64
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mCommandId:I

    invoke-static {v1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v1

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 66
    iput-object p6, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    .line 68
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->initContent()V

    .line 69
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mCommandId:I

    invoke-static {v1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v1

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 78
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/glview/GLViewGroup;->clear()V

    .line 79
    return-void
.end method

.method public getButton()Lcom/samsung/android/glview/GLSelectButton;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    return-object v0
.end method

.method public getSelected()Z
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLSelectButton;->getSelected()Z

    move-result v0

    return v0
.end method

.method protected initContent()V
    .locals 12

    .prologue
    .line 205
    const-string v11, ""

    .line 206
    .local v11, "title":Ljava/lang/String;
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getTitleId()I

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mCommandId:I

    const/16 v1, 0xfa6

    if-ne v0, v1, :cond_2

    .line 208
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getTitleId()I

    move-result v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 216
    :cond_0
    :goto_0
    const-string v10, ""

    .line 217
    .local v10, "contentDescription":Ljava/lang/String;
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getContentDescriptionId()I

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mCommandId:I

    const/16 v1, 0xfa6

    if-ne v0, v1, :cond_4

    .line 219
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getContentDescriptionId()I

    move-result v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 227
    :cond_1
    :goto_1
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mCommandId:I

    const/16 v1, 0xfa0

    if-ne v0, v1, :cond_6

    .line 228
    new-instance v0, Lcom/samsung/android/glview/GLSelectButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->LINE_WIDTH:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->LINE_WIDTH:I

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->LIST_TOP_MARGIN:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->BUTTON_WIDTH:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->BUTTON_HEIGHT:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v7

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/glview/GLSelectButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    .line 232
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, v11}, Lcom/samsung/android/glview/GLSelectButton;->setTitle(Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, v10}, Lcom/samsung/android/glview/GLSelectButton;->setContentDescription(Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLSelectButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 235
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLSelectButton;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 236
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLSelectButton;->setFocusListener(Lcom/samsung/android/glview/GLView$FocusListener;)V

    .line 237
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLSelectButton;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    .line 238
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setRotatable(Z)V

    .line 239
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setCenterPivot(Z)V

    .line 240
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 242
    new-instance v0, Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->LINE_WIDTH:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->TEXT_TOP_MARGIN:I

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->LINE_WIDTH:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->BUTTON_WIDTH:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->TEXT_HEIGHT:I

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->FONT_SIZE:I

    int-to-float v7, v6

    const v6, 0x7f0d0011

    .line 243
    invoke-static {v6}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v8

    const/4 v9, 0x0

    move-object v6, v11

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mTitle:Lcom/samsung/android/glview/GLText;

    .line 244
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mTitle:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x2

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 245
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mTitle:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setBypassTouch(Z)V

    .line 246
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mTitle:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setRotatable(Z)V

    .line 247
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mTitle:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setFocusable(Z)V

    .line 248
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mCommandId:I

    const/16 v1, 0xfa0

    if-ne v0, v1, :cond_7

    .line 249
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mTitle:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->LINE_WIDTH:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->LIST_TOP_MARGIN:I

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->TEXT_TOP_MARGIN:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 250
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mTitle:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x2

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->BUTTON_WIDTH:I

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->LINE_WIDTH:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->LIST_TOP_MARGIN:I

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->TEXT_HEIGHT:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->LINE_WIDTH:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 251
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mTitle:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x3

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->TEXT_TOP_MARGIN:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->LIST_TOP_MARGIN:I

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->BUTTON_WIDTH:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->LINE_WIDTH:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 252
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mTitle:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x1

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->TEXT_HEIGHT:I

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->LINE_WIDTH:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->LIST_TOP_MARGIN:I

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->LINE_WIDTH:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 259
    :goto_3
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mTitle:Lcom/samsung/android/glview/GLText;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 261
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mCommandId:I

    const/16 v1, 0xfa0

    if-ne v0, v1, :cond_8

    .line 262
    new-instance v0, Lcom/samsung/android/glview/GLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->LIST_TOP_MARGIN:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->ITEM_WIDTH:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->ITEM_WIDTH:I

    int-to-float v5, v5

    const/4 v6, 0x1

    const v7, 0x7f02017a

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFFFZI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mButtonBG:Lcom/samsung/android/glview/GLImage;

    .line 266
    :goto_4
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mButtonBG:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setBypassTouch(Z)V

    .line 267
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mButtonBG:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setRotatable(Z)V

    .line 268
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mButtonBG:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 270
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mCommandId:I

    const/16 v1, 0xfa0

    if-ne v0, v1, :cond_9

    .line 271
    new-instance v0, Lcom/samsung/android/glview/GLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->LINE_WIDTH:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->LINE_WIDTH:I

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->LIST_TOP_MARGIN:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->BUTTON_WIDTH:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->BUTTON_HEIGHT:I

    int-to-float v5, v5

    const/4 v6, 0x1

    const v7, 0x7f02017b

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFFFZI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mButtonChecked:Lcom/samsung/android/glview/GLImage;

    .line 276
    :goto_5
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mButtonChecked:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setBypassTouch(Z)V

    .line 277
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mButtonChecked:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setRotatable(Z)V

    .line 278
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mButtonChecked:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setCenterPivot(Z)V

    .line 279
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mButtonChecked:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 281
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLSelectButton;->getSelected()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 282
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mButtonChecked:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 286
    :goto_6
    return-void

    .line 209
    .end local v10    # "contentDescription":Ljava/lang/String;
    :cond_2
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mCommandId:I

    const/16 v1, 0xfa7

    if-ne v0, v1, :cond_3

    .line 210
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getTitleId()I

    move-result v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_0

    .line 212
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getTitleId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_0

    .line 220
    .restart local v10    # "contentDescription":Ljava/lang/String;
    :cond_4
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mCommandId:I

    const/16 v1, 0xfa7

    if-ne v0, v1, :cond_5

    .line 221
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getContentDescriptionId()I

    move-result v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1

    .line 223
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getContentDescriptionId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1

    .line 230
    :cond_6
    new-instance v0, Lcom/samsung/android/glview/GLSelectButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->LINE_WIDTH:I

    int-to-float v2, v2

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->BUTTON_WIDTH:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->BUTTON_HEIGHT:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v7

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/glview/GLSelectButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    goto/16 :goto_2

    .line 254
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mTitle:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->LINE_WIDTH:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->TEXT_TOP_MARGIN:I

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->LINE_WIDTH:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 255
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mTitle:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x2

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->BUTTON_WIDTH:I

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->LINE_WIDTH:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->TEXT_HEIGHT:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 256
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mTitle:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x3

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->TEXT_TOP_MARGIN:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->BUTTON_WIDTH:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 257
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mTitle:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x1

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->TEXT_HEIGHT:I

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->LINE_WIDTH:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    goto/16 :goto_3

    .line 264
    :cond_8
    new-instance v0, Lcom/samsung/android/glview/GLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->ITEM_WIDTH:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->CENTER_ITEM_HEIGHT:I

    int-to-float v5, v5

    const/4 v6, 0x1

    const v7, 0x7f020179

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFFFZI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mButtonBG:Lcom/samsung/android/glview/GLImage;

    goto/16 :goto_4

    .line 273
    :cond_9
    new-instance v0, Lcom/samsung/android/glview/GLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->LINE_WIDTH:I

    int-to-float v2, v2

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->BUTTON_WIDTH:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->BUTTON_HEIGHT:I

    int-to-float v5, v5

    const/4 v6, 0x1

    const v7, 0x7f02017b

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFFFZI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mButtonChecked:Lcom/samsung/android/glview/GLImage;

    goto/16 :goto_5

    .line 284
    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mButtonChecked:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    goto/16 :goto_6
.end method

.method public onCameraSettingChanged(II)V
    .locals 1
    .param p1, "menuId"    # I
    .param p2, "modeId"    # I

    .prologue
    .line 100
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mCommandId:I

    invoke-static {v0}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->refreshItem()V

    .line 103
    :cond_0
    return-void
.end method

.method public onClick(Lcom/samsung/android/glview/GLView;)Z
    .locals 2
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mColorTuneItemSelectListener:Lcom/sec/android/app/camera/widget/gl/ColorTuneItem$ColorTuneItemSelectListener;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mCommandId:I

    invoke-static {v1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getModeIDByCommandID(I)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem$ColorTuneItemSelectListener;->onColorTuneItemSelected(I)V

    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public onFocusChanged(Lcom/samsung/android/glview/GLView;I)Z
    .locals 1
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "focusStatus"    # I

    .prologue
    .line 113
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mFocusListener:Lcom/samsung/android/glview/GLView$FocusListener;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mFocusListener:Lcom/samsung/android/glview/GLView$FocusListener;

    invoke-interface {v0, p0, p2}, Lcom/samsung/android/glview/GLView$FocusListener;->onFocusChanged(Lcom/samsung/android/glview/GLView;I)Z

    .line 115
    const/4 v0, 0x1

    .line 117
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyDown(Lcom/samsung/android/glview/GLView;Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 122
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(Lcom/samsung/android/glview/GLView;Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 127
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_0

    .line 128
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mColorTuneItemSelectListener:Lcom/sec/android/app/camera/widget/gl/ColorTuneItem$ColorTuneItemSelectListener;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mCommandId:I

    invoke-static {v1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getModeIDByCommandID(I)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem$ColorTuneItemSelectListener;->onColorTuneItemSelected(I)V

    .line 129
    const/4 v0, 0x1

    .line 131
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouch(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 137
    const/4 v0, 0x0

    .line 138
    .local v0, "result":Z
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mTouchListener:Lcom/samsung/android/glview/GLView$TouchListener;

    if-eqz v1, :cond_0

    .line 139
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mTouchListener:Lcom/samsung/android/glview/GLView$TouchListener;

    invoke-interface {v1, p0, p2}, Lcom/samsung/android/glview/GLView$TouchListener;->onTouch(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 141
    :cond_0
    return v0
.end method

.method public refreshItem()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 145
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mCommandId:I

    invoke-static {v1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSettingValue(I)I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mCommandId:I

    invoke-static {v1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getModeIDByCommandID(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 146
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mButtonChecked:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setSelected(Z)V

    .line 152
    :goto_0
    return-void

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mButtonChecked:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 150
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLSelectButton;->setSelected(Z)V

    goto :goto_0
.end method

.method public setBGVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 158
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mButtonChecked:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 159
    return-void
.end method

.method public setColorTuneItemSelectListener(Lcom/sec/android/app/camera/widget/gl/ColorTuneItem$ColorTuneItemSelectListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/android/app/camera/widget/gl/ColorTuneItem$ColorTuneItemSelectListener;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mColorTuneItemSelectListener:Lcom/sec/android/app/camera/widget/gl/ColorTuneItem$ColorTuneItemSelectListener;

    .line 163
    return-void
.end method

.method public setDim(Z)V
    .locals 1
    .param p1, "dimmed"    # Z

    .prologue
    .line 167
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLSelectButton;->setDim(Z)V

    .line 168
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLSelectButton;->setBypassTouch(Z)V

    .line 169
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLViewGroup;->setDim(Z)V

    .line 170
    return-void
.end method

.method public setMargin(IIII)V
    .locals 3
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 173
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLSelectButton;->moveLayoutAbsolute(FF)V

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mTitle:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mTitle:Lcom/samsung/android/glview/GLText;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLText;->moveLayoutAbsolute(FF)V

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mButtonBG:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_2

    .line 182
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mButtonBG:Lcom/samsung/android/glview/GLImage;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLImage;->moveLayoutAbsolute(FF)V

    .line 185
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mButtonChecked:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_3

    .line 186
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mButtonChecked:Lcom/samsung/android/glview/GLImage;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLImage;->moveLayoutAbsolute(FF)V

    .line 189
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->getWidth()F

    move-result v0

    int-to-float v1, p1

    add-float/2addr v0, v1

    int-to-float v1, p3

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->getHeight()F

    move-result v1

    int-to-float v2, p2

    add-float/2addr v1, v2

    int-to-float v2, p4

    add-float/2addr v1, v2

    invoke-super {p0, v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 190
    return-void
.end method

.method public setMute(Z)V
    .locals 1
    .param p1, "mute"    # Z

    .prologue
    .line 193
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLSelectButton;->setMute(Z)V

    .line 196
    :cond_0
    return-void
.end method

.method public setSelected(Z)V
    .locals 2
    .param p1, "selected"    # Z

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLSelectButton;->setSelected(Z)V

    .line 91
    if-eqz p1, :cond_0

    .line 92
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mButtonChecked:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 96
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mButtonChecked:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    goto :goto_0
.end method

.method public setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/glview/GLView$TouchListener;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->mTouchListener:Lcom/samsung/android/glview/GLView$TouchListener;

    .line 201
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLViewGroup;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 202
    return-void
.end method
