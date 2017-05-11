.class public Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;
.super Lcom/samsung/android/glview/GLViewGroup;
.source "ThumbnailButton.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$ClickListener;


# static fields
.field protected static final TAG:Ljava/lang/String; = "ThumbnailButton"


# instance fields
.field private final THUMBNAIL_ANIMATION_DURATION:I

.field private final THUMBNAIL_DEFAULT_RIPPLE_DIAMETER:F

.field private final THUMBNAIL_FRAME_HEIGHT:I

.field private final THUMBNAIL_FRAME_WIDTH:I

.field private final THUMBNAIL_IMAGE_HEIGHT:I

.field private final THUMBNAIL_IMAGE_POS_X:I

.field private final THUMBNAIL_IMAGE_POS_Y:I

.field private final THUMBNAIL_IMAGE_WIDTH:I

.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mFrameButton:Lcom/samsung/android/glview/GLButton;

.field private mIdxNewThumbnail:I

.field private mIsThumbnailExist:Z

.field private mThumbnail:Lcom/samsung/android/glview/GLViewGroup;

.field private mThumbnailImage:[Lcom/samsung/android/glview/GLImage;

.field private mThumbnailOrientation:I

.field private mThumbnailUri:Landroid/net/Uri;

.field private mViewToScale:Lcom/samsung/android/glview/GLView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FF)V
    .locals 4
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "left"    # F
    .param p3, "top"    # F

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    const/4 v3, 0x0

    .line 71
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    .line 50
    const v0, 0x7f0a02a4

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->THUMBNAIL_FRAME_WIDTH:I

    .line 51
    const v0, 0x7f0a02a3

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->THUMBNAIL_FRAME_HEIGHT:I

    .line 52
    const v0, 0x7f0a02a6

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    div-float/2addr v0, v1

    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->THUMBNAIL_IMAGE_WIDTH:I

    .line 53
    const v0, 0x7f0a02a5

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    div-float/2addr v0, v1

    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->THUMBNAIL_IMAGE_HEIGHT:I

    .line 54
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->THUMBNAIL_FRAME_WIDTH:I

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->THUMBNAIL_IMAGE_WIDTH:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->THUMBNAIL_IMAGE_POS_X:I

    .line 55
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->THUMBNAIL_FRAME_HEIGHT:I

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->THUMBNAIL_IMAGE_HEIGHT:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->THUMBNAIL_IMAGE_POS_Y:I

    .line 56
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->THUMBNAIL_FRAME_WIDTH:I

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->THUMBNAIL_FRAME_WIDTH:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->THUMBNAIL_FRAME_HEIGHT:I

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->THUMBNAIL_FRAME_HEIGHT:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->THUMBNAIL_DEFAULT_RIPPLE_DIAMETER:F

    .line 58
    const v0, 0x7f0b001a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->THUMBNAIL_ANIMATION_DURATION:I

    .line 60
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/samsung/android/glview/GLImage;

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailImage:[Lcom/samsung/android/glview/GLImage;

    .line 65
    iput v3, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mIdxNewThumbnail:I

    .line 67
    iput-boolean v3, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mIsThumbnailExist:Z

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailUri:Landroid/net/Uri;

    .line 72
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->setClipping(Z)V

    .line 74
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 76
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->updateEmpty()V

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    .prologue
    .line 47
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->THUMBNAIL_ANIMATION_DURATION:I

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;)Lcom/samsung/android/glview/GLView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mViewToScale:Lcom/samsung/android/glview/GLView;

    return-object v0
.end method

