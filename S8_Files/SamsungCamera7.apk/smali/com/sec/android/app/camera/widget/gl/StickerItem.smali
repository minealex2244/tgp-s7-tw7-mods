.class public Lcom/sec/android/app/camera/widget/gl/StickerItem;
.super Lcom/sec/android/app/camera/widget/gl/Item;
.source "StickerItem.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/widget/gl/StickerItem$SelectListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StickerItem"


# instance fields
.field private final SELECT_BG_COLOR:I

.field private final SELECT_BG_THICKNESS:I

.field private mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private final mMenuId:I

.field private mSelectListener:Lcom/sec/android/app/camera/widget/gl/StickerItem$SelectListener;

.field private mSelectRectBG:Lcom/samsung/android/glview/GLRectangle;

.field private mStickerButton:Lcom/samsung/android/glview/GLSelectButton;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;)V
    .locals 2
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "data"    # Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .param p7, "command"    # Lcom/sec/android/app/camera/command/MenuCommand;

    .prologue
    .line 51
    invoke-direct/range {p0 .. p7}, Lcom/sec/android/app/camera/widget/gl/Item;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;)V

    .line 42
    const v0, 0x7f0d0011

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerItem;->SELECT_BG_COLOR:I

    .line 43
    const v0, 0x7f0a031c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerItem;->SELECT_BG_THICKNESS:I

    .line 52
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerItem;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 53
    const/16 v0, 0xbe

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerItem;->mMenuId:I

    .line 54
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerItem;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerItem;->mMenuId:I

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 55
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/StickerItem;->init()V

    .line 56
    return-void
.end method

.method private isCurrentMode()Z
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerItem;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerItem;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerItem;->mMenuId:I

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSettingValue(I)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

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
    .line 60
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerItem;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerItem;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerItem;->mMenuId:I

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 63
    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/widget/gl/Item;->clear()V

    .line 64
    return-void
.end method

.method protected clearContent()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 175
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerItem;->mStickerButton:Lcom/samsung/android/glview/GLSelectButton;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerItem;->mStickerButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/StickerItem;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 177
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerItem;->mStickerButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLSelectButton;->clear()V

    .line 178
    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerItem;->mStickerButton:Lcom/samsung/android/glview/GLSelectButton;

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerItem;->mSelectRectBG:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerItem;->mSelectRectBG:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/StickerItem;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 182
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerItem;->mSelectRectBG:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLRectangle;->clear()V

    .line 183
    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerItem;->mSelectRectBG:Lcom/samsung/android/glview/GLRectangle;

    .line 185
    :cond_1
    return-void
.end method

.method public getButton()Lcom/samsung/android/glview/GLView;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerItem;->mStickerButton:Lcom/samsung/android/glview/GLSelectButton;

    return-object v0
.end method

.method public getSelected()Z
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerItem;->mStickerButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLSelectButton;->getSelected()Z

    move-result v0

    return v0
.end method

