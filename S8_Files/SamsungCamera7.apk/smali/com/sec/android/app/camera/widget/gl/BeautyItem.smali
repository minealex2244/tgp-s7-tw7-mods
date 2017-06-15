.class public Lcom/sec/android/app/camera/widget/gl/BeautyItem;
.super Lcom/sec/android/app/camera/widget/gl/Item;
.source "BeautyItem.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;


# static fields
.field public static final BEAUTY_MODE_TOGGLE_TYPE:I = 0x2

.field public static final BEAUTY_MODE_TYPE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BeautyItem"


# instance fields
.field private final BEAUTY_ITEM_SELECT_COLOR:I

.field private final BEAUTY_MODE_ITEM_HEIGHT:I

.field private final BEAUTY_MODE_ITEM_WIDTH:I

.field private final BEAUTY_MODE_TITLE_FONT_COLOR:I

.field private final BEAUTY_MODE_TITLE_FONT_SIZE:F

.field private final BEAUTY_MODE_TITLE_HEIGHT:F

.field private final BEAUTY_MODE_TITLE_POS_X:F

.field private final BEAUTY_MODE_TITLE_POS_Y:F

.field private final BEAUTY_MODE_TITLE_SMALL_FONT_SIZE:F

.field private final BEAUTY_MODE_TITLE_WIDTH:F

.field private final MODE_TITLE_FONT_COLOR:I

.field private final TITLE_STROKE_COLOR:I

.field private final TITLE_STROKE_WIDTH:I

.field private mBeautyModeButton:Lcom/samsung/android/glview/GLSelectButton;

.field private mBeautyModeToggleButton:Lcom/samsung/android/glview/GLSelectButton;

.field private mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mCurrentType:I

.field private final mMenuId:I

.field private final mModeId:I

.field private mSelectedImage:Lcom/samsung/android/glview/GLImage;

