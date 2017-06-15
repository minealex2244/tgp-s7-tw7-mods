.class public Lcom/sec/android/app/camera/menu/Review;
.super Lcom/samsung/android/glview/GLViewGroup;
.source "Review.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$TouchListener;
.implements Lcom/samsung/android/glview/GLView$ClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/menu/Review$ReviewButtonListener;
    }
.end annotation


# static fields
.field public static final REVIEW_ALPHA_VALUE:F = 0.45f

.field private static REVIEW_DISPLAY_TIMEOUT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Review"


# instance fields
.field private final BASEMENU_GROUP_WIDTH:F

.field private final REVIEW_ANIMATION_DURATION:I

.field private final REVIEW_BUTTON_SIZE:F

.field private final REVIEW_GROUP_GAP:F

.field private final REVIEW_GROUP_HEIGHT:F

.field private final REVIEW_GROUP_WIDTH:F

.field private final REVIEW_NORMAL_HEIGHT:F

.field private final REVIEW_NORMAL_POS_X:F

.field private final REVIEW_NORMAL_WIDTH:F

.field private final REVIEW_SQUARE_POS_X:F

.field private final REVIEW_SQUARE_WIDTH:F

.field private final REVIEW_SUPER_WIDE_HEIGHT:F

.field private final REVIEW_SUPER_WIDE_WIDTH:F

.field private final REVIEW_TEXT_FONT_SIZE:F

.field private final REVIEW_TEXT_STROKE_COLOR:I

.field private final REVIEW_TEXT_STROKE_WIDTH:I

.field private final REVIEW_WIDE_HEIGHT:F

.field private final REVIEW_WIDE_POS_X:F

.field private final REVIEW_WIDE_POS_Y:F

.field private final REVIEW_WIDE_WIDTH:F

.field private final SCREEN_HEIGHT:F

.field private final SCREEN_WIDTH:F

.field private final SIDE_QUICK_SETTING_WIDTH:F

.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mCaptureFileName:Ljava/lang/String;

.field private mContentUri:Landroid/net/Uri;

.field private mCurrentType:I

.field private mDeleteButton:Lcom/samsung/android/glview/GLButton;

.field private mLaunchChooserRunnable:Ljava/lang/Runnable;

.field private mLaunchGalleryRunnable:Ljava/lang/Runnable;

.field private mLaunchGalleryType:Ljava/lang/String;

.field private mPopupLayoutController:Lcom/sec/android/app/camera/interfaces/PopupLayoutController;

.field private mReview:Lcom/samsung/android/glview/GLImage;

.field private mReviewBlackBackground:Lcom/samsung/android/glview/GLRectangle;

.field protected mReviewButtonListener:Lcom/sec/android/app/camera/menu/Review$ReviewButtonListener;

.field private mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mReviewHeight:F

.field private mReviewPosX:F

.field private mReviewPosY:F

.field private final mReviewTimeOutCallback:Ljava/lang/Runnable;

.field private mReviewUpdating:Z

.field private mReviewWidth:F

.field private mScreenOrientation:I

.field private mShadowPadding:Landroid/graphics/Rect;

.field private mShareButton:Lcom/samsung/android/glview/GLButton;

.field private mShareViaImageHeight:F

.field private mShareViaImageWidth:F

.field private mShareViaWorking:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const/16 v0, 0x7d0

    sput v0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_DISPLAY_TIMEOUT:I

    return-void
.end method

