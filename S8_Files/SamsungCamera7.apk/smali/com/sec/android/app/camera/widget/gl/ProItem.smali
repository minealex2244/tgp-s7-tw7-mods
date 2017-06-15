.class public Lcom/sec/android/app/camera/widget/gl/ProItem;
.super Lcom/sec/android/app/camera/widget/gl/Item;
.source "ProItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/widget/gl/ProItem$ProItemClickListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ProItem"


# instance fields
.field private final PRO_ITEM_TEXT_COLOR:I

.field private final PRO_ITEM_TEXT_FONT_SIZE:I

.field private final PRO_ITEM_TEXT_HEIGHT:I

.field private final PRO_ITEM_TEXT_POS_Y:I

.field private final PRO_ITEM_TEXT_SELECTED_COLOR:I

.field private final PRO_ITEM_TEXT_STROKE_COLOR:I

.field private final PRO_ITEM_TEXT_STROKE_WIDTH:I

.field private final PRO_ITEM_WIDTH:I

.field private mButton:Lcom/samsung/android/glview/GLSelectButton;

.field private mCommandId:I

.field private mProItemClickListener:Lcom/sec/android/app/camera/widget/gl/ProItem$ProItemClickListener;

.field private mText:Lcom/samsung/android/glview/GLText;


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

    .line 35
    const v0, 0x7f0a0294

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->PRO_ITEM_WIDTH:I

    .line 36
    const v0, 0x7f0a0292

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->PRO_ITEM_TEXT_HEIGHT:I

    .line 37
    const v0, 0x7f0a0293

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->PRO_ITEM_TEXT_POS_Y:I

    .line 38
    const v0, 0x7f0a0291

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->PRO_ITEM_TEXT_FONT_SIZE:I

    .line 39
    const v0, 0x7f0d002c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->PRO_ITEM_TEXT_COLOR:I

    .line 40
    const v0, 0x7f0b0025

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->PRO_ITEM_TEXT_STROKE_WIDTH:I

    .line 41
    const v0, 0x7f0d0010

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->PRO_ITEM_TEXT_STROKE_COLOR:I

    .line 42
    const v0, 0x7f0d0041

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->PRO_ITEM_TEXT_SELECTED_COLOR:I

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mProItemClickListener:Lcom/sec/android/app/camera/widget/gl/ProItem$ProItemClickListener;

    .line 53
    invoke-virtual {p6}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mCommandId:I

    .line 54
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getTitleId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mTitle:Ljava/lang/String;

    .line 56
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ProItem;->init()V

    .line 58
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->addButtonToDimController(Lcom/samsung/android/glview/GLView;)V

    .line 59
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->removeButtonFromDimController(Lcom/samsung/android/glview/GLView;)V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 67
    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/widget/gl/Item;->clear()V

    .line 68
    return-void
.end method

.method protected clearContent()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 152
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/ProItem;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 154
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLSelectButton;->clear()V

    .line 155
    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/ProItem;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 159
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLText;->clear()V

    .line 160
    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mText:Lcom/samsung/android/glview/GLText;

    .line 162
    :cond_1
    return-void
.end method