.method private declared-synchronized updateEmpty()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 471
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 503
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 474
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnail:Lcom/samsung/android/glview/GLViewGroup;

    if-nez v0, :cond_2

    .line 475
    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->THUMBNAIL_IMAGE_POS_X:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->THUMBNAIL_IMAGE_POS_Y:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->THUMBNAIL_IMAGE_WIDTH:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->THUMBNAIL_IMAGE_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnail:Lcom/samsung/android/glview/GLViewGroup;

    .line 477
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mIdxNewThumbnail:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mIdxNewThumbnail:I

    .line 478
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnail:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 481
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mFrameButton:Lcom/samsung/android/glview/GLButton;

    if-nez v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMultiWindowMode()I

    move-result v0

    if-ne v0, v9, :cond_5

    .line 483
    new-instance v0, Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->THUMBNAIL_FRAME_WIDTH:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->THUMBNAIL_FRAME_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x7f020117

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mFrameButton:Lcom/samsung/android/glview/GLButton;

    .line 487
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mFrameButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f09017a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 488
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mFrameButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 489
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mFrameButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 490
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v0

    if-nez v0, :cond_3

    .line 491
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mFrameButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 492
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mFrameButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 494
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSecureCamera()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 495
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMultiWindowMode()I

    move-result v0

    if-ne v0, v9, :cond_6

    .line 496
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mFrameButton:Lcom/samsung/android/glview/GLButton;

    const v1, 0x7f020115

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/glview/GLButton;->setButtonResources(IIII)V

    .line 501
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mFrameButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->addView(Lcom/samsung/android/glview/GLView;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 471
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 485
    :cond_5
    :try_start_2
    new-instance v0, Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->THUMBNAIL_FRAME_WIDTH:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->THUMBNAIL_FRAME_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x7f020116

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mFrameButton:Lcom/samsung/android/glview/GLButton;

    goto :goto_1

    .line 498
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mFrameButton:Lcom/samsung/android/glview/GLButton;

    const v1, 0x7f020114

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/glview/GLButton;->setButtonResources(IIII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 3

    .prologue
    .line 81
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailImage:[Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnail:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnail:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailImage:[Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailImage:[Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->clear()V

    .line 86
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailImage:[Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailImage:[Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    if-eqz v0, :cond_3

    .line 90
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnail:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_2

    .line 91
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnail:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailImage:[Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 93
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailImage:[Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->clear()V

    .line 94
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailImage:[Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 97
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnail:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_4

    .line 98
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnail:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->clear()V

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnail:Lcom/samsung/android/glview/GLViewGroup;

    .line 101
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mFrameButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_5

    .line 102
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mFrameButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->clear()V

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mFrameButton:Lcom/samsung/android/glview/GLButton;

    .line 105
    :cond_5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 107
    invoke-super {p0}, Lcom/samsung/android/glview/GLViewGroup;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    monitor-exit p0

    return-void

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isThumbnailExist()Z
    .locals 1

    .prologue
    .line 111
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mIsThumbnailExist:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onClick(Lcom/samsung/android/glview/GLView;)Z
    .locals 1
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mClickListener:Lcom/samsung/android/glview/GLView$ClickListener;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mClickListener:Lcom/samsung/android/glview/GLView$ClickListener;

    invoke-interface {v0, p0}, Lcom/samsung/android/glview/GLView$ClickListener;->onClick(Lcom/samsung/android/glview/GLView;)Z

    move-result v0

    .line 119
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized setRotatableForCoverCamera(Z)V
    .locals 2
    .param p1, "rotatable"    # Z

    .prologue
    .line 123
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mFrameButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mFrameButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 125
    if-nez p1, :cond_0

    .line 126
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mFrameButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setOrientation(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    :cond_0
    monitor-exit p0

    return-void

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setThumbnailOrientation(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 132
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailOrientation:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    monitor-exit p0

    return-void

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setThumbnailUri(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 136
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailUri:Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    monitor-exit p0

    return-void

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized update()V
    .locals 29

    .prologue
    .line 140
    monitor-enter p0

    :try_start_0
    const-string v3, "ThumbnailButton.update"

    invoke-static {v3}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    :try_start_1
    const-string v3, "AXLOG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateThumbnail.latest**StartU["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "]**"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLatestMedia()Lcom/sec/android/app/camera/interfaces/CameraContext$LatestMedia;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    if-nez v3, :cond_1

    .line 347
    :cond_0
    :try_start_2
    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 349
    :goto_0
    monitor-exit p0

    return-void

    .line 146
    :cond_1
    const/16 v23, 0x0

    .line 147
    .local v23, "bitmap":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 148
    .local v2, "croppedBitmap":Landroid/graphics/Bitmap;
    const/4 v14, 0x0

    .line 149
    .local v14, "rotatedBitmap":Landroid/graphics/Bitmap;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLatestMedia()Lcom/sec/android/app/camera/interfaces/CameraContext$LatestMedia;

    move-result-object v26

    .line 151
    .local v26, "latestMedia":Lcom/sec/android/app/camera/interfaces/CameraContext$LatestMedia;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailUri:Landroid/net/Uri;

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailUri:Landroid/net/Uri;

    invoke-interface/range {v26 .. v26}, Lcom/sec/android/app/camera/interfaces/CameraContext$LatestMedia;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 152
    invoke-interface/range {v26 .. v26}, Lcom/sec/android/app/camera/interfaces/CameraContext$LatestMedia;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    .line 153
    invoke-interface/range {v26 .. v26}, Lcom/sec/android/app/camera/interfaces/CameraContext$LatestMedia;->getType()I

    move-result v3

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailOrientation:I

    invoke-interface/range {v26 .. v26}, Lcom/sec/android/app/camera/interfaces/CameraContext$LatestMedia;->getOrientation()I

    move-result v4

    if-ne v3, v4, :cond_3

    .line 154
    :cond_2
    const-string v3, "ThumbnailButton"

    const-string v4, "returning because thumbnail uri is the same"

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 347
    :try_start_4
    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 140
    .end local v2    # "croppedBitmap":Landroid/graphics/Bitmap;
    .end local v14    # "rotatedBitmap":Landroid/graphics/Bitmap;
    .end local v23    # "bitmap":Landroid/graphics/Bitmap;
    .end local v26    # "latestMedia":Lcom/sec/android/app/camera/interfaces/CameraContext$LatestMedia;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 158
    .restart local v2    # "croppedBitmap":Landroid/graphics/Bitmap;
    .restart local v14    # "rotatedBitmap":Landroid/graphics/Bitmap;
    .restart local v23    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v26    # "latestMedia":Lcom/sec/android/app/camera/interfaces/CameraContext$LatestMedia;
    :cond_3
    :try_start_5
    invoke-interface/range {v26 .. v26}, Lcom/sec/android/app/camera/interfaces/CameraContext$LatestMedia;->getUri()Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailUri:Landroid/net/Uri;

    .line 159
    invoke-interface/range {v26 .. v26}, Lcom/sec/android/app/camera/interfaces/CameraContext$LatestMedia;->getOrientation()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailOrientation:I

    .line 160
    const-string v3, "ThumbnailButton"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateThumbnail.latest : uri = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailUri:Landroid/net/Uri;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ", orientation = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailOrientation:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSecureCamera()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 163
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getUriListInSecureCamera()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_13

    .line 165
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->updateSecureUriList()V

    .line 168
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getUriListInSecureCamera()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_12

    .line 169
    invoke-interface/range {v26 .. v26}, Lcom/sec/android/app/camera/interfaces/CameraContext$LatestMedia;->getType()I

    move-result v3

    if-nez v3, :cond_11

    .line 170
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-interface/range {v26 .. v26}, Lcom/sec/android/app/camera/interfaces/CameraContext$LatestMedia;->getId()J

    move-result-wide v8

    const/4 v4, 0x1

    const/4 v10, 0x0

    invoke-static {v3, v8, v9, v4, v10}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v23

    .line 204
    :cond_4
    :goto_1
    const/16 v24, 0x0

    .line 206
    .local v24, "brokenImage":Z
    if-eqz v23, :cond_18

    .line 207
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->THUMBNAIL_IMAGE_WIDTH:I

    .line 208
    .local v5, "width":I
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->THUMBNAIL_IMAGE_HEIGHT:I

    .line 211
    .local v6, "height":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMultiWindowMode()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    .line 212
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->THUMBNAIL_IMAGE_WIDTH:I

    int-to-float v3, v3

    const/high16 v4, 0x3f400000    # 0.75f

    mul-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    float-to-int v3, v3

    mul-int/lit8 v5, v3, 0x2

    .line 213
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->THUMBNAIL_IMAGE_HEIGHT:I

    int-to-float v3, v3

    const/high16 v4, 0x3f400000    # 0.75f

    mul-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    float-to-int v3, v3

    mul-int/lit8 v6, v3, 0x2

    .line 215
    :cond_5
    move-object/from16 v0, v23

    invoke-static {v0, v5, v6}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 229
    .end local v5    # "width":I
    .end local v6    # "height":I
    :cond_6
    :goto_2
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mIsThumbnailExist:Z

    .line 231
    if-eqz v2, :cond_e

    .line 232
    if-eqz v24, :cond_1c

    .line 233
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailImage:[Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    if-eqz v3, :cond_7

    .line 234
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnail:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailImage:[Lcom/samsung/android/glview/GLImage;

    const/4 v8, 0x0

    aget-object v4, v4, v8

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 235
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailImage:[Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLImage;->clear()V

    .line 236
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailImage:[Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x0

    const/4 v8, 0x0

    aput-object v8, v3, v4

    .line 238
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailImage:[Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    if-eqz v3, :cond_8

    .line 239
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnail:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailImage:[Lcom/samsung/android/glview/GLImage;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 240
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailImage:[Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLImage;->clear()V

    .line 241
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailImage:[Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x1

    const/4 v8, 0x0

    aput-object v8, v3, v4

    .line 251
    :cond_8
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 252
    const/16 v27, 0x0

    .line 253
    .local v27, "x":I
    const/16 v28, 0x0

    .line 254
    .local v28, "y":I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->THUMBNAIL_IMAGE_WIDTH:I

    .line 255
    .restart local v5    # "width":I
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->THUMBNAIL_IMAGE_HEIGHT:I

    .line 258
    .restart local v6    # "height":I
    if-nez v24, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMultiWindowMode()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_9

    .line 259
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->THUMBNAIL_IMAGE_WIDTH:I

    int-to-float v3, v3

    const/high16 v4, 0x3f400000    # 0.75f

    mul-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    float-to-int v3, v3

    mul-int/lit8 v5, v3, 0x2

    .line 260
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->THUMBNAIL_IMAGE_HEIGHT:I

    int-to-float v3, v3

    const/high16 v4, 0x3f400000    # 0.75f

    mul-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    float-to-int v3, v3

    mul-int/lit8 v6, v3, 0x2

    .line 261
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->THUMBNAIL_IMAGE_WIDTH:I

    sub-int/2addr v3, v5

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    float-to-int v0, v3

    move/from16 v27, v0

    .line 262
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->THUMBNAIL_IMAGE_HEIGHT:I

    sub-int/2addr v3, v6

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    float-to-int v0, v3

    move/from16 v28, v0

    .line 264
    :cond_9
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 265
    .local v7, "matrix":Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailOrientation:I

    int-to-float v3, v3

    invoke-virtual {v7, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 266
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 267
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailImage:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mIdxNewThumbnail:I

    new-instance v8, Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v9

    move/from16 v0, v27

    int-to-float v10, v0

    move/from16 v0, v28

    int-to-float v11, v0

    int-to-float v12, v5

    int-to-float v13, v6

    invoke-direct/range {v8 .. v14}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLandroid/graphics/Bitmap;)V

    aput-object v8, v3, v4

    .line 272
    .end local v5    # "width":I
    .end local v6    # "height":I
    .end local v7    # "matrix":Landroid/graphics/Matrix;
    .end local v27    # "x":I
    .end local v28    # "y":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailImage:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mIdxNewThumbnail:I

    aget-object v3, v3, v4

    if-eqz v3, :cond_e

    .line 273
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailImage:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mIdxNewThumbnail:I

    aget-object v3, v3, v4

    const/16 v4, 0x3f1

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLImage;->setShaderProgram(I)V

    .line 274
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailImage:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mIdxNewThumbnail:I

    aget-object v3, v3, v4

    const/4 v4, 0x4

    const/4 v8, 0x0

    invoke-virtual {v3, v4, v8}, Lcom/samsung/android/glview/GLImage;->setVisibility(IZ)V

    .line 276
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnail:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v3, :cond_a

    .line 277
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnail:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailImage:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mIdxNewThumbnail:I

    aget-object v4, v4, v8

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 280
    :cond_a
    const/16 v25, 0x0

    .line 281
    .local v25, "defaultOrientation":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v3

    if-nez v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isKeyboardCoverCamera()Z

    move-result v3

    if-nez v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 282
    :cond_b
    if-nez v24, :cond_1f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailOrientation:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1f

    .line 283
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 284
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailOrientation:I

    div-int/lit8 v25, v3, 0x5a

    .line 300
    :cond_c
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailImage:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mIdxNewThumbnail:I

    aget-object v3, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLImage;->setCenterPivot(Z)V

    .line 301
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v3

    if-nez v3, :cond_d

    .line 302
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailImage:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mIdxNewThumbnail:I

    aget-object v3, v3, v4

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Lcom/samsung/android/glview/GLImage;->setDefaultOrientation(I)V

    .line 305
    :cond_d
    new-instance v22, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    move-object/from16 v0, v22

    invoke-direct {v0, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 306
    .local v22, "animSet":Landroid/view/animation/AnimationSet;
    const/4 v3, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 309
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->THUMBNAIL_ANIMATION_DURATION:I

    invoke-static {v3}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation(I)Landroid/view/animation/Animation;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 311
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailImage:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mIdxNewThumbnail:I

    aget-object v3, v3, v4

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 312
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailImage:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mIdxNewThumbnail:I

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 313
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailImage:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mIdxNewThumbnail:I

    aget-object v3, v3, v4

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 315
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mIsThumbnailExist:Z

    .line 316
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mIdxNewThumbnail:I

    add-int/lit8 v3, v3, 0x1

    rem-int/lit8 v3, v3, 0x2

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mIdxNewThumbnail:I

    .line 320
    .end local v22    # "animSet":Landroid/view/animation/AnimationSet;
    .end local v25    # "defaultOrientation":I
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mIsThumbnailExist:Z

    if-nez v3, :cond_23

    .line 321
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailImage:[Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    if-eqz v3, :cond_f

    .line 322
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnail:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailImage:[Lcom/samsung/android/glview/GLImage;

    const/4 v8, 0x0

    aget-object v4, v4, v8

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 323
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailImage:[Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLImage;->clear()V

    .line 324
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailImage:[Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x0

    const/4 v8, 0x0

    aput-object v8, v3, v4

    .line 326
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailImage:[Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    if-eqz v3, :cond_10

    .line 327
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnail:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailImage:[Lcom/samsung/android/glview/GLImage;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 328
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailImage:[Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLImage;->clear()V

    .line 329
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailImage:[Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x1

    const/4 v8, 0x0

    aput-object v8, v3, v4

    .line 331
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMultiWindowMode()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_22

    .line 332
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mFrameButton:Lcom/samsung/android/glview/GLButton;

    const v4, 0x7f020115

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v3, v4, v8, v9, v10}, Lcom/samsung/android/glview/GLButton;->setButtonResources(IIII)V

    .line 336
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mFrameButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->THUMBNAIL_DEFAULT_RIPPLE_DIAMETER:F

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLButton;->setRippleDiameter(F)V

    .line 345
    :goto_7
    const-string v3, "AXLOG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateThumbnail.latest**EndU["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "]**"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 347
    :try_start_6
    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 172
    .end local v24    # "brokenImage":Z
    :cond_11
    :try_start_7
    invoke-interface/range {v26 .. v26}, Lcom/sec/android/app/camera/interfaces/CameraContext$LatestMedia;->getVideoThumbnail()Landroid/graphics/Bitmap;

    move-result-object v23

    goto/16 :goto_1

    .line 175
    :cond_12
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailUri:Landroid/net/Uri;

    .line 176
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailOrientation:I

    .line 177
    const-string v3, "ThumbnailButton"

    const-string v4, "updateThumbnail.latest : initialized thumbnail because secure list is empty"

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_1

    .line 347
    .end local v2    # "croppedBitmap":Landroid/graphics/Bitmap;
    .end local v14    # "rotatedBitmap":Landroid/graphics/Bitmap;
    .end local v23    # "bitmap":Landroid/graphics/Bitmap;
    .end local v26    # "latestMedia":Lcom/sec/android/app/camera/interfaces/CameraContext$LatestMedia;
    :catchall_1
    move-exception v3

    :try_start_8
    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 180
    .restart local v2    # "croppedBitmap":Landroid/graphics/Bitmap;
    .restart local v14    # "rotatedBitmap":Landroid/graphics/Bitmap;
    .restart local v23    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v26    # "latestMedia":Lcom/sec/android/app/camera/interfaces/CameraContext$LatestMedia;
    :cond_13
    const/4 v3, 0x0

    :try_start_9
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailUri:Landroid/net/Uri;

    .line 181
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailOrientation:I

    .line 182
    const-string v3, "ThumbnailButton"

    const-string v4, "updateThumbnail.latest : initialized thumbnail because secure list is empty"

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 185
    :cond_14
    invoke-interface/range {v26 .. v26}, Lcom/sec/android/app/camera/interfaces/CameraContext$LatestMedia;->getUri()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 186
    invoke-interface/range {v26 .. v26}, Lcom/sec/android/app/camera/interfaces/CameraContext$LatestMedia;->isUsingCloudContent()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 187
    const-string v3, "ThumbnailButton"

    const-string v4, "updateThumbnail.latest is cloud contents"

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-interface/range {v26 .. v26}, Lcom/sec/android/app/camera/interfaces/CameraContext$LatestMedia;->getCloudThumbPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v23

    goto/16 :goto_1

    .line 190
    :cond_15
    invoke-interface/range {v26 .. v26}, Lcom/sec/android/app/camera/interfaces/CameraContext$LatestMedia;->getType()I

    move-result v3

    if-nez v3, :cond_17

    .line 191
    invoke-interface/range {v26 .. v26}, Lcom/sec/android/app/camera/interfaces/CameraContext$LatestMedia;->getMimeType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "image/x-adobe-dng"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 192
    const-string v3, "ThumbnailButton"

    const-string v4, "updateThumbnail.latest is DNG file"

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-interface/range {v26 .. v26}, Lcom/sec/android/app/camera/interfaces/CameraContext$LatestMedia;->getImagePath()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x8

    invoke-static {v3, v4}, Lcom/sec/android/app/camera/util/ImageUtils;->makeBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v23

    goto/16 :goto_1

    .line 195
    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-interface/range {v26 .. v26}, Lcom/sec/android/app/camera/interfaces/CameraContext$LatestMedia;->getId()J

    move-result-wide v8

    const/4 v4, 0x1

    const/4 v10, 0x0

    invoke-static {v3, v8, v9, v4, v10}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v23

    goto/16 :goto_1

    .line 198
    :cond_17
    invoke-interface/range {v26 .. v26}, Lcom/sec/android/app/camera/interfaces/CameraContext$LatestMedia;->getVideoThumbnail()Landroid/graphics/Bitmap;

    move-result-object v23

    goto/16 :goto_1

    .line 218
    .restart local v24    # "brokenImage":Z
    :cond_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailUri:Landroid/net/Uri;

    if-eqz v3, :cond_6

    .line 219
    const-string v3, "ThumbnailButton"

    const-string v4, "update : current uri has broken image"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMultiWindowMode()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1a

    .line 221
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-interface/range {v26 .. v26}, Lcom/sec/android/app/camera/interfaces/CameraContext$LatestMedia;->getType()I

    move-result v3

    if-nez v3, :cond_19

    const v3, 0x7f020108

    :goto_8
    invoke-static {v4, v3}, Lcom/sec/android/app/camera/util/ImageUtils;->getBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 225
    :goto_9
    const/16 v24, 0x1

    goto/16 :goto_2

    .line 221
    :cond_19
    const v3, 0x7f020111

    goto :goto_8

    .line 223
    :cond_1a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-interface/range {v26 .. v26}, Lcom/sec/android/app/camera/interfaces/CameraContext$LatestMedia;->getType()I

    move-result v3

    if-nez v3, :cond_1b

    const v3, 0x7f020107

    :goto_a
    invoke-static {v4, v3}, Lcom/sec/android/app/camera/util/ImageUtils;->getBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_9

    :cond_1b
    const v3, 0x7f020110

    goto :goto_a

    .line 244
    :cond_1c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailImage:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mIdxNewThumbnail:I

    aget-object v3, v3, v4

    if-eqz v3, :cond_8

    .line 245
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnail:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailImage:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mIdxNewThumbnail:I

    aget-object v4, v4, v8

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 246
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailImage:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mIdxNewThumbnail:I

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLImage;->clear()V

    .line 247
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailImage:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mIdxNewThumbnail:I

    const/4 v8, 0x0

    aput-object v8, v3, v4

    goto/16 :goto_3

    .line 269
    :cond_1d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailImage:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mIdxNewThumbnail:I

    new-instance v15, Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->THUMBNAIL_IMAGE_WIDTH:I

    int-to-float v0, v8

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->THUMBNAIL_IMAGE_HEIGHT:I

    int-to-float v0, v8

    move/from16 v20, v0

    move-object/from16 v21, v2

    invoke-direct/range {v15 .. v21}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLandroid/graphics/Bitmap;)V

    aput-object v15, v3, v4

    goto/16 :goto_4

    .line 286
    .restart local v25    # "defaultOrientation":I
    :cond_1e
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailOrientation:I

    add-int/lit16 v3, v3, 0x10e

    rem-int/lit16 v3, v3, 0x168

    div-int/lit8 v25, v3, 0x5a

    goto/16 :goto_5

    .line 289
    :cond_1f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v3

    if-nez v3, :cond_c

    .line 290
    const/16 v25, 0x3

    goto/16 :goto_5

    .line 294
    :cond_20
    if-nez v24, :cond_21

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailOrientation:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_21

    .line 295
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailOrientation:I

    div-int/lit8 v25, v3, 0x5a

    .line 297
    :cond_21
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailImage:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mIdxNewThumbnail:I

    aget-object v3, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLImage;->setRotatable(Z)V

    .line 298
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailImage:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mIdxNewThumbnail:I

    aget-object v3, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLImage;->setRotateAnimation(Z)V

    goto/16 :goto_5

    .line 334
    .end local v25    # "defaultOrientation":I
    :cond_22
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mFrameButton:Lcom/samsung/android/glview/GLButton;

    const v4, 0x7f020114

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v3, v4, v8, v9, v10}, Lcom/samsung/android/glview/GLButton;->setButtonResources(IIII)V

    goto/16 :goto_6

    .line 338
    :cond_23
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMultiWindowMode()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_24

    .line 339
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mFrameButton:Lcom/samsung/android/glview/GLButton;

    const v4, 0x7f020117

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v3, v4, v8, v9, v10}, Lcom/samsung/android/glview/GLButton;->setButtonResources(IIII)V

    .line 343
    :goto_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mFrameButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->THUMBNAIL_FRAME_WIDTH:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLButton;->setRippleDiameter(F)V

    goto/16 :goto_7

    .line 341
    :cond_24
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mFrameButton:Lcom/samsung/android/glview/GLButton;

    const v4, 0x7f020116

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v3, v4, v8, v9, v10}, Lcom/samsung/android/glview/GLButton;->setButtonResources(IIII)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_b
.end method

.method public declared-synchronized update(Landroid/graphics/Bitmap;IZ)V
    .locals 27
    .param p1, "data"    # Landroid/graphics/Bitmap;
    .param p2, "orientation"    # I
    .param p3, "needFlip"    # Z

    .prologue
    .line 352
    monitor-enter p0

    :try_start_0
    const-string v3, "AXLOG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateThumbnail**StartU["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]**"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    .line 468
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 357
    :cond_1
    const/4 v3, 0x0

    :try_start_1
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailUri:Landroid/net/Uri;

    .line 358
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailOrientation:I

    .line 360
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->THUMBNAIL_IMAGE_WIDTH:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->THUMBNAIL_IMAGE_HEIGHT:I

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 361
    .local v2, "croppedBitmap":Landroid/graphics/Bitmap;
    const/4 v14, 0x0

    .line 363
    .local v14, "rotatedBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 364
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 365
    .local v7, "matrix":Landroid/graphics/Matrix;
    if-eqz p3, :cond_2

    .line 366
    div-int/lit8 v3, p2, 0x5a

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_2

    .line 367
    move/from16 v0, p2

    add-int/lit16 v3, v0, 0xb4

    rem-int/lit16 v0, v3, 0x168

    move/from16 p2, v0

    .line 370
    :cond_2
    move/from16 v0, p2

    int-to-float v3, v0

    invoke-virtual {v7, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 371
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->THUMBNAIL_IMAGE_WIDTH:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->THUMBNAIL_IMAGE_HEIGHT:I

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 374
    .end local v7    # "matrix":Landroid/graphics/Matrix;
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailImage:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mIdxNewThumbnail:I

    aget-object v3, v3, v4

    if-eqz v3, :cond_5

    .line 375
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnail:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v3, :cond_4

    .line 376
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnail:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailImage:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mIdxNewThumbnail:I

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 377
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailImage:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mIdxNewThumbnail:I

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLImage;->clear()V

    .line 378
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailImage:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mIdxNewThumbnail:I

    const/4 v5, 0x0

    aput-object v5, v3, v4

    .line 381
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 382
    const/16 v25, 0x0

    .line 383
    .local v25, "x":I
    const/16 v26, 0x0

    .line 384
    .local v26, "y":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->THUMBNAIL_IMAGE_WIDTH:I

    move/from16 v24, v0

    .line 385
    .local v24, "width":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->THUMBNAIL_IMAGE_HEIGHT:I

    move/from16 v23, v0

    .line 388
    .local v23, "height":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMultiWindowMode()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    .line 389
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->THUMBNAIL_IMAGE_WIDTH:I

    int-to-float v3, v3

    const/high16 v4, 0x3f400000    # 0.75f

    mul-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    float-to-int v3, v3

    mul-int/lit8 v24, v3, 0x2

    .line 390
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->THUMBNAIL_IMAGE_HEIGHT:I

    int-to-float v3, v3

    const/high16 v4, 0x3f400000    # 0.75f

    mul-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    float-to-int v3, v3

    mul-int/lit8 v23, v3, 0x2

    .line 391
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->THUMBNAIL_IMAGE_WIDTH:I

    sub-int v3, v3, v24

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    float-to-int v0, v3

    move/from16 v25, v0

    .line 392
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->THUMBNAIL_IMAGE_HEIGHT:I

    sub-int v3, v3, v23

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    float-to-int v0, v3

    move/from16 v26, v0

    .line 394
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailImage:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mIdxNewThumbnail:I

    new-instance v8, Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v9

    move/from16 v0, v25

    int-to-float v10, v0

    move/from16 v0, v26

    int-to-float v11, v0

    move/from16 v0, v24

    int-to-float v12, v0

    move/from16 v0, v23

    int-to-float v13, v0

    invoke-direct/range {v8 .. v14}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLandroid/graphics/Bitmap;)V

    aput-object v8, v3, v4

    .line 399
    .end local v23    # "height":I
    .end local v24    # "width":I
    .end local v25    # "x":I
    .end local v26    # "y":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailImage:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mIdxNewThumbnail:I

    aget-object v3, v3, v4

    if-eqz v3, :cond_0

    .line 402
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailImage:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mIdxNewThumbnail:I

    aget-object v3, v3, v4

    const/16 v4, 0x3f1

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLImage;->setShaderProgram(I)V

    .line 404
    if-eqz p3, :cond_7

    .line 405
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailImage:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mIdxNewThumbnail:I

    aget-object v3, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLImage;->setFlip(Z)V

    .line 408
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailImage:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mIdxNewThumbnail:I

    aget-object v3, v3, v4

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/glview/GLImage;->setVisibility(IZ)V

    .line 409
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnail:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v3, :cond_8

    .line 410
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnail:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailImage:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mIdxNewThumbnail:I

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 413
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v3

    if-nez v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isKeyboardCoverCamera()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 414
    :cond_9
    move/from16 v0, p2

    add-int/lit16 v3, v0, 0x10e

    rem-int/lit16 v3, v3, 0x168

    div-int/lit8 p2, v3, 0x5a

    .line 422
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailImage:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mIdxNewThumbnail:I

    aget-object v3, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLImage;->setCenterPivot(Z)V

    .line 423
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v3

    if-nez v3, :cond_a

    .line 424
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailImage:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mIdxNewThumbnail:I

    aget-object v3, v3, v4

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/samsung/android/glview/GLImage;->setDefaultOrientation(I)V

    .line 427
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailImage:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mIdxNewThumbnail:I

    aget-object v3, v3, v4

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mViewToScale:Lcom/samsung/android/glview/GLView;

    .line 428
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton$1;-><init>(Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 446
    new-instance v22, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    move-object/from16 v0, v22

    invoke-direct {v0, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 447
    .local v22, "animSet":Landroid/view/animation/AnimationSet;
    const/4 v3, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 449
    const v3, 0x3f19999a    # 0.6f

    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->THUMBNAIL_ANIMATION_DURATION:I

    invoke-static {v3, v4, v5}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaAnimation(FFI)Landroid/view/animation/Animation;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 451
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailImage:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mIdxNewThumbnail:I

    aget-object v3, v3, v4

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 452
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailImage:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mIdxNewThumbnail:I

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 453
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailImage:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mIdxNewThumbnail:I

    aget-object v3, v3, v4

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 455
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mIsThumbnailExist:Z

    .line 457
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mIdxNewThumbnail:I

    add-int/lit8 v3, v3, 0x1

    rem-int/lit8 v3, v3, 0x2

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mIdxNewThumbnail:I

    .line 459
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMultiWindowMode()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_e

    .line 460
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mFrameButton:Lcom/samsung/android/glview/GLButton;

    const v4, 0x7f020117

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-virtual {v3, v4, v5, v6, v8}, Lcom/samsung/android/glview/GLButton;->setButtonResources(IIII)V

    .line 465
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mFrameButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->THUMBNAIL_FRAME_WIDTH:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLButton;->setRippleDiameter(F)V

    .line 466
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mFrameButton:Lcom/samsung/android/glview/GLButton;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    .line 467
    const-string v3, "AXLOG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateThumbnail**EndU["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]**"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 352
    .end local v2    # "croppedBitmap":Landroid/graphics/Bitmap;
    .end local v14    # "rotatedBitmap":Landroid/graphics/Bitmap;
    .end local v22    # "animSet":Landroid/view/animation/AnimationSet;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 396
    .restart local v2    # "croppedBitmap":Landroid/graphics/Bitmap;
    .restart local v14    # "rotatedBitmap":Landroid/graphics/Bitmap;
    :cond_b
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailImage:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mIdxNewThumbnail:I

    new-instance v15, Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->THUMBNAIL_IMAGE_WIDTH:I

    int-to-float v0, v5

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->THUMBNAIL_IMAGE_HEIGHT:I

    int-to-float v0, v5

    move/from16 v20, v0

    move-object/from16 v21, v2

    invoke-direct/range {v15 .. v21}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLandroid/graphics/Bitmap;)V

    aput-object v15, v3, v4

    goto/16 :goto_1

    .line 415
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 416
    div-int/lit8 p2, p2, 0x5a

    goto/16 :goto_2

    .line 418
    :cond_d
    div-int/lit8 p2, p2, 0x5a

    .line 419
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailImage:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mIdxNewThumbnail:I

    aget-object v3, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLImage;->setRotatable(Z)V

    .line 420
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mThumbnailImage:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mIdxNewThumbnail:I

    aget-object v3, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLImage;->setRotateAnimation(Z)V

    goto/16 :goto_2

    .line 462
    .restart local v22    # "animSet":Landroid/view/animation/AnimationSet;
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->mFrameButton:Lcom/samsung/android/glview/GLButton;

    const v4, 0x7f020116

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-virtual {v3, v4, v5, v6, v8}, Lcom/samsung/android/glview/GLButton;->setButtonResources(IIII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_3
.end method