.method protected constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/PopupLayoutController;)V
    .locals 8
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "popupLayoutController"    # Lcom/sec/android/app/camera/interfaces/PopupLayoutController;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 135
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v0

    int-to-float v4, v0

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v0

    int-to-float v5, v0

    move-object v0, p0

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    .line 58
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/Review;->SCREEN_WIDTH:F

    .line 59
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/Review;->SCREEN_HEIGHT:F

    .line 60
    const v0, 0x7f0a0012

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/Review;->BASEMENU_GROUP_WIDTH:F

    .line 61
    const v0, 0x7f0a000f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/Review;->SIDE_QUICK_SETTING_WIDTH:F

    .line 62
    const v0, 0x7f0a004c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_SUPER_WIDE_WIDTH:F

    .line 63
    const v0, 0x7f0a004b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_SUPER_WIDE_HEIGHT:F

    .line 64
    const v0, 0x7f0a004e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_WIDE_WIDTH:F

    .line 65
    const v0, 0x7f0a004d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_WIDE_HEIGHT:F

    .line 66
    const v0, 0x7f0a004a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_SQUARE_WIDTH:F

    .line 67
    const v0, 0x7f0a0047

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_NORMAL_WIDTH:F

    .line 68
    const v0, 0x7f0a0045

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_NORMAL_HEIGHT:F

    .line 69
    const v0, 0x7f0a0048

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_WIDE_POS_X:F

    .line 70
    const v0, 0x7f0a0046

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_NORMAL_POS_X:F

    .line 71
    const v0, 0x7f0a0049

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_SQUARE_POS_X:F

    .line 72
    iget v0, p0, Lcom/sec/android/app/camera/menu/Review;->SCREEN_HEIGHT:F

    iget v1, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_WIDE_HEIGHT:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_WIDE_POS_Y:F

    .line 73
    const v0, 0x7f0a029d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_GROUP_WIDTH:F

    .line 74
    const v0, 0x7f0a029c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_GROUP_HEIGHT:F

    .line 75
    const v0, 0x7f0a029b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_GROUP_GAP:F

    .line 76
    const v0, 0x7f0a029a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_BUTTON_SIZE:F

    .line 77
    const v0, 0x7f0a0389

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_TEXT_FONT_SIZE:F

    .line 78
    const v0, 0x7f0b0013

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_ANIMATION_DURATION:I

    .line 79
    const v0, 0x7f0b0054

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_TEXT_STROKE_WIDTH:I

    .line 80
    const v0, 0x7f0d0048

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_TEXT_STROKE_COLOR:I

    .line 81
    iput-object v6, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewButtonListener:Lcom/sec/android/app/camera/menu/Review$ReviewButtonListener;

    .line 82
    iput-object v6, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 83
    iput-object v6, p0, Lcom/sec/android/app/camera/menu/Review;->mReview:Lcom/samsung/android/glview/GLImage;

    .line 84
    iput-object v6, p0, Lcom/sec/android/app/camera/menu/Review;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    .line 85
    iput-object v6, p0, Lcom/sec/android/app/camera/menu/Review;->mShareButton:Lcom/samsung/android/glview/GLButton;

    .line 86
    iput-object v6, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewBlackBackground:Lcom/samsung/android/glview/GLRectangle;

    .line 87
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mShadowPadding:Landroid/graphics/Rect;

    .line 89
    iput v2, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewWidth:F

    .line 90
    iput v2, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewHeight:F

    .line 91
    iput v2, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewPosX:F

    .line 92
    iput v2, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewPosY:F

    .line 93
    iput v2, p0, Lcom/sec/android/app/camera/menu/Review;->mShareViaImageWidth:F

    .line 94
    iput v2, p0, Lcom/sec/android/app/camera/menu/Review;->mShareViaImageHeight:F

    .line 95
    iput-boolean v7, p0, Lcom/sec/android/app/camera/menu/Review;->mShareViaWorking:Z

    .line 96
    iput v7, p0, Lcom/sec/android/app/camera/menu/Review;->mCurrentType:I

    .line 99
    new-instance v0, Lcom/sec/android/app/camera/menu/Review$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/menu/Review$1;-><init>(Lcom/sec/android/app/camera/menu/Review;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewTimeOutCallback:Ljava/lang/Runnable;

    .line 105
    iput-object v6, p0, Lcom/sec/android/app/camera/menu/Review;->mCaptureFileName:Ljava/lang/String;

    .line 106
    iput-object v6, p0, Lcom/sec/android/app/camera/menu/Review;->mContentUri:Landroid/net/Uri;

    .line 107
    const-string v0, "quickview"

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mLaunchGalleryType:Ljava/lang/String;

    .line 108
    iput-boolean v7, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewUpdating:Z

    .line 110
    new-instance v0, Lcom/sec/android/app/camera/menu/Review$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/menu/Review$2;-><init>(Lcom/sec/android/app/camera/menu/Review;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mLaunchGalleryRunnable:Ljava/lang/Runnable;

    .line 126
    new-instance v0, Lcom/sec/android/app/camera/menu/Review$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/menu/Review$3;-><init>(Lcom/sec/android/app/camera/menu/Review;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mLaunchChooserRunnable:Ljava/lang/Runnable;

    .line 137
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/Review;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 138
    iput-object p2, p0, Lcom/sec/android/app/camera/menu/Review;->mPopupLayoutController:Lcom/sec/android/app/camera/interfaces/PopupLayoutController;

    .line 140
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/Review;->mScreenOrientation:I

    .line 141
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/menu/Review;)Lcom/sec/android/app/camera/interfaces/PopupLayoutController;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/Review;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mPopupLayoutController:Lcom/sec/android/app/camera/interfaces/PopupLayoutController;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/menu/Review;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/Review;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mLaunchGalleryType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/camera/menu/Review;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/Review;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/Review;->mLaunchGalleryType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/menu/Review;)Lcom/sec/android/app/camera/interfaces/CameraContext;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/Review;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/menu/Review;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/Review;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mContentUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/menu/Review;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/Review;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewTimeOutCallback:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 53
    sget v0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_DISPLAY_TIMEOUT:I

    return v0
.end method

.method private addDeleteButton()V
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v12, 0x1

    const/high16 v11, 0x40000000    # 2.0f

    .line 464
    const-string v0, "Review"

    const-string v1, "addDeleteButton"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    new-instance v0, Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/Review;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v4, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_GROUP_WIDTH:F

    iget v5, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_GROUP_HEIGHT:F

    const v6, 0x7f0201da

    move v3, v2

    move v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    .line 474
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    iget v1, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_GROUP_WIDTH:F

    iget v3, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_BUTTON_SIZE:F

    sub-float/2addr v1, v3

    div-float/2addr v1, v11

    iget v3, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_GROUP_HEIGHT:F

    div-float/2addr v3, v11

    iget v4, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_BUTTON_SIZE:F

    sub-float/2addr v3, v4

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/glview/GLButton;->setResourceOffset(FF)Z

    .line 475
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f09015c

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget v3, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_TEXT_FONT_SIZE:F

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/Review;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v4

    mul-float/2addr v3, v4

    const v4, 0x7f0d0047

    .line 476
    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v4

    .line 475
    invoke-virtual {v0, v1, v3, v4, v7}, Lcom/samsung/android/glview/GLButton;->setText(Ljava/lang/String;FIZ)V

    .line 477
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v13, v12}, Lcom/samsung/android/glview/GLButton;->setTextAlign(II)V

    .line 478
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    iget v1, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_GROUP_HEIGHT:F

    div-float/2addr v1, v11

    iget v3, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_TEXT_FONT_SIZE:F

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/Review;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v4

    mul-float/2addr v3, v4

    div-float/2addr v3, v11

    add-float/2addr v1, v3

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/glview/GLButton;->setTextPosition(FF)V

    .line 479
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    iget v1, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_TEXT_STROKE_WIDTH:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_TEXT_STROKE_COLOR:I

    invoke-virtual {v0, v12, v1, v2}, Lcom/samsung/android/glview/GLButton;->setStroke(ZFI)V

    .line 480
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v12}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    .line 481
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    iget v1, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_GROUP_HEIGHT:F

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRippleDiameter(F)V

    .line 482
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v12}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 483
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v7}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 484
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setOrientation(I)V

    .line 485
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v12}, Lcom/samsung/android/glview/GLButton;->updateLayout(Z)V

    .line 486
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 488
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mReview:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_GROUP_GAP:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v11

    iget v1, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_GROUP_WIDTH:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mShadowPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float v9, v0, v1

    .line 491
    .local v9, "button_x":F
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mReview:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_GROUP_HEIGHT:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mShadowPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    add-float v10, v0, v1

    .line 492
    .local v10, "button_y":F
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v7, v9, v10}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 495
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mReview:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_GROUP_GAP:F

    add-float/2addr v0, v1

    div-float/2addr v0, v11

    iget v1, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_GROUP_WIDTH:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mShadowPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    add-float v9, v0, v1

    .line 496
    iget v0, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_GROUP_HEIGHT:F

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mShadowPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    add-float v10, v0, v1

    .line 497
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v13, v9, v10}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 500
    iget v0, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_GROUP_HEIGHT:F

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mShadowPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    add-float v9, v0, v1

    .line 501
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mReview:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_GROUP_GAP:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v11

    iget v1, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_GROUP_WIDTH:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mShadowPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float v10, v0, v1

    .line 502
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v12, v9, v10}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 505
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mReview:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_GROUP_HEIGHT:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mShadowPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    add-float v9, v0, v1

    .line 506
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mReview:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_GROUP_GAP:F

    add-float/2addr v0, v1

    div-float/2addr v0, v11

    iget v1, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_GROUP_WIDTH:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mShadowPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    add-float v10, v0, v1

    .line 507
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v9, v10}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 530
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 531
    return-void

    .line 510
    .end local v9    # "button_x":F
    .end local v10    # "button_y":F
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mReview:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_GROUP_GAP:F

    add-float/2addr v0, v1

    div-float/2addr v0, v11

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mShadowPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float v9, v0, v1

    .line 511
    .restart local v9    # "button_x":F
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mReview:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_GROUP_HEIGHT:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mShadowPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    add-float v10, v0, v1

    .line 512
    .restart local v10    # "button_y":F
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v7, v9, v10}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 515
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mReview:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_GROUP_GAP:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v11

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mShadowPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    add-float v9, v0, v1

    .line 516
    iget v0, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_GROUP_HEIGHT:F

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mShadowPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    add-float v10, v0, v1

    .line 517
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v13, v9, v10}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 520
    iget v0, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_GROUP_HEIGHT:F

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mShadowPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    add-float v9, v0, v1

    .line 521
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mReview:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_GROUP_GAP:F

    add-float/2addr v0, v1

    div-float/2addr v0, v11

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mShadowPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float v10, v0, v1

    .line 522
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v12, v9, v10}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 525
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mReview:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_GROUP_HEIGHT:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mShadowPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    add-float v9, v0, v1

    .line 526
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mReview:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_GROUP_GAP:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v11

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mShadowPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    add-float v10, v0, v1

    .line 527
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v9, v10}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    goto/16 :goto_0
.end method

