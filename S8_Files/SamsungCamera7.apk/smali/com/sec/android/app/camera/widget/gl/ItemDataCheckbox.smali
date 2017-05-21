.class public Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;
.super Lcom/samsung/android/glview/GLViewGroup;
.source "ItemDataCheckbox.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox$OnCheckedChangeListener;
    }
.end annotation


# static fields
.field private static CHECKED:I

.field private static UNCHECKED:I


# instance fields
.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mChecked:Z

.field private mCheckedImage:Lcom/samsung/android/glview/GLImage;

.field private mCommandId:I

.field private mOnCheckedChangeListener:Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox$OnCheckedChangeListener;

.field private mPrevChecked:Z

.field private mUncheckedImage:Lcom/samsung/android/glview/GLImage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;->UNCHECKED:I

    .line 34
    const/4 v0, 0x1

    sput v0, Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;->CHECKED:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFI)V
    .locals 8
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "commandId"    # I

    .prologue
    .line 46
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;->mChecked:Z

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;->mPrevChecked:Z

    .line 48
    const/4 v6, 0x0

    .line 49
    .local v6, "offsetX":F
    const/4 v7, 0x0

    .line 51
    .local v7, "offsetY":F
    iput p6, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;->mCommandId:I

    .line 52
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 53
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;->mCommandId:I

    invoke-static {v1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v1

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 55
    new-instance v0, Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f020280

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;->mCheckedImage:Lcom/samsung/android/glview/GLImage;

    .line 56
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;->mCheckedImage:Lcom/samsung/android/glview/GLImage;

    const v1, 0x7f0d0009

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setTint(I)V

    .line 57
    new-instance v0, Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f02027f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;->mUncheckedImage:Lcom/samsung/android/glview/GLImage;

    .line 58
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;->mUncheckedImage:Lcom/samsung/android/glview/GLImage;

    const v1, 0x7f0d0008

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setTint(I)V

    .line 59
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;->mUncheckedImage:Lcom/samsung/android/glview/GLImage;

    const v1, 0x3f0ccccd    # 0.55f

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setAlpha(F)V

    .line 61
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;->mCheckedImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v0

    cmpl-float v0, p4, v0

    if-lez v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;->mCheckedImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v0

    sub-float v0, p4, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v6, v0, v1

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;->mCheckedImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v0

    cmpl-float v0, p5, v0

    if-lez v0, :cond_1

    .line 65
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;->mCheckedImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v0

    sub-float v0, p5, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v7, v0, v1

    .line 67
    :cond_1
    const/4 v0, 0x0

    invoke-static {v6, v0}, Lcom/sec/android/app/camera/util/Util;->floatEquals(FF)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-static {v7, v0}, Lcom/sec/android/app/camera/util/Util;->floatEquals(FF)Z

    move-result v0

    if-nez v0, :cond_3

    .line 68
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;->mCheckedImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v6, v7}, Lcom/samsung/android/glview/GLImage;->moveLayout(FF)V

    .line 69
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;->mUncheckedImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v6, v7}, Lcom/samsung/android/glview/GLImage;->moveLayout(FF)V

    .line 71
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;->mCheckedImage:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 72
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;->mUncheckedImage:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 73
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;->mCheckedImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 74
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;->mUncheckedImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 75
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;->refreshView()V

    .line 77
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

    .line 80
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    .line 40
    iput-boolean v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;->mChecked:Z

    .line 41
    iput-boolean v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;->mPrevChecked:Z

    .line 82
    iput p4, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;->mCommandId:I

    .line 83
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 84
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 85
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;->mCommandId:I

    invoke-static {v1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v1

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 87
    new-instance v0, Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const v2, 0x7f020280

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;->mCheckedImage:Lcom/samsung/android/glview/GLImage;

    .line 88
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;->mCheckedImage:Lcom/samsung/android/glview/GLImage;

    const v1, 0x7f0d0009

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setTint(I)V

    .line 90
    new-instance v0, Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const v2, 0x7f02027f

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;->mUncheckedImage:Lcom/samsung/android/glview/GLImage;

    .line 91
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;->mUncheckedImage:Lcom/samsung/android/glview/GLImage;

    const v1, 0x7f0d0008

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setTint(I)V

    .line 92
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;->mUncheckedImage:Lcom/samsung/android/glview/GLImage;

    const v1, 0x3f0ccccd    # 0.55f

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setAlpha(F)V

    .line 94
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;->mCheckedImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 95
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;->mUncheckedImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 96
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;->mCheckedImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 97
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;->mUncheckedImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 98
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;->refreshView()V

    .line 100
    return-void
.end method

.method private refreshView()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 131
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;->mCommandId:I

    invoke-static {v2}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSettingValue(I)I

    move-result v0

    .line 132
    .local v0, "modeId":I
    sget v1, Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;->CHECKED:I

    if-ne v0, v1, :cond_3

    .line 133
    iput-boolean v4, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;->mChecked:Z

    .line 134
    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;->setCheckedImage(Z)V

    .line 140
    :cond_0
    :goto_0
    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;->mCommandId:I

    const/16 v2, 0x63

    if-ne v1, v2, :cond_1

    .line 141
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;->mCheckedImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLImage;->setDraggable(Z)V

    .line 142
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;->mUncheckedImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLImage;->setDraggable(Z)V

    .line 145
    :cond_1
    iget-boolean v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;->mChecked:Z

    iget-boolean v2, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;->mPrevChecked:Z

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;->mOnCheckedChangeListener:Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox$OnCheckedChangeListener;

    if-eqz v1, :cond_2

    .line 146
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;->mOnCheckedChangeListener:Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox$OnCheckedChangeListener;

    iget-boolean v2, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;->mChecked:Z

    invoke-interface {v1, p0, v2}, Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox$OnCheckedChangeListener;->onCheckedChanged(Lcom/samsung/android/glview/GLView;Z)V

    .line 148
    :cond_2
    iget-boolean v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;->mChecked:Z

    iput-boolean v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;->mPrevChecked:Z

    .line 149
    return-void

    .line 135
    :cond_3
    sget v1, Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;->UNCHECKED:I

    if-ne v0, v1, :cond_0

    .line 136
    iput-boolean v3, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;->mChecked:Z

    .line 137
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;->setCheckedImage(Z)V

    goto :goto_0
.end method

.method private setCheckedImage(Z)V
    .locals 3
    .param p1, "check"    # Z

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 152
    if-eqz p1, :cond_0

    .line 153
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;->mCheckedImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 154
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;->mUncheckedImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 159
    :goto_0
    return-void

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;->mCheckedImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 157
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;->mUncheckedImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;->mCommandId:I

    invoke-static {v1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v1

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 108
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/glview/GLViewGroup;->clear()V

    .line 109
    return-void
.end method

.method public getSelected()Z
    .locals 1

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;->mChecked:Z

    return v0
.end method

.method public onCameraSettingChanged(II)V
    .locals 1
    .param p1, "menuId"    # I
    .param p2, "modeId"    # I

    .prologue
    .line 117
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isDestroying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;->mCommandId:I

    invoke-static {v0}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 121
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;->refreshView()V

    goto :goto_0
.end method

.method public setOnCheckedChangeListener(Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox$OnCheckedChangeListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox$OnCheckedChangeListener;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;->mOnCheckedChangeListener:Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox$OnCheckedChangeListener;

    .line 127
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;->mOnCheckedChangeListener:Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox$OnCheckedChangeListener;

    iget-boolean v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox;->mChecked:Z

    invoke-interface {v0, p0, v1}, Lcom/sec/android/app/camera/widget/gl/ItemDataCheckbox$OnCheckedChangeListener;->onCheckedChanged(Lcom/samsung/android/glview/GLView;Z)V

    .line 128
    return-void
.end method