.method protected init()V
    .locals 9

    .prologue
    .line 166
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mCommandId:I

    invoke-static {v0}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v8

    .line 168
    .local v8, "res":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    new-instance v0, Lcom/samsung/android/glview/GLSelectButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, v8, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    iget v5, v8, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    iget v6, v8, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLSelectButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    .line 169
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    const v1, 0x7f020192

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setBackground(I)Z

    .line 170
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, v8, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setTitle(Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->enableRippleEffect(Z)V

    .line 172
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLSelectButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 173
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->PRO_ITEM_TEXT_SELECTED_COLOR:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setPressedTint(I)V

    .line 174
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setButtonShapeVisibility(Z)V

    .line 176
    new-instance v0, Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->PRO_ITEM_TEXT_POS_Y:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->PRO_ITEM_WIDTH:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->PRO_ITEM_TEXT_HEIGHT:I

    int-to-float v5, v5

    const-string v6, ""

    iget v7, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->PRO_ITEM_TEXT_FONT_SIZE:I

    int-to-float v7, v7

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mText:Lcom/samsung/android/glview/GLText;

    .line 177
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setCenterPivot(Z)V

    .line 178
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setFocusable(Z)V

    .line 179
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x2

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 180
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    .line 181
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setShadowVisibility(Z)V

    .line 182
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mText:Lcom/samsung/android/glview/GLText;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->PRO_ITEM_TEXT_COLOR:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setColor(I)V

    .line 183
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mText:Lcom/samsung/android/glview/GLText;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->PRO_ITEM_TEXT_FONT_SIZE:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setFontSize(F)V

    .line 184
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x1

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->PRO_ITEM_TEXT_STROKE_WIDTH:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->PRO_ITEM_TEXT_STROKE_COLOR:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 185
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setBypassTouch(Z)V

    .line 187
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/ProItem;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 188
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/ProItem;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 189
    return-void
.end method

.method public onClick(Lcom/samsung/android/glview/GLView;)Z
    .locals 3
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    const/4 v2, 0x1

    .line 72
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLSelectButton;->getSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mProItemClickListener:Lcom/sec/android/app/camera/widget/gl/ProItem$ProItemClickListener;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mCommandId:I

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ProItem$ProItemClickListener;->onProItemSelected(I)V

    .line 75
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setSelected(Z)V

    .line 81
    :goto_0
    return v2

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mProItemClickListener:Lcom/sec/android/app/camera/widget/gl/ProItem$ProItemClickListener;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mCommandId:I

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ProItem$ProItemClickListener;->onProItemDeselected(I)V

    .line 79
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setSelected(Z)V

    goto :goto_0
.end method

.method public setDim(Z)V
    .locals 3
    .param p1, "dimmed"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 86
    iput-boolean p1, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mDimmed:Z

    .line 87
    if-eqz p1, :cond_2

    .line 88
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLSelectButton;->setDim(Z)V

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLText;->setDim(Z)V

    .line 102
    :cond_1
    :goto_0
    return-void

    .line 95
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    if-eqz v0, :cond_3

    .line 96
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setDim(Z)V

    .line 98
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setDim(Z)V

    goto :goto_0
.end method

.method public setMute(Z)V
    .locals 1
    .param p1, "mute"    # Z

    .prologue
    .line 106
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLSelectButton;->setMute(Z)V

    .line 109
    :cond_0
    return-void
.end method

.method public setProItemClickListener(Lcom/sec/android/app/camera/widget/gl/ProItem$ProItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/android/app/camera/widget/gl/ProItem$ProItemClickListener;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mProItemClickListener:Lcom/sec/android/app/camera/widget/gl/ProItem$ProItemClickListener;

    .line 113
    return-void
.end method

.method public setSelected(Z)V
    .locals 2
    .param p1, "selected"    # Z

    .prologue
    .line 117
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLSelectButton;->setSelected(Z)V

    .line 118
    if-eqz p1, :cond_1

    .line 119
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mText:Lcom/samsung/android/glview/GLText;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->PRO_ITEM_TEXT_SELECTED_COLOR:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setColor(I)V

    .line 127
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/widget/gl/Item;->setSelected(Z)V

    .line 128
    return-void

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mText:Lcom/samsung/android/glview/GLText;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->PRO_ITEM_TEXT_COLOR:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setColor(I)V

    goto :goto_0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLSelectButton;->setSubTitle(Ljava/lang/String;)V

    .line 135
    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "contentDescription"    # Ljava/lang/String;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, p2}, Lcom/samsung/android/glview/GLSelectButton;->setSubTitle(Ljava/lang/String;)V

    .line 142
    :cond_0
    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 145
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLText;->setColor(I)V

    .line 148
    :cond_0
    return-void
.end method