.method private addShareButton()V
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v12, 0x1

    const/high16 v11, 0x40000000    # 2.0f

    .line 534
    const-string v0, "Review"

    const-string v1, "addShareButton"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    new-instance v0, Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/Review;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v4, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_GROUP_WIDTH:F

    iget v5, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_GROUP_HEIGHT:F

    const v6, 0x7f0201db

    move v3, v2

    move v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mShareButton:Lcom/samsung/android/glview/GLButton;

    .line 544
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mShareButton:Lcom/samsung/android/glview/GLButton;

    iget v1, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_GROUP_WIDTH:F

    iget v3, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_BUTTON_SIZE:F

    sub-float/2addr v1, v3

    div-float/2addr v1, v11

    iget v3, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_GROUP_HEIGHT:F

    div-float/2addr v3, v11

    iget v4, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_BUTTON_SIZE:F

    sub-float/2addr v3, v4

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/glview/GLButton;->setResourceOffset(FF)Z

    .line 545
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mShareButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f090228

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget v3, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_TEXT_FONT_SIZE:F

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/Review;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v4

    mul-float/2addr v3, v4

    const v4, 0x7f0d0047

    .line 546
    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v4

    .line 545
    invoke-virtual {v0, v1, v3, v4, v7}, Lcom/samsung/android/glview/GLButton;->setText(Ljava/lang/String;FIZ)V

    .line 547
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mShareButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v13, v12}, Lcom/samsung/android/glview/GLButton;->setTextAlign(II)V

    .line 548
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mShareButton:Lcom/samsung/android/glview/GLButton;

    iget v1, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_GROUP_HEIGHT:F

    div-float/2addr v1, v11

    iget v3, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_TEXT_FONT_SIZE:F

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/Review;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v4

    mul-float/2addr v3, v4

    div-float/2addr v3, v11

    add-float/2addr v1, v3

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/glview/GLButton;->setTextPosition(FF)V

    .line 549
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mShareButton:Lcom/samsung/android/glview/GLButton;

    iget v1, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_TEXT_STROKE_WIDTH:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_TEXT_STROKE_COLOR:I

    invoke-virtual {v0, v12, v1, v2}, Lcom/samsung/android/glview/GLButton;->setStroke(ZFI)V

    .line 550
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mShareButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v12}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    .line 551
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mShareButton:Lcom/samsung/android/glview/GLButton;

    iget v1, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_GROUP_HEIGHT:F

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRippleDiameter(F)V

    .line 552
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mShareButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v12}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 553
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mShareButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v7}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 554
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mShareButton:Lcom/samsung/android/glview/GLButton;

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setOrientation(I)V

    .line 555
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mShareButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v12}, Lcom/samsung/android/glview/GLButton;->updateLayout(Z)V

    .line 556
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mShareButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 558
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 560
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mReview:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_GROUP_GAP:F

    add-float/2addr v0, v1

    div-float/2addr v0, v11

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mShadowPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float v9, v0, v1

    .line 561
    .local v9, "button_x":F
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mReview:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_GROUP_HEIGHT:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mShadowPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    add-float v10, v0, v1

    .line 562
    .local v10, "button_y":F
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mShareButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v7, v9, v10}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 565
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mReview:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_GROUP_GAP:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v11

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mShadowPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    add-float v9, v0, v1

    .line 566
    iget v0, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_GROUP_HEIGHT:F

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mShadowPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    add-float v10, v0, v1

    .line 567
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mShareButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v13, v9, v10}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 570
    iget v0, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_GROUP_HEIGHT:F

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mShadowPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    add-float v9, v0, v1

    .line 571
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mReview:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_GROUP_GAP:F

    add-float/2addr v0, v1

    div-float/2addr v0, v11

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mShadowPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float v10, v0, v1

    .line 572
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mShareButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v12, v9, v10}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 575
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mReview:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_GROUP_HEIGHT:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mShadowPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    add-float v9, v0, v1

    .line 576
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mReview:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_GROUP_GAP:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v11

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mShadowPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    add-float v10, v0, v1

    .line 577
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mShareButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v9, v10}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 600
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mShareButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 601
    return-void

    .line 580
    .end local v9    # "button_x":F
    .end local v10    # "button_y":F
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mReview:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_GROUP_GAP:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v11

    iget v1, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_GROUP_WIDTH:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mShadowPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float v9, v0, v1

    .line 581
    .restart local v9    # "button_x":F
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mReview:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_GROUP_HEIGHT:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mShadowPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    add-float v10, v0, v1

    .line 582
    .restart local v10    # "button_y":F
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mShareButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v7, v9, v10}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 585
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mReview:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_GROUP_GAP:F

    add-float/2addr v0, v1

    div-float/2addr v0, v11

    iget v1, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_GROUP_WIDTH:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mShadowPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    add-float v9, v0, v1

    .line 586
    iget v0, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_GROUP_HEIGHT:F

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mShadowPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    add-float v10, v0, v1

    .line 587
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mShareButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v13, v9, v10}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 590
    iget v0, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_GROUP_HEIGHT:F

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mShadowPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    add-float v9, v0, v1

    .line 591
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mReview:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_GROUP_GAP:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v11

    iget v1, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_GROUP_WIDTH:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mShadowPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float v10, v0, v1

    .line 592
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mShareButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v12, v9, v10}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 595
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mReview:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_GROUP_HEIGHT:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mShadowPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    add-float v9, v0, v1

    .line 596
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mReview:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_GROUP_GAP:F

    add-float/2addr v0, v1

    div-float/2addr v0, v11

    iget v1, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_GROUP_WIDTH:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mShadowPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    add-float v10, v0, v1

    .line 597
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mShareButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v9, v10}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    goto/16 :goto_0
.end method

