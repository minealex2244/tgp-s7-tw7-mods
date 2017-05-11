.class public Lcom/sec/android/app/camera/widget/gl/ItemDataButton;
.super Lcom/samsung/android/glview/GLViewGroup;
.source "ItemDataButton.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ItemDataButton"


# instance fields
.field private mButton:Lcom/samsung/android/glview/GLButton;

.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mCommandId:I

.field private mGivenSize:Z

.field private mHeight:F

.field private mWidth:F


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFI)V
    .locals 7
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "commandId"    # I

    .prologue
    const/4 v6, 0x0

    .line 47
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    .line 42
    iput v6, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mWidth:F

    .line 43
    iput v6, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mHeight:F

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mGivenSize:Z

    .line 49
    iput p6, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mCommandId:I

    .line 50
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 51
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 52
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mCommandId:I

    invoke-static {v1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v1

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 53
    iput p4, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mWidth:F

    .line 54
    iput p5, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mHeight:F

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mGivenSize:Z

    .line 57
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->refreshButton()V

    .line 58
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFII)V
    .locals 7
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "commandId"    # I
    .param p7, "type"    # I

    .prologue
    const/4 v6, 0x0

    .line 61
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    .line 42
    iput v6, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mWidth:F

    .line 43
    iput v6, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mHeight:F

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mGivenSize:Z

    .line 63
    iput p6, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mCommandId:I

    .line 64
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 65
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 66
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mCommandId:I

    invoke-static {v1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v1

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 67
    iput p4, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mWidth:F

    .line 68
    iput p5, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mHeight:F

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mGivenSize:Z

    .line 71
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->refreshButton()V

    .line 72
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFI)V
    .locals 2
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "commandId"    # I

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    .line 42
    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mWidth:F

    .line 43
    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mHeight:F

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mGivenSize:Z

    .line 77
    iput p4, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mCommandId:I

    .line 78
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 79
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 80
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mCommandId:I

    invoke-static {v1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v1

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 82
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->refreshButton()V

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/widget/gl/ItemDataButton;)Lcom/samsung/android/glview/GLView$ClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/widget/gl/ItemDataButton;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mClickListener:Lcom/samsung/android/glview/GLView$ClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/widget/gl/ItemDataButton;)Lcom/samsung/android/glview/GLView$ClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/widget/gl/ItemDataButton;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mClickListener:Lcom/samsung/android/glview/GLView$ClickListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/widget/gl/ItemDataButton;)Lcom/samsung/android/glview/GLView$FocusListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/widget/gl/ItemDataButton;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mFocusListener:Lcom/samsung/android/glview/GLView$FocusListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/widget/gl/ItemDataButton;)Lcom/samsung/android/glview/GLView$FocusListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/widget/gl/ItemDataButton;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mFocusListener:Lcom/samsung/android/glview/GLView$FocusListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/widget/gl/ItemDataButton;)Lcom/samsung/android/glview/GLView$ClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/widget/gl/ItemDataButton;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mClickListener:Lcom/samsung/android/glview/GLView$ClickListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/widget/gl/ItemDataButton;)Lcom/samsung/android/glview/GLView$ClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/widget/gl/ItemDataButton;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mClickListener:Lcom/samsung/android/glview/GLView$ClickListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/widget/gl/ItemDataButton;)Lcom/samsung/android/glview/GLView$TouchListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/widget/gl/ItemDataButton;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mTouchListener:Lcom/samsung/android/glview/GLView$TouchListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/widget/gl/ItemDataButton;)Lcom/samsung/android/glview/GLView$TouchListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/widget/gl/ItemDataButton;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mTouchListener:Lcom/samsung/android/glview/GLView$TouchListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/widget/gl/ItemDataButton;)Lcom/samsung/android/glview/GLView$FocusListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/widget/gl/ItemDataButton;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mFocusListener:Lcom/samsung/android/glview/GLView$FocusListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/widget/gl/ItemDataButton;)Lcom/samsung/android/glview/GLView$FocusListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/widget/gl/ItemDataButton;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mFocusListener:Lcom/samsung/android/glview/GLView$FocusListener;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mCommandId:I

    invoke-static {v1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v1

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 91
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/glview/GLViewGroup;->clear()V

    .line 92
    return-void
.end method

.method public enableRippleEffect(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    .line 96
    return-void
.end method

.method public onCameraSettingChanged(II)V
    .locals 2
    .param p1, "menuId"    # I
    .param p2, "modeId"    # I

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isDestroying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    invoke-static {p1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(I)I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mCommandId:I

    if-ne v0, v1, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->refreshButton()V

    goto :goto_0
.end method

.method protected onDraw()V
    .locals 4

    .prologue
    .line 285
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLView;

    .line 286
    .local v0, "view":Lcom/samsung/android/glview/GLView;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->getMatrix()[F

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/glview/GLView;->draw([FLandroid/graphics/Rect;)V

    goto :goto_0

    .line 288
    .end local v0    # "view":Lcom/samsung/android/glview/GLView;
    :cond_0
    return-void
.end method

.method protected refreshButton()V
    .locals 15

    .prologue
    const/16 v14, 0x63

    const/4 v9, 0x0

    const/4 v2, 0x0

    .line 291
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mCommandId:I

    invoke-static {v0}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v10

    .line 292
    .local v10, "menuId":I
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, v10}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSettingValue(I)I

    move-result v11

    .line 293
    .local v11, "modeId":I
    invoke-static {v10, v11}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v13

    .line 295
    .local v13, "selectedCommandId":I
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mCommandId:I

    if-ne v0, v14, :cond_4

    .line 296
    const/16 v13, 0x63

    .line 311
    :cond_0
    :goto_0
    invoke-static {v13}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v12

    .line 313
    .local v12, "res":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mButton:Lcom/samsung/android/glview/GLButton;

    if-nez v0, :cond_1

    .line 314
    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mGivenSize:Z

    if-eqz v0, :cond_a

    .line 315
    new-instance v0, Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mWidth:F

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mHeight:F

    iget v6, v12, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    iget v7, v12, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    iget v8, v12, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    move v3, v2

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mButton:Lcom/samsung/android/glview/GLButton;

    .line 316
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2, v2}, Lcom/samsung/android/glview/GLButton;->setResourceOffset(FF)Z

    .line 320
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 321
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mButton:Lcom/samsung/android/glview/GLButton;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mCommandId:I

    invoke-static {v1}, Lcom/sec/android/app/camera/command/CmdIdStringMapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setObjectTag(Ljava/lang/String;)V

    .line 323
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mCommandId:I

    if-ne v13, v0, :cond_b

    .line 324
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->setSubTitle(Ljava/lang/String;)V

    .line 334
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v9}, Lcom/samsung/android/glview/GLButton;->setSelected(Z)V

    .line 336
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->getTitle()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, v12, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 337
    iget v0, v12, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mContentDescription:I

    if-eqz v0, :cond_d

    .line 338
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, v12, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mContentDescription:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->setSubTitle(Ljava/lang/String;)V

    .line 344
    :cond_2
    :goto_3
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mClickListener:Lcom/samsung/android/glview/GLView$ClickListener;

    if-eqz v0, :cond_e

    .line 345
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mButton:Lcom/samsung/android/glview/GLButton;

    iget v1, v12, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    iget v2, v12, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    iget v3, v12, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    invoke-virtual {v0, v1, v2, v3, v9}, Lcom/samsung/android/glview/GLButton;->setButtonResources(IIII)V

    .line 350
    :goto_4
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mButton:Lcom/samsung/android/glview/GLButton;

    new-instance v1, Lcom/sec/android/app/camera/widget/gl/ItemDataButton$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/widget/gl/ItemDataButton$3;-><init>(Lcom/sec/android/app/camera/widget/gl/ItemDataButton;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 359
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mButton:Lcom/samsung/android/glview/GLButton;

    new-instance v1, Lcom/sec/android/app/camera/widget/gl/ItemDataButton$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/widget/gl/ItemDataButton$4;-><init>(Lcom/sec/android/app/camera/widget/gl/ItemDataButton;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 368
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mButton:Lcom/samsung/android/glview/GLButton;

    new-instance v1, Lcom/sec/android/app/camera/widget/gl/ItemDataButton$5;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/widget/gl/ItemDataButton$5;-><init>(Lcom/sec/android/app/camera/widget/gl/ItemDataButton;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setFocusListener(Lcom/samsung/android/glview/GLView$FocusListener;)V

    .line 379
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mCommandId:I

    if-ne v0, v14, :cond_3

    .line 380
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v9}, Lcom/samsung/android/glview/GLButton;->setDraggable(Z)V

    .line 382
    :cond_3
    return-void

    .line 297
    .end local v12    # "res":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    :cond_4
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mCommandId:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_5

    .line 298
    const/16 v13, 0x8

    goto/16 :goto_0

    .line 299
    :cond_5
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mCommandId:I

    const/16 v1, 0x7f

    if-ne v0, v1, :cond_6

    .line 300
    const/16 v13, 0x7f

    goto/16 :goto_0

    .line 301
    :cond_6
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mCommandId:I

    const/16 v1, 0x81

    if-ne v0, v1, :cond_7

    .line 302
    const/16 v13, 0x81

    goto/16 :goto_0

    .line 303
    :cond_7
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mCommandId:I

    const/16 v1, 0x82

    if-ne v0, v1, :cond_8

    .line 304
    const/16 v13, 0x82

    goto/16 :goto_0

    .line 305
    :cond_8
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mCommandId:I

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_9

    .line 306
    const/16 v13, 0x5a

    goto/16 :goto_0

    .line 307
    :cond_9
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mCommandId:I

    const/16 v1, 0x75

    if-ne v0, v1, :cond_0

    .line 308
    const/16 v13, 0x75

    goto/16 :goto_0

    .line 318
    .restart local v12    # "res":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    :cond_a
    new-instance v0, Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v4, v12, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    iget v5, v12, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    iget v6, v12, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    move v3, v2

    move v7, v9

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mButton:Lcom/samsung/android/glview/GLButton;

    goto/16 :goto_1

    .line 326
    :cond_b
    iget v0, v12, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mContentDescription:I

    if-eqz v0, :cond_c

    .line 327
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, v12, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mContentDescription:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->setSubTitle(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 329
    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, v12, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->setSubTitle(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 340
    :cond_d
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, v12, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->setSubTitle(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 347
    :cond_e
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mButton:Lcom/samsung/android/glview/GLButton;

    iget v1, v12, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    iget v2, v12, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    iget v3, v12, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    invoke-virtual {v0, v1, v2, v3, v9}, Lcom/samsung/android/glview/GLButton;->setButtonResources(IIII)V

    goto/16 :goto_4
.end method

.method public resetTint()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->resetTint()V

    .line 113
    return-void
.end method

.method public setButtonPressListener(Lcom/samsung/android/glview/GLButton$ButtonPressListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/glview/GLButton$ButtonPressListener;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLButton;->setButtonPressListener(Lcom/samsung/android/glview/GLButton$ButtonPressListener;)V

    .line 117
    return-void
.end method

.method public setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V
    .locals 2
    .param p1, "l"    # Lcom/samsung/android/glview/GLView$ClickListener;

    .prologue
    .line 121
    if-nez p1, :cond_0

    .line 122
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 135
    :goto_0
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLViewGroup;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 136
    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mButton:Lcom/samsung/android/glview/GLButton;

    new-instance v1, Lcom/sec/android/app/camera/widget/gl/ItemDataButton$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/widget/gl/ItemDataButton$1;-><init>(Lcom/sec/android/app/camera/widget/gl/ItemDataButton;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    goto :goto_0
.end method

.method public setContentDescription(Ljava/lang/String;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLButton;->setContentDescription(Ljava/lang/String;)V

    .line 143
    :cond_0
    return-void
.end method

.method public setDim(Z)V
    .locals 1
    .param p1, "dim"    # Z

    .prologue
    .line 147
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    .line 150
    :cond_0
    return-void
.end method

.method public setFocusListener(Lcom/samsung/android/glview/GLView$FocusListener;)V
    .locals 2
    .param p1, "l"    # Lcom/samsung/android/glview/GLView$FocusListener;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mFocusListener:Lcom/samsung/android/glview/GLView$FocusListener;

    .line 155
    if-nez p1, :cond_0

    .line 156
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 169
    :goto_0
    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mButton:Lcom/samsung/android/glview/GLButton;

    new-instance v1, Lcom/sec/android/app/camera/widget/gl/ItemDataButton$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/widget/gl/ItemDataButton$2;-><init>(Lcom/sec/android/app/camera/widget/gl/ItemDataButton;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setFocusListener(Lcom/samsung/android/glview/GLView$FocusListener;)V

    goto :goto_0
.end method

.method public setHighlightVisibility(Z)V
    .locals 1
    .param p1, "visibility"    # Z

    .prologue
    .line 172
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLButton;->setHighlightVisibility(Z)V

    .line 175
    :cond_0
    return-void
.end method

.method public setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V
    .locals 2
    .param p1, "l"    # Lcom/samsung/android/glview/GLView$KeyListener;

    .prologue
    .line 179
    if-nez p1, :cond_0

    .line 180
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    .line 185
    :goto_0
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLViewGroup;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    .line 186
    return-void

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLButton;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    goto :goto_0
.end method

.method public setMute(Z)V
    .locals 1
    .param p1, "mute"    # Z

    .prologue
    .line 189
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    .line 192
    :cond_0
    return-void
.end method

.method public setPressedTint(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 195
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLButton;->setPressedTint(I)V

    .line 196
    return-void
.end method

.method public setResourceOffset(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->getWidth()F

    move-result v0

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->getHeight()F

    move-result v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_1

    .line 200
    :cond_0
    const/4 v0, 0x0

    .line 206
    :goto_0
    return v0

    .line 203
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_2

    .line 204
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/glview/GLButton;->setResourceOffset(FF)Z

    .line 206
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setRippleDiameter(F)V
    .locals 1
    .param p1, "diameter"    # F

    .prologue
    .line 215
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLButton;->setRippleDiameter(F)V

    .line 218
    :cond_0
    return-void
.end method

.method public setSelected(Z)V
    .locals 1
    .param p1, "selected"    # Z

    .prologue
    .line 221
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLButton;->setSelected(Z)V

    .line 222
    return-void
.end method

.method public declared-synchronized setSize(FF)V
    .locals 1
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 226
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/glview/GLButton;->setSize(FF)V

    .line 229
    :cond_0
    iput p1, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mWidth:F

    .line 230
    iput p2, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mHeight:F

    .line 231
    invoke-super {p0, p1, p2}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    monitor-exit p0

    return-void

    .line 226
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSubTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "subtitle"    # Ljava/lang/String;

    .prologue
    .line 236
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLButton;->setSubTitle(Ljava/lang/String;)V

    .line 239
    :cond_0
    return-void
.end method

.method public setText(Lcom/samsung/android/glview/GLText;)V
    .locals 1
    .param p1, "text"    # Lcom/samsung/android/glview/GLText;

    .prologue
    .line 242
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLButton;->setText(Lcom/samsung/android/glview/GLText;)V

    .line 245
    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 248
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLButton;->setText(Ljava/lang/String;)V

    .line 251
    :cond_0
    return-void
.end method

.method public setTextAlign(II)V
    .locals 1
    .param p1, "hAlign"    # I
    .param p2, "vAlign"    # I

    .prologue
    .line 254
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/glview/GLButton;->setTextAlign(II)V

    .line 257
    :cond_0
    return-void
.end method

.method public setTextPosition(FF)V
    .locals 1
    .param p1, "left"    # F
    .param p2, "top"    # F

    .prologue
    .line 260
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/glview/GLButton;->setTextPosition(FF)V

    .line 263
    :cond_0
    return-void
.end method

.method public setTextVisibility(Z)V
    .locals 1
    .param p1, "visibility"    # Z

    .prologue
    .line 266
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLButton;->setTextVisibility(Z)V

    .line 269
    :cond_0
    return-void
.end method

.method public setTint(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 272
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLButton;->setTint(I)V

    .line 273
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 277
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLViewGroup;->setTitle(Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 281
    :cond_0
    return-void
.end method
