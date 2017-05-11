.class public Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;
.super Lcom/samsung/android/glview/GLViewGroup;
.source "ItemDataRadioButton.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton$OnSelectedChangeListener;
    }
.end annotation


# instance fields
.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mCommandId:I

.field private mOnSelectedChangeListener:Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton$OnSelectedChangeListener;

.field private mPrevSelected:Z

.field private mSelected:Z

.field private mSelectedImage:Lcom/samsung/android/glview/GLImage;

.field private mUnSelectedImage:Lcom/samsung/android/glview/GLImage;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFI)V
    .locals 8
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "commandId"    # I

    .prologue
    .line 43
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mSelected:Z

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mPrevSelected:Z

    .line 45
    const/4 v6, 0x0

    .line 46
    .local v6, "offsetX":F
    const/4 v7, 0x0

    .line 48
    .local v7, "offsetY":F
    iput p6, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mCommandId:I

    .line 49
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 50
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mCommandId:I

    invoke-static {v1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v1

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 51
    new-instance v0, Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f020281

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mSelectedImage:Lcom/samsung/android/glview/GLImage;

    .line 52
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mSelectedImage:Lcom/samsung/android/glview/GLImage;

    const v1, 0x7f0d0044

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setTint(I)V

    .line 53
    new-instance v0, Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f020282

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mUnSelectedImage:Lcom/samsung/android/glview/GLImage;

    .line 54
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mUnSelectedImage:Lcom/samsung/android/glview/GLImage;

    const v1, 0x7f0d0043

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setTint(I)V

    .line 55
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mUnSelectedImage:Lcom/samsung/android/glview/GLImage;

    const v1, 0x3f0ccccd    # 0.55f

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setAlpha(F)V

    .line 57
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mSelectedImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v0

    cmpl-float v0, p4, v0

    if-lez v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mSelectedImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v0

    sub-float v0, p4, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v6, v0, v1

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mSelectedImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v0

    cmpl-float v0, p5, v0

    if-lez v0, :cond_1

    .line 61
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mSelectedImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v0

    sub-float v0, p5, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v7, v0, v1

    .line 63
    :cond_1
    const/4 v0, 0x0

    invoke-static {v6, v0}, Lcom/sec/android/app/camera/util/Util;->floatEquals(FF)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-static {v7, v0}, Lcom/sec/android/app/camera/util/Util;->floatEquals(FF)Z

    move-result v0

    if-nez v0, :cond_3

    .line 64
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mSelectedImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v6, v7}, Lcom/samsung/android/glview/GLImage;->moveLayout(FF)V

    .line 65
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mUnSelectedImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v6, v7}, Lcom/samsung/android/glview/GLImage;->moveLayout(FF)V

    .line 67
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mSelectedImage:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 68
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mUnSelectedImage:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 69
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mSelectedImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 70
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mUnSelectedImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 71
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->refreshView()V

    .line 72
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFI)V
    .locals 5
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "commandId"    # I

    .prologue
    const/4 v4, 0x4

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 75
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    .line 37
    iput-boolean v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mSelected:Z

    .line 38
    iput-boolean v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mPrevSelected:Z

    .line 77
    iput p4, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mCommandId:I

    .line 78
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 79
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 80
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mCommandId:I

    invoke-static {v1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v1

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 81
    new-instance v0, Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const v2, 0x7f020281

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mSelectedImage:Lcom/samsung/android/glview/GLImage;

    .line 82
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mSelectedImage:Lcom/samsung/android/glview/GLImage;

    const v1, 0x7f0d0044

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setTint(I)V

    .line 83
    new-instance v0, Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const v2, 0x7f020282

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mUnSelectedImage:Lcom/samsung/android/glview/GLImage;

    .line 84
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mUnSelectedImage:Lcom/samsung/android/glview/GLImage;

    const v1, 0x7f0d0043

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setTint(I)V

    .line 85
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mUnSelectedImage:Lcom/samsung/android/glview/GLImage;

    const v1, 0x3f0ccccd    # 0.55f

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setAlpha(F)V

    .line 86
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mSelectedImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 87
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mUnSelectedImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 88
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mSelectedImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 89
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mUnSelectedImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 90
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->refreshView()V

    .line 91
    return-void
.end method

.method private refreshView()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 122
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mCommandId:I

    invoke-static {v1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSettingValue(I)I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mCommandId:I

    invoke-static {v1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getModeIDByCommandID(I)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 123
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mSelectedImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 124
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mUnSelectedImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mSelected:Z

    .line 131
    :goto_0
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mCommandId:I

    const/16 v1, 0x63

    if-ne v0, v1, :cond_0

    .line 132
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mSelectedImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setDraggable(Z)V

    .line 133
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mUnSelectedImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setDraggable(Z)V

    .line 135
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mSelected:Z

    iget-boolean v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mPrevSelected:Z

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mOnSelectedChangeListener:Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton$OnSelectedChangeListener;

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mOnSelectedChangeListener:Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton$OnSelectedChangeListener;

    iget-boolean v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mSelected:Z

    invoke-interface {v0, p0, v1}, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton$OnSelectedChangeListener;->onSelectedChanged(Lcom/samsung/android/glview/GLView;Z)V

    .line 138
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mSelected:Z

    iput-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mPrevSelected:Z

    .line 139
    return-void

    .line 127
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mSelectedImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 128
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mUnSelectedImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 129
    iput-boolean v2, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mSelected:Z

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mCommandId:I

    invoke-static {v1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v1

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 99
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/glview/GLViewGroup;->clear()V

    .line 100
    return-void
.end method

.method public getSelected()Z
    .locals 1

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mSelected:Z

    return v0
.end method

.method public onCameraSettingChanged(II)V
    .locals 1
    .param p1, "menuId"    # I
    .param p2, "modeId"    # I

    .prologue
    .line 108
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isDestroying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mCommandId:I

    invoke-static {v0}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 112
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->refreshView()V

    goto :goto_0
.end method

.method public setOnSelectedChangeListener(Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton$OnSelectedChangeListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton$OnSelectedChangeListener;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mOnSelectedChangeListener:Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton$OnSelectedChangeListener;

    .line 118
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mOnSelectedChangeListener:Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton$OnSelectedChangeListener;

    iget-boolean v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton;->mSelected:Z

    invoke-interface {v0, p0, v1}, Lcom/sec/android/app/camera/widget/gl/ItemDataRadioButton$OnSelectedChangeListener;->onSelectedChanged(Lcom/samsung/android/glview/GLView;Z)V

    .line 119
    return-void
.end method