.method private resizeReviewWithAnimation()V
    .locals 14

    .prologue
    const/high16 v13, 0x40000000    # 2.0f

    const/4 v2, 0x0

    const/4 v6, 0x1

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    .line 604
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mReview:Lcom/samsung/android/glview/GLImage;

    if-nez v1, :cond_1

    .line 605
    :cond_0
    const-string v1, "Review"

    const-string v2, "resizeReviewWithAnimation : did not updated review image"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    :goto_0
    return-void

    .line 610
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 611
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/Review;->mShareButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 612
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/Review;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 613
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/Review;->mReview:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 614
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLViewGroup;->clear()V

    .line 615
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 617
    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/Review;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v4, p0, Lcom/sec/android/app/camera/menu/Review;->SCREEN_WIDTH:F

    iget v5, p0, Lcom/sec/android/app/camera/menu/Review;->SCREEN_HEIGHT:F

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 618
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/Review;->mReview:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 619
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/menu/Review;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 621
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mReview:Lcom/samsung/android/glview/GLImage;

    iget v2, p0, Lcom/sec/android/app/camera/menu/Review;->mShareViaImageWidth:F

    iget v3, p0, Lcom/sec/android/app/camera/menu/Review;->mShareViaImageHeight:F

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLImage;->setSize(FF)V

    .line 622
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mReview:Lcom/samsung/android/glview/GLImage;

    iget v2, p0, Lcom/sec/android/app/camera/menu/Review;->SCREEN_WIDTH:F

    iget v3, p0, Lcom/sec/android/app/camera/menu/Review;->mShareViaImageWidth:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v13

    iget v3, p0, Lcom/sec/android/app/camera/menu/Review;->SCREEN_HEIGHT:F

    iget v4, p0, Lcom/sec/android/app/camera/menu/Review;->mShareViaImageHeight:F

    sub-float/2addr v3, v4

    div-float/2addr v3, v13

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLImage;->moveBaseLayoutAbsolute(FF)V

    .line 624
    iput-boolean v6, p0, Lcom/sec/android/app/camera/menu/Review;->mShareViaWorking:Z

    .line 626
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewBlackBackground:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v1, :cond_2

    .line 627
    new-instance v8, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3ee66666    # 0.45f

    invoke-direct {v8, v1, v12}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 628
    .local v8, "alphaAnim":Landroid/view/animation/Animation;
    invoke-virtual {v8, v6}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 629
    iget v1, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_ANIMATION_DURATION:I

    int-to-long v2, v1

    invoke-virtual {v8, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 631
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewBlackBackground:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v1, v8}, Lcom/samsung/android/glview/GLRectangle;->setAnimation(Landroid/view/animation/Animation;)V

    .line 632
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewBlackBackground:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLRectangle;->startAnimation()V

    .line 635
    .end local v8    # "alphaAnim":Landroid/view/animation/Animation;
    :cond_2
    iget v1, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewWidth:F

    iget v2, p0, Lcom/sec/android/app/camera/menu/Review;->SCREEN_WIDTH:F

    div-float v11, v1, v2

    .line 636
    .local v11, "reviewScaleWidth":F
    iget v1, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewHeight:F

    iget v2, p0, Lcom/sec/android/app/camera/menu/Review;->SCREEN_HEIGHT:F

    div-float v10, v1, v2

    .line 637
    .local v10, "reviewScaleHeight":F
    cmpl-float v1, v11, v10

    if-lez v1, :cond_3

    move v0, v11

    .line 639
    .local v0, "aniScale":F
    :goto_1
    new-instance v9, Landroid/view/animation/AnimationSet;

    invoke-direct {v9, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 640
    .local v9, "reviewAnimationSet":Landroid/view/animation/AnimationSet;
    invoke-virtual {v9, v6}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 641
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    new-instance v5, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;

    invoke-direct {v5}, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;-><init>()V

    iget v6, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_ANIMATION_DURATION:I

    move v1, v12

    move v2, v0

    move v3, v12

    invoke-static/range {v0 .. v7}, Lcom/sec/android/app/camera/util/AnimationUtil;->getScaleAnimation(FFFFLcom/samsung/android/glview/GLView;Landroid/view/animation/Interpolator;II)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 643
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v9}, Lcom/samsung/android/glview/GLViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    .line 644
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLViewGroup;->startAnimation()V

    .line 645
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v7, v7}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(IZ)V

    goto/16 :goto_0

    .end local v0    # "aniScale":F
    .end local v9    # "reviewAnimationSet":Landroid/view/animation/AnimationSet;
    :cond_3
    move v0, v10

    .line 637
    goto :goto_1
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 145
    const-string v0, "Review"

    const-string v1, "clear"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewTimeOutCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 148
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mLaunchChooserRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 149
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mLaunchGalleryRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewBlackBackground:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewBlackBackground:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/Review;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 154
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewBlackBackground:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLRectangle;->clear()V

    .line 155
    iput-object v2, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewBlackBackground:Lcom/samsung/android/glview/GLRectangle;

    .line 158
    :cond_1
    iput-object v2, p0, Lcom/sec/android/app/camera/menu/Review;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 159
    invoke-super {p0}, Lcom/samsung/android/glview/GLViewGroup;->clear()V

    .line 160
    return-void