.field private mTitleText:Lcom/samsung/android/glview/GLText;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;I)V
    .locals 2
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "data"    # Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .param p7, "command"    # Lcom/sec/android/app/camera/command/MenuCommand;
    .param p8, "type"    # I

    .prologue
    .line 66
    invoke-direct/range {p0 .. p7}, Lcom/sec/android/app/camera/widget/gl/Item;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;)V

    .line 42
    const v0, 0x7f0a0264

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->BEAUTY_MODE_TITLE_WIDTH:F

    .line 43
    const v0, 0x7f0a0263

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->BEAUTY_MODE_TITLE_HEIGHT:F

    .line 44
    const v0, 0x7f0a0266

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->BEAUTY_MODE_TITLE_POS_X:F

    .line 45
    const v0, 0x7f0a0267

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->BEAUTY_MODE_TITLE_POS_Y:F

    .line 46
    const v0, 0x7f0a0265

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->BEAUTY_MODE_TITLE_FONT_SIZE:F

    .line 47
    const v0, 0x7f0a0268

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->BEAUTY_MODE_TITLE_SMALL_FONT_SIZE:F

    .line 48
    const v0, 0x7f0a0260

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->BEAUTY_MODE_ITEM_WIDTH:I

    .line 49
    const v0, 0x7f0a025f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->BEAUTY_MODE_ITEM_HEIGHT:I

    .line 50
    const v0, 0x7f0d0011

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->BEAUTY_MODE_TITLE_FONT_COLOR:I

    .line 51
    const v0, 0x7f0b0025

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->TITLE_STROKE_WIDTH:I

    .line 52
    const v0, 0x7f0d0010

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->TITLE_STROKE_COLOR:I

    .line 53
    const v0, 0x7f0d002c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->MODE_TITLE_FONT_COLOR:I

    .line 54
    const v0, 0x7f0d0041

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->BEAUTY_ITEM_SELECT_COLOR:I

    .line 63
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mCurrentType:I

    .line 68
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 70
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mMenuId:I

    .line 71
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/command/CommandIdMap;->getModeIDByCommandID(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mModeId:I

    .line 72
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mMenuId:I

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 74
    iput p8, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mCurrentType:I

    .line 76
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->init()V

    .line 77
    return-void
.end method

.method private isCurrentMode()Z
    .locals 2

    .prologue
    .line 348
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mMenuId:I

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSettingValue(I)I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mModeId:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isToggleModeSelected(I)Z
    .locals 2
    .param p1, "menuId"    # I

    .prologue
    const/4 v0, 0x1

    .line 359
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSettingValue(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mMenuId:I

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 84
    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/widget/gl/Item;->clear()V

    .line 85
    return-void
.end method

.method protected clearContent()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 233
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mSelectedImage:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mSelectedImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 235
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mSelectedImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->clear()V

    .line 236
    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mSelectedImage:Lcom/samsung/android/glview/GLImage;

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mTitleText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_1

    .line 239
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mTitleText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 240
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mTitleText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLText;->clear()V

    .line 241
    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mTitleText:Lcom/samsung/android/glview/GLText;

    .line 243
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mBeautyModeButton:Lcom/samsung/android/glview/GLSelectButton;

    if-eqz v0, :cond_2

    .line 244
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mBeautyModeButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 245
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mBeautyModeButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLSelectButton;->clear()V

    .line 246
    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mBeautyModeButton:Lcom/samsung/android/glview/GLSelectButton;

    .line 248
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mBeautyModeToggleButton:Lcom/samsung/android/glview/GLSelectButton;

    if-eqz v0, :cond_3

    .line 249
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mBeautyModeToggleButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 250
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mBeautyModeToggleButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLSelectButton;->clear()V

    .line 251
    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mBeautyModeToggleButton:Lcom/samsung/android/glview/GLSelectButton;

    .line 253
    :cond_3
    return-void
.end method

.method public getButton()Lcom/samsung/android/glview/GLView;
    .locals 2

    .prologue
    .line 88
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mCurrentType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 89
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mBeautyModeButton:Lcom/samsung/android/glview/GLSelectButton;

    .line 91
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mBeautyModeToggleButton:Lcom/samsung/android/glview/GLSelectButton;

    goto :goto_0
.end method

.method protected init()V
    .locals 10

    .prologue
    .line 257
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mCurrentType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    .line 258
    new-instance v0, Lcom/samsung/android/glview/GLSelectButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->BEAUTY_MODE_ITEM_WIDTH:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->BEAUTY_MODE_ITEM_HEIGHT:I

    int-to-float v5, v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/glview/GLSelectButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mBeautyModeButton:Lcom/samsung/android/glview/GLSelectButton;

    .line 259
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mBeautyModeButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLSelectButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 260
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mBeautyModeButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLSelectButton;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 261
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mBeautyModeButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLSelectButton;->setFocusListener(Lcom/samsung/android/glview/GLView$FocusListener;)V

    .line 262
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mBeautyModeButton:Lcom/samsung/android/glview/GLSelectButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/command/CmdIdStringMapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setObjectTag(Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mBeautyModeButton:Lcom/samsung/android/glview/GLSelectButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/glview/GLSelectButton;->setButtonResources(IIIILandroid/graphics/Bitmap$Config;)V

    .line 264
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mBeautyModeButton:Lcom/samsung/android/glview/GLSelectButton;

    const v1, 0x7f02000b

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setBackground(I)Z

    .line 265
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mBeautyModeButton:Lcom/samsung/android/glview/GLSelectButton;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->BEAUTY_ITEM_SELECT_COLOR:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setPressedTint(I)V

    .line 266
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mBeautyModeButton:Lcom/samsung/android/glview/GLSelectButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setButtonShapeVisibility(Z)V

    .line 267
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mBeautyModeButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 279
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mSelectedImage:Lcom/samsung/android/glview/GLImage;

    if-nez v0, :cond_1

    .line 280
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mCurrentType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 281
    new-instance v0, Lcom/samsung/android/glview/GLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->BEAUTY_MODE_TITLE_WIDTH:F

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->BEAUTY_MODE_TITLE_WIDTH:F

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v7

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFFFZI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mSelectedImage:Lcom/samsung/android/glview/GLImage;

    .line 282
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mSelectedImage:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(IZ)V

    .line 283
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mSelectedImage:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setBypassTouch(Z)V

    .line 284
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mSelectedImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 299
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getTitleId()I

    move-result v0

    if-eqz v0, :cond_2

    .line 300
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getTitleId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mTitle:Ljava/lang/String;

    .line 303
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mTitleText:Lcom/samsung/android/glview/GLText;

    if-nez v0, :cond_3

    .line 304
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mTitle:Ljava/lang/String;

    if-nez v0, :cond_a

    .line 305
    const-string v0, "BeautyItem"

    const-string v1, "initContent : mTitle is null"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mBeautyModeButton:Lcom/samsung/android/glview/GLSelectButton;

    if-eqz v0, :cond_4

    .line 324
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mBeautyModeButton:Lcom/samsung/android/glview/GLSelectButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setTitle(Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mBeautyModeButton:Lcom/samsung/android/glview/GLSelectButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->enableRippleEffect(Z)V

    .line 328
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mBeautyModeToggleButton:Lcom/samsung/android/glview/GLSelectButton;

    if-eqz v0, :cond_5

    .line 329
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mBeautyModeToggleButton:Lcom/samsung/android/glview/GLSelectButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setTitle(Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mBeautyModeToggleButton:Lcom/samsung/android/glview/GLSelectButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->enableRippleEffect(Z)V

    .line 333
    :cond_5
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->isCurrentMode()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 334
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mCurrentType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    .line 335
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->setSelectedImage(Z)V

    .line 340
    :cond_6
    :goto_3
    return-void

    .line 268
    :cond_7
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mCurrentType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 269
    new-instance v0, Lcom/samsung/android/glview/GLSelectButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->BEAUTY_MODE_ITEM_WIDTH:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->BEAUTY_MODE_ITEM_HEIGHT:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v7

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/glview/GLSelectButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mBeautyModeToggleButton:Lcom/samsung/android/glview/GLSelectButton;

    .line 270
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mBeautyModeToggleButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLSelectButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 271
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mBeautyModeToggleButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLSelectButton;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 272
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mBeautyModeToggleButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLSelectButton;->setFocusListener(Lcom/samsung/android/glview/GLView$FocusListener;)V

    .line 273
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mBeautyModeToggleButton:Lcom/samsung/android/glview/GLSelectButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/command/CmdIdStringMapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setObjectTag(Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mBeautyModeToggleButton:Lcom/samsung/android/glview/GLSelectButton;

    const v1, 0x7f02000b

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setBackground(I)Z

    .line 275
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mBeautyModeToggleButton:Lcom/samsung/android/glview/GLSelectButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setButtonShapeVisibility(Z)V

    .line 276
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mBeautyModeToggleButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->addView(Lcom/samsung/android/glview/GLView;)V

    goto/16 :goto_0

    .line 285
    :cond_8
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mCurrentType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 286
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShapeCorrection()I

    move-result v0

    if-nez v0, :cond_9

    .line 287
    new-instance v0, Lcom/samsung/android/glview/GLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->BEAUTY_MODE_TITLE_WIDTH:F

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->BEAUTY_MODE_TITLE_WIDTH:F

    const/4 v6, 0x0

    const v7, 0x7f02000d

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFFFZI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mSelectedImage:Lcom/samsung/android/glview/GLImage;

    .line 293
    :goto_4
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mSelectedImage:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(IZ)V

    .line 294
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mSelectedImage:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setBypassTouch(Z)V

    .line 295
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mSelectedImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->addView(Lcom/samsung/android/glview/GLView;)V

    goto/16 :goto_1

    .line 290
    :cond_9
    new-instance v0, Lcom/samsung/android/glview/GLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->BEAUTY_MODE_TITLE_WIDTH:F

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->BEAUTY_MODE_TITLE_WIDTH:F

    const/4 v6, 0x0

    const v7, 0x7f02000e

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFFFZI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mSelectedImage:Lcom/samsung/android/glview/GLImage;

    goto :goto_4

    .line 307
    :cond_a
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mCurrentType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    .line 308
    new-instance v0, Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->BEAUTY_MODE_TITLE_POS_X:F

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->BEAUTY_MODE_TITLE_POS_Y:F

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->BEAUTY_MODE_TITLE_WIDTH:F

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->BEAUTY_MODE_TITLE_HEIGHT:F

    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mTitle:Ljava/lang/String;

    iget v7, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->BEAUTY_MODE_TITLE_FONT_SIZE:F

    iget v8, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->BEAUTY_MODE_TITLE_FONT_COLOR:I

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mTitleText:Lcom/samsung/android/glview/GLText;

    .line 314
    :goto_5
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mTitleText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x1

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->TITLE_STROKE_WIDTH:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->TITLE_STROKE_COLOR:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 315
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mTitleText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setBypassTouch(Z)V

    .line 316
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mTitleText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x2

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 317
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mTitleText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoMedium()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    .line 318
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mTitleText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setFocusable(Z)V

    .line 319
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mTitleText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->addView(Lcom/samsung/android/glview/GLView;)V

    goto/16 :goto_2

    .line 311
    :cond_b
    new-instance v0, Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->BEAUTY_MODE_TITLE_POS_X:F

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->BEAUTY_MODE_TITLE_POS_Y:F

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->BEAUTY_MODE_TITLE_WIDTH:F

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->BEAUTY_MODE_TITLE_HEIGHT:F

    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mTitle:Ljava/lang/String;

    iget v7, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->BEAUTY_MODE_TITLE_SMALL_FONT_SIZE:F

    iget v8, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->BEAUTY_MODE_TITLE_FONT_COLOR:I

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mTitleText:Lcom/samsung/android/glview/GLText;

    goto :goto_5

    .line 336
    :cond_c
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mCurrentType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 337
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->setSelectedToggleImage(Z)V

    goto/16 :goto_3
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->isCurrentMode()Z

    move-result v0

    return v0
.end method

.method public onCameraSettingChanged(II)V
    .locals 1
    .param p1, "menuId"    # I
    .param p2, "modeId"    # I

    .prologue
    .line 101
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mMenuId:I

    if-ne p1, v0, :cond_0

    .line 102
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->isCurrentMode()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->setSelectedImage(Z)V

    .line 104
    :cond_0
    return-void
.end method

.method public onClick(Lcom/samsung/android/glview/GLView;)Z
    .locals 3
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->getButton()Lcom/samsung/android/glview/GLView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    const-string v0, "BeautyItem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Execute Menu!!!!, CommandId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()Z

    .line 112
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->isCurrentMode()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->setSelect(Z)V

    .line 113
    const/4 v0, 0x1

    .line 115
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
    .line 120
    const/4 v0, 0x0

    .line 121
    .local v0, "result":Z
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mTouchListener:Lcom/samsung/android/glview/GLView$TouchListener;

    if-eqz v1, :cond_0

    .line 122
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mTouchListener:Lcom/samsung/android/glview/GLView$TouchListener;

    invoke-interface {v1, p0, p2}, Lcom/samsung/android/glview/GLView$TouchListener;->onTouch(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 124
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 137
    :cond_1
    :goto_0
    :pswitch_0
    return v0

    .line 126
    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->isCurrentMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 127
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->setSelect(Z)V

    goto :goto_0

    .line 132
    :pswitch_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->isCurrentMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 133
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->setSelectedImage(Z)V

    goto :goto_0

    .line 124
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setDraggable(Z)V
    .locals 1
    .param p1, "draggable"    # Z

    .prologue
    .line 142
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/widget/gl/Item;->setDraggable(Z)V

    .line 143
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mTitleText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mTitleText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLText;->setDraggable(Z)V

    .line 146
    :cond_0
    return-void
.end method

.method public setMute(Z)V
    .locals 1
    .param p1, "mute"    # Z

    .prologue
    .line 150
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mBeautyModeButton:Lcom/samsung/android/glview/GLSelectButton;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mBeautyModeButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLSelectButton;->setMute(Z)V

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mBeautyModeToggleButton:Lcom/samsung/android/glview/GLSelectButton;

    if-eqz v0, :cond_1

    .line 154
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mBeautyModeToggleButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLSelectButton;->setMute(Z)V

    .line 156
    :cond_1
    return-void
.end method

.method public setNextFocusDownView(Lcom/samsung/android/glview/GLView;)Z
    .locals 1
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->getButton()Lcom/samsung/android/glview/GLView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLView;->setNextFocusDownView(Lcom/samsung/android/glview/GLView;)Z

    move-result v0

    return v0
.end method

.method public setNextFocusLeftView(Lcom/samsung/android/glview/GLView;)Z
    .locals 1
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->getButton()Lcom/samsung/android/glview/GLView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLView;->setNextFocusLeftView(Lcom/samsung/android/glview/GLView;)Z

    move-result v0

    return v0
.end method

.method public setNextFocusRightView(Lcom/samsung/android/glview/GLView;)Z
    .locals 1
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->getButton()Lcom/samsung/android/glview/GLView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLView;->setNextFocusRightView(Lcom/samsung/android/glview/GLView;)Z

    move-result v0

    return v0
.end method

.method public setNextFocusUpView(Lcom/samsung/android/glview/GLView;)Z
    .locals 1
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->getButton()Lcom/samsung/android/glview/GLView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLView;->setNextFocusUpView(Lcom/samsung/android/glview/GLView;)Z

    move-result v0

    return v0
.end method

.method public setSelect(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 179
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mCurrentType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 180
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->setSelectedImage(Z)V

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mCurrentType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 182
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->setSelectedToggleImage(Z)V

    goto :goto_0
.end method

.method public setSelectedImage(Z)V
    .locals 3
    .param p1, "visibility"    # Z

    .prologue
    const/4 v2, 0x0

    .line 187
    if-eqz p1, :cond_2

    .line 188
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mSelectedImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mBeautyModeButton:Lcom/samsung/android/glview/GLSelectButton;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mBeautyModeButton:Lcom/samsung/android/glview/GLSelectButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setSelected(Z)V

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mTitleText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mTitleText:Lcom/samsung/android/glview/GLText;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->BEAUTY_ITEM_SELECT_COLOR:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setColor(I)V

    .line 204
    :cond_1
    :goto_0
    return-void

    .line 196
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mSelectedImage:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 197
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mBeautyModeButton:Lcom/samsung/android/glview/GLSelectButton;

    if-eqz v0, :cond_3

    .line 198
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mBeautyModeButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLSelectButton;->setSelected(Z)V

    .line 200
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mTitleText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_1

    .line 201
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mTitleText:Lcom/samsung/android/glview/GLText;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->MODE_TITLE_FONT_COLOR:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setColor(I)V

    goto :goto_0
.end method

.method public setSelectedToggleImage(Z)V
    .locals 3
    .param p1, "visibility"    # Z

    .prologue
    .line 207
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mSelectedImage:Lcom/samsung/android/glview/GLImage;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShapeCorrection()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const v0, 0x7f02000e

    :goto_0
    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 208
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mSelectedImage:Lcom/samsung/android/glview/GLImage;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->BEAUTY_ITEM_SELECT_COLOR:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setTint(I)V

    .line 209
    if-eqz p1, :cond_2

    .line 210
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mSelectedImage:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 211
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mTitleText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mTitleText:Lcom/samsung/android/glview/GLText;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->BEAUTY_ITEM_SELECT_COLOR:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setColor(I)V

    .line 220
    :cond_0
    :goto_1
    return-void

    .line 207
    :cond_1
    const v0, 0x7f02000d

    goto :goto_0

    .line 215
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mSelectedImage:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 216
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mTitleText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mTitleText:Lcom/samsung/android/glview/GLText;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->MODE_TITLE_FONT_COLOR:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setColor(I)V

    goto :goto_1
.end method

.method public updateToggleButton(I)V
    .locals 2
    .param p1, "menuId"    # I

    .prologue
    .line 228
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->mBeautyModeToggleButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->isToggleModeSelected(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setSelected(Z)V

    .line 229
    return-void
.end method