.method protected init()V
    .locals 15

    .prologue
    .line 189
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    instance-of v0, v0, Lcom/sec/android/app/camera/resourcedata/StickerMenuResourceBundle;

    if-eqz v0, :cond_1

    .line 190
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    check-cast v0, Lcom/sec/android/app/camera/resourcedata/StickerMenuResourceBundle;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/resourcedata/StickerMenuResourceBundle;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/android/app/camera/util/ImageUtils;->getResources(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/ImageUtils;->getBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 191
    .local v6, "normalBitmap":Landroid/graphics/Bitmap;
    new-instance v0, Lcom/samsung/android/glview/GLSelectButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/StickerItem;->getWidth()F

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/StickerItem;->getHeight()F

    move-result v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/glview/GLSelectButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerItem;->mStickerButton:Lcom/samsung/android/glview/GLSelectButton;

    .line 195
    .end local v6    # "normalBitmap":Landroid/graphics/Bitmap;
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerItem;->mStickerButton:Lcom/samsung/android/glview/GLSelectButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getTitleId()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setTitle(Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerItem;->mStickerButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLSelectButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 197
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerItem;->mStickerButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLSelectButton;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 198
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerItem;->mStickerButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLSelectButton;->setFocusListener(Lcom/samsung/android/glview/GLView$FocusListener;)V

    .line 199
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerItem;->mStickerButton:Lcom/samsung/android/glview/GLSelectButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->enableRippleEffect(Z)V

    .line 200
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerItem;->mStickerButton:Lcom/samsung/android/glview/GLSelectButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/command/CmdIdStringMapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setObjectTag(Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerItem;->mStickerButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/StickerItem;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 203
    new-instance v7, Lcom/samsung/android/glview/GLRectangle;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/StickerItem;->getWidth()F

    move-result v11

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/StickerItem;->getHeight()F

    move-result v12

    iget v13, p0, Lcom/sec/android/app/camera/widget/gl/StickerItem;->SELECT_BG_COLOR:I

    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerItem;->SELECT_BG_THICKNESS:I

    int-to-float v14, v0

    invoke-direct/range {v7 .. v14}, Lcom/samsung/android/glview/GLRectangle;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIF)V

    iput-object v7, p0, Lcom/sec/android/app/camera/widget/gl/StickerItem;->mSelectRectBG:Lcom/samsung/android/glview/GLRectangle;

    .line 204
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerItem;->mSelectRectBG:Lcom/samsung/android/glview/GLRectangle;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLRectangle;->setClickable(Z)V

    .line 205
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerItem;->mSelectRectBG:Lcom/samsung/android/glview/GLRectangle;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLRectangle;->setBypassTouch(Z)V

    .line 206
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerItem;->mSelectRectBG:Lcom/samsung/android/glview/GLRectangle;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    .line 207
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerItem;->mSelectRectBG:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/StickerItem;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 209
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/gl/StickerItem;->isCurrentMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerItem;->mStickerButton:Lcom/samsung/android/glview/GLSelectButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setSelected(Z)V

    .line 211
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerItem;->mSelectRectBG:Lcom/samsung/android/glview/GLRectangle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    .line 213
    :cond_0
    return-void

    .line 193
    :cond_1
    new-instance v7, Lcom/samsung/android/glview/GLSelectButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v7 .. v14}, Lcom/samsung/android/glview/GLSelectButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    iput-object v7, p0, Lcom/sec/android/app/camera/widget/gl/StickerItem;->mStickerButton:Lcom/samsung/android/glview/GLSelectButton;

    goto/16 :goto_0
.end method

.method public onCameraSettingChanged(II)V
    .locals 3
    .param p1, "menuId"    # I
    .param p2, "modeId"    # I

    .prologue
    const/4 v2, 0x0

    .line 76
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerItem;->mMenuId:I

    if-ne p1, v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v0

    if-ne p2, v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerItem;->mStickerButton:Lcom/samsung/android/glview/GLSelectButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setSelected(Z)V

    .line 79
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerItem;->mSelectRectBG:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerItem;->mStickerButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLSelectButton;->setSelected(Z)V

    .line 82
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerItem;->mSelectRectBG:Lcom/samsung/android/glview/GLRectangle;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    goto :goto_0
.end method

.method public onClick(Lcom/samsung/android/glview/GLView;)Z
    .locals 3
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    const/4 v0, 0x0

    .line 89
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerItem;->mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerItem;->mStickerButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLSelectButton;->isClickable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/gl/StickerItem;->isCurrentMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 91
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerItem;->mClickListener:Lcom/samsung/android/glview/GLView$ClickListener;

    if-eqz v1, :cond_0

    .line 92
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerItem;->mClickListener:Lcom/samsung/android/glview/GLView$ClickListener;

    invoke-interface {v1, p0}, Lcom/samsung/android/glview/GLView$ClickListener;->onClick(Lcom/samsung/android/glview/GLView;)Z

    .line 127
    :cond_0
    :goto_0
    return v0

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerItem;->mSelectListener:Lcom/sec/android/app/camera/widget/gl/StickerItem$SelectListener;

    if-eqz v0, :cond_2

    .line 97
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerItem;->mSelectListener:Lcom/sec/android/app/camera/widget/gl/StickerItem$SelectListener;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/widget/gl/StickerItem$SelectListener;->onSelect(Lcom/samsung/android/glview/GLView;)V

    .line 101
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerItem;->mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 102
    const-string v0, "StickerItem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Execute Menu!!!!, CommandId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/StickerItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerItem;->mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()Z

    .line 105
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v0

    const/16 v1, 0x232d

    if-ne v0, v1, :cond_4

    .line 106
    const-string v0, "5057"

    const-string v1, "Random"

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :cond_3
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 108
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    instance-of v0, v0, Lcom/sec/android/app/camera/resourcedata/StickerMenuResourceBundle;

    if-eqz v0, :cond_3

    .line 109
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    check-cast v0, Lcom/sec/android/app/camera/resourcedata/StickerMenuResourceBundle;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/resourcedata/StickerMenuResourceBundle;->getStickerType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 111
    :pswitch_0
    const-string v1, "5057"

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    check-cast v0, Lcom/sec/android/app/camera/resourcedata/StickerMenuResourceBundle;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/resourcedata/StickerMenuResourceBundle;->getStickerName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 114
    :pswitch_1
    const-string v1, "5058"

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    check-cast v0, Lcom/sec/android/app/camera/resourcedata/StickerMenuResourceBundle;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/resourcedata/StickerMenuResourceBundle;->getStickerName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 117
    :pswitch_2
    const-string v1, "9053"

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    check-cast v0, Lcom/sec/android/app/camera/resourcedata/StickerMenuResourceBundle;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/resourcedata/StickerMenuResourceBundle;->getStickerName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 109
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setDraggable(Z)V
    .locals 1
    .param p1, "draggable"    # Z

    .prologue
    .line 132
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/widget/gl/Item;->setDraggable(Z)V

    .line 133
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerItem;->mStickerButton:Lcom/samsung/android/glview/GLSelectButton;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerItem;->mStickerButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLSelectButton;->setDraggable(Z)V

    .line 136
    :cond_0
    return-void
.end method

.method public setMute(Z)V
    .locals 1
    .param p1, "mute"    # Z

    .prologue
    .line 139
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerItem;->mStickerButton:Lcom/samsung/android/glview/GLSelectButton;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerItem;->mStickerButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLSelectButton;->setMute(Z)V

    .line 142
    :cond_0
    return-void
.end method

.method public setNextFocusDownView(Lcom/samsung/android/glview/GLView;)Z
    .locals 1
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerItem;->mStickerButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLSelectButton;->setNextFocusDownView(Lcom/samsung/android/glview/GLView;)Z

    move-result v0

    return v0
.end method

.method public setNextFocusLeftView(Lcom/samsung/android/glview/GLView;)Z
    .locals 1
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerItem;->mStickerButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLSelectButton;->setNextFocusLeftView(Lcom/samsung/android/glview/GLView;)Z

    move-result v0

    return v0
.end method

.method public setNextFocusRightView(Lcom/samsung/android/glview/GLView;)Z
    .locals 1
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerItem;->mStickerButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLSelectButton;->setNextFocusRightView(Lcom/samsung/android/glview/GLView;)Z

    move-result v0

    return v0
.end method

.method public setNextFocusUpView(Lcom/samsung/android/glview/GLView;)Z
    .locals 1
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 161
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StickerItem;->mStickerButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLSelectButton;->setNextFocusUpView(Lcom/samsung/android/glview/GLView;)Z

    move-result v0

    return v0
.end method

.method public setSelectListener(Lcom/sec/android/app/camera/widget/gl/StickerItem$SelectListener;)V
    .locals 0
    .param p1, "l"    # Lcom/sec/android/app/camera/widget/gl/StickerItem$SelectListener;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/StickerItem;->mSelectListener:Lcom/sec/android/app/camera/widget/gl/StickerItem$SelectListener;

    .line 171
    return-void
.end method