.end method

.method public getCaptureFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mCaptureFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mContentUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lcom/sec/android/app/camera/menu/Review;->mCurrentType:I

    return v0
.end method

.method public hideReview()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 175
    const-string v0, "Review"

    const-string v1, "hideReview"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewBlackBackground:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewBlackBackground:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    .line 183
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/Review;->mShareViaWorking:Z

    .line 184
    return-void
.end method

.method protected isReviewUpdating()Z
    .locals 1

    .prologue
    .line 449
    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewUpdating:Z

    return v0
.end method

.method protected isShareViaWorking()Z
    .locals 1

    .prologue
    .line 453
    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/Review;->mShareViaWorking:Z

    return v0
.end method

.method protected launchGallery()V
    .locals 2

    .prologue
    .line 457
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mLaunchGalleryRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 459
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mLaunchGalleryRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 461
    :cond_0
    return-void
.end method

.method public onClick(Lcom/samsung/android/glview/GLView;)Z
    .locals 1
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 188
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    const-string v0, "1053"

    invoke-static {v0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewButtonListener:Lcom/sec/android/app/camera/menu/Review$ReviewButtonListener;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewButtonListener:Lcom/sec/android/app/camera/menu/Review$ReviewButtonListener;

    invoke-interface {v0}, Lcom/sec/android/app/camera/menu/Review$ReviewButtonListener;->onDeleteClicked()V

    .line 199
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 193
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mShareButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    const-string v0, "1052"

    invoke-static {v0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewButtonListener:Lcom/sec/android/app/camera/menu/Review$ReviewButtonListener;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewButtonListener:Lcom/sec/android/app/camera/menu/Review$ReviewButtonListener;

    invoke-interface {v0}, Lcom/sec/android/app/camera/menu/Review$ReviewButtonListener;->onShareClicked()V

    goto :goto_0
.end method

.method public onOrientationChanged(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    .line 204
    const-string v0, "Review"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOrientationChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget v0, p0, Lcom/sec/android/app/camera/menu/Review;->mScreenOrientation:I

    if-eq v0, p1, :cond_0

    .line 206
    iput p1, p0, Lcom/sec/android/app/camera/menu/Review;->mScreenOrientation:I

    .line 207
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mPopupLayoutController:Lcom/sec/android/app/camera/interfaces/PopupLayoutController;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/PopupLayoutController;->hideReview(Z)V

    .line 210
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLViewGroup;->onOrientationChanged(I)V

    .line 211
    return-void
.end method

.method public onTouch(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 215
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mReview:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mReview:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->isVisible()I

    move-result v0

    if-nez v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->isAnimationFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 237
    :cond_0
    :goto_0
    return v2

    .line 219
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/Review;->isShareViaWorking()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 220
    const-string v0, "Review"

    const-string v1, "return because ShareVia is working"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 223
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 224
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewBlackBackground:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 225
    const-string v0, "1054"

    invoke-static {v0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mPopupLayoutController:Lcom/sec/android/app/camera/interfaces/PopupLayoutController;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/PopupLayoutController;->hideReview(Z)V

    goto :goto_0

    .line 228
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mReview:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    const-string v0, "1051"

    invoke-static {v0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    .line 230
    const-string v0, "reviewon"

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mLaunchGalleryType:Ljava/lang/String;

    .line 231
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/Review;->hideReview()V

    .line 232
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/Review;->launchGallery()V

    goto :goto_0
.end method

.method public removeReviewTimeOutCallback()V
    .locals 2

    .prologue
    .line 241
    const-string v0, "Review"

    const-string v1, "removeReviewTimeOutCallback"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewTimeOutCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 243
    return-void
.end method

.method public setReviewButtonListener(Lcom/sec/android/app/camera/menu/Review$ReviewButtonListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/android/app/camera/menu/Review$ReviewButtonListener;

    .prologue
    .line 246
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewButtonListener:Lcom/sec/android/app/camera/menu/Review$ReviewButtonListener;

    .line 247
    return-void
.end method

.method public startShareViaAnimation()V
    .locals 4

    .prologue
    .line 250
    const-string v0, "Review"

    const-string v1, "startShareViaAnimation"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/Review;->resizeReviewWithAnimation()V

    .line 253
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mLaunchChooserRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 254
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review;->mLaunchChooserRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_ANIMATION_DURATION:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 255
    return-void
.end method

.method public startShowReviewAnimation()V
    .locals 10

    .prologue
    const/4 v4, 0x1

    const v0, 0x3fb33333    # 1.4f

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    .line 258
    const-string v2, "Review"

    const-string v3, "startShowReviewAnimation"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-nez v2, :cond_0

    .line 261
    const-string v0, "Review"

    const-string v1, "startShowReviewAnimation : did not updated ReviewGroup"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :goto_0
    return-void

    .line 265
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewBlackBackground:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v2, :cond_1

    .line 266
    new-instance v8, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const v3, 0x3ee66666    # 0.45f

    invoke-direct {v8, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 267
    .local v8, "alphaAnim":Landroid/view/animation/Animation;
    invoke-virtual {v8, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 268
    iget v2, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_ANIMATION_DURATION:I

    int-to-long v2, v2

    invoke-virtual {v8, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 270
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewBlackBackground:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v2, v8}, Lcom/samsung/android/glview/GLRectangle;->setAnimation(Landroid/view/animation/Animation;)V

    .line 271
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewBlackBackground:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLRectangle;->startAnimation()V

    .line 272
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewBlackBackground:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v2, v7, v7}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(IZ)V

    .line 275
    .end local v8    # "alphaAnim":Landroid/view/animation/Animation;
    :cond_1
    new-instance v9, Landroid/view/animation/AnimationSet;

    invoke-direct {v9, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 276
    .local v9, "reviewAnimationSet":Landroid/view/animation/AnimationSet;
    invoke-virtual {v9, v4}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 277
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    new-instance v5, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v5}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    sget v6, Lcom/sec/android/app/camera/util/AnimationUtil;->DURATION_NORMAL:I

    move v2, v0

    move v3, v1

    invoke-static/range {v0 .. v7}, Lcom/sec/android/app/camera/util/AnimationUtil;->getScaleAnimation(FFFFLcom/samsung/android/glview/GLView;Landroid/view/animation/Interpolator;II)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 278
    iget v0, p0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_ANIMATION_DURATION:I

    invoke-static {v0}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation(I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 279
    new-instance v0, Lcom/sec/android/app/camera/menu/Review$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/menu/Review$4;-><init>(Lcom/sec/android/app/camera/menu/Review;)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 298
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v9}, Lcom/samsung/android/glview/GLViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    .line 299
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->startAnimation()V

    .line 301
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v7, v7}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(IZ)V

    .line 303
    invoke-virtual {p0, v7}, Lcom/sec/android/app/camera/menu/Review;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateReview(Landroid/graphics/Bitmap;ILjava/lang/String;Landroid/net/Uri;)V
    .locals 18
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "orientation"    # I
    .param p3, "captureFileName"    # Ljava/lang/String;
    .param p4, "contentUri"    # Landroid/net/Uri;

    .prologue
    .line 307
    const-string v2, "AXLOG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateReview**StartU["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]**"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 309
    .local v16, "startTime":J
    if-nez p1, :cond_0

    .line 310
    const-string v2, "Review"

    const-string v3, "bitmap is null!"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :goto_0
    return-void

    .line 314
    :cond_0
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewUpdating:Z

    .line 316
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/Review;->mReview:Lcom/samsung/android/glview/GLImage;

    if-eqz v2, :cond_1

    .line 317
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/Review;->mReview:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 318
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/Review;->mReview:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLImage;->clear()V

    .line 319
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/Review;->mReview:Lcom/samsung/android/glview/GLImage;

    .line 322
    :cond_1
    const/4 v14, 0x0

    .line 323
    .local v14, "needToRotateReview":Z
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/Review;->mScreenOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    const/16 v2, 0x5a

    move/from16 v0, p2

    if-eq v0, v2, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/Review;->mScreenOrientation:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    const/16 v2, 0x10e

    move/from16 v0, p2

    if-ne v0, v2, :cond_4

    .line 324
    :cond_3
    const-string v2, "Review"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateReview : this review should be rotated. mScreenOrientation ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/Review;->mScreenOrientation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", orientation="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    const/4 v14, 0x1

    .line 328
    :cond_4
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/menu/Review;->mCaptureFileName:Ljava/lang/String;

    .line 329
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/menu/Review;->mContentUri:Landroid/net/Uri;

    .line 331
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/util/Util;->getAspectRatio(II)D

    move-result-wide v12

    .line 332
    .local v12, "aspectRatio":D
    invoke-static {v12, v13}, Lcom/sec/android/app/camera/util/Util;->getAspectRatioType(D)I

    move-result v11

    .line 334
    .local v11, "aspectRatioType":I
    packed-switch v11, :pswitch_data_0

    .line 364
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-le v2, v3, :cond_e

    .line 365
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_NORMAL_WIDTH:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewWidth:F

    .line 366
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_NORMAL_WIDTH:F

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewHeight:F

    .line 374
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewWidth:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/Review;->SCREEN_HEIGHT:F

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewHeight:F

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/Review;->mShareViaImageWidth:F

    .line 375
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/Review;->SCREEN_HEIGHT:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/Review;->mShareViaImageHeight:F

    .line 377
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewBlackBackground:Lcom/samsung/android/glview/GLRectangle;

    if-nez v2, :cond_5

    .line 378
    new-instance v2, Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/Review;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/Review;->SCREEN_WIDTH:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/Review;->SCREEN_HEIGHT:F

    const v8, 0x7f0d000c

    invoke-static {v8}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v8

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x1

    invoke-direct/range {v2 .. v10}, Lcom/samsung/android/glview/GLRectangle;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIFI)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewBlackBackground:Lcom/samsung/android/glview/GLRectangle;

    .line 380
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewBlackBackground:Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLRectangle;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 381
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewBlackBackground:Lcom/samsung/android/glview/GLRectangle;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(IZ)V

    .line 382
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewBlackBackground:Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/Review;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 385
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v2, :cond_6

    .line 386
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/Review;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 387
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLViewGroup;->clear()V

    .line 388
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 391
    :cond_6
    new-instance v2, Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/Review;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/Review;->SCREEN_WIDTH:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/Review;->SCREEN_HEIGHT:F

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 392
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const v3, 0x7f0201df

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setNinePatchBackground(I)Z

    .line 393
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLViewGroup;->getPaddings()Landroid/graphics/Rect;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/Review;->mShadowPadding:Landroid/graphics/Rect;

    .line 394
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/Review;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 396
    if-eqz v14, :cond_7

    .line 397
    const/16 v2, 0xb4

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lcom/sec/android/app/camera/util/ImageUtils;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 399
    :cond_7
    new-instance v2, Lcom/samsung/android/glview/GLImage;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/Review;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/Review;->mShareViaImageWidth:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/Review;->mShareViaImageHeight:F

    move-object/from16 v8, p1

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLandroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/Review;->mReview:Lcom/samsung/android/glview/GLImage;

    .line 400
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/Review;->mReview:Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLImage;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 401
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/Review;->mReview:Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setClickable(Z)V

    .line 402
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/Review;->mReview:Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setFocusable(Z)V

    .line 403
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/Review;->mReview:Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/Review;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0900ea

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setTitle(Ljava/lang/String;)V

    .line 405
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_WIDE_POS_Y:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_WIDE_HEIGHT:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewHeight:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewPosY:F

    .line 406
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/Review;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isKeyboardCoverCamera()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 407
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/Review;->SCREEN_WIDTH:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewWidth:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewPosX:F

    .line 420
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/Review;->mReview:Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewWidth:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewHeight:F

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLImage;->setSize(FF)V

    .line 421
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/Review;->mReview:Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/Review;->mShadowPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/Review;->mShadowPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLImage;->moveBaseLayoutAbsolute(FF)V

    .line 423
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(IZ)V

    .line 424
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewWidth:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/Review;->mShadowPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/Review;->mShadowPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewHeight:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/Review;->mShadowPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/Review;->mShadowPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 425
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/Review;->mReview:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 426
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewPosX:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/Review;->mShadowPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewPosY:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/Review;->mShadowPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->moveBaseLayoutAbsolute(FF)V

    .line 429
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/Review;->mShareButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v2, :cond_8

    .line 430
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/Review;->mShareButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 431
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/Review;->mShareButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLButton;->clear()V

    .line 432
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/Review;->mShareButton:Lcom/samsung/android/glview/GLButton;

    .line 434
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/Review;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSecureCamera()Z

    move-result v2

    if-nez v2, :cond_9

    .line 435
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/Review;->addShareButton()V

    .line 438
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/Review;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v2, :cond_a

    .line 439
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/Review;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 440
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/Review;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLButton;->clear()V

    .line 441
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/Review;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    .line 443
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/Review;->addDeleteButton()V

    .line 444
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewUpdating:Z

    .line 445
    const-string v2, "AXLOG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateReview**EndU["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]** "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v16

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 336
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-le v2, v3, :cond_b

    .line 337
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_SUPER_WIDE_WIDTH:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewWidth:F

    .line 338
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_SUPER_WIDE_WIDTH:F

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewHeight:F

    goto/16 :goto_1

    .line 340
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_SUPER_WIDE_HEIGHT:F

    mul-float/2addr v2, v3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewWidth:F

    .line 341
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_SUPER_WIDE_HEIGHT:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewHeight:F

    goto/16 :goto_1

    .line 345
    :pswitch_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/Review;->mCurrentType:I

    if-nez v2, :cond_d

    .line 346
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-le v2, v3, :cond_c

    .line 347
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_WIDE_WIDTH:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewWidth:F

    .line 348
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_WIDE_WIDTH:F

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewHeight:F

    goto/16 :goto_1

    .line 350
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_WIDE_HEIGHT:F

    mul-float/2addr v2, v3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewWidth:F

    .line 351
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_WIDE_HEIGHT:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewHeight:F

    goto/16 :goto_1

    .line 354
    :cond_d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_WIDE_WIDTH:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewWidth:F

    .line 355
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_WIDE_HEIGHT:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewHeight:F

    goto/16 :goto_1

    .line 359
    :pswitch_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_SQUARE_WIDTH:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewWidth:F

    .line 360
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_SQUARE_WIDTH:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewHeight:F

    goto/16 :goto_1

    .line 368
    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_NORMAL_HEIGHT:F

    mul-float/2addr v2, v3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewWidth:F

    .line 369
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_NORMAL_HEIGHT:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewHeight:F

    goto/16 :goto_1

    .line 409
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/Review;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->isWideResolution(I)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 410
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_WIDE_POS_X:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_WIDE_WIDTH:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewWidth:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewPosX:F

    goto/16 :goto_2

    .line 411
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/Review;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->isSquareResolution(I)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 412
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_SQUARE_POS_X:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_SQUARE_WIDTH:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewWidth:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewPosX:F

    goto/16 :goto_2

    .line 413
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/Review;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->isSuperWideResolution(I)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 414
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/Review;->SIDE_QUICK_SETTING_WIDTH:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/Review;->SCREEN_WIDTH:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/Review;->SIDE_QUICK_SETTING_WIDTH:F

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/Review;->BASEMENU_GROUP_WIDTH:F

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewWidth:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewPosX:F

    goto/16 :goto_2

    .line 416
    :cond_12
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_NORMAL_POS_X:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/Review;->REVIEW_NORMAL_WIDTH:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewWidth:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/Review;->mReviewPosX:F

    goto/16 :goto_2

    .line 334
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
