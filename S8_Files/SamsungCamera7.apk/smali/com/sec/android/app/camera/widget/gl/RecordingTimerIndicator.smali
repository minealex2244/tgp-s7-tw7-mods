.class public Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;
.super Lcom/samsung/android/glview/GLViewGroup;
.source "RecordingTimerIndicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator$RecordingHandler;
    }
.end annotation


# static fields
.field private static final BLINK_REC_INDICATOR_INTERVAL:I = 0x1f4

.field private static final RECORDING_MSG_BLINK_INDICATOR_REC_ICON:I = 0x1

.field private static final RECORDING_MSG_BLINK_INDICATOR_REC_TIME:I = 0x2

.field private static final TAG:Ljava/lang/String; = "RecordingTimerIndicator"


# instance fields
.field private final COVER_INDICATOR_POS_X:I

.field private final COVER_RECORDING_INDICATOR_GROUP_HEIGHT:I

.field private final COVER_RECORDING_REC_TIME_TEXT_COLOR:I

.field private final COVER_REC_ICON_WIDTH:I

.field private final COVER_REC_SIZE_TEXT_SIZE:I

.field private final RECORDING_MODE_TEXT_SHADOW:Z

.field private final RECORDING_MODE_TEXT_SHADOW_OFFSET:I

.field private final RECORDING_REC_ICON_WIDTH:I

.field private final RECORDING_REC_TIME_GROUP_1_1_RATIO_MARGIN:I

.field private final RECORDING_REC_TIME_GROUP_4_3_RATIO_MARGIN:I

.field private final RECORDING_REC_TIME_GROUP_BOTTOM_MARGIN:I

.field private final RECORDING_REC_TIME_GROUP_HEIGHT:I

.field private final RECORDING_REC_TIME_GROUP_POS_Y:I

.field private final RECORDING_REC_TIME_GROUP_RATIO_BOTTOM_MARGIN:I

.field private final RECORDING_REC_TIME_TEXT_HEIGHT:I

.field private final RECORDING_REC_TIME_TEXT_POS_X:I

.field private final RECORDING_REC_TIME_TEXT_STROKE_COLOR:I

.field private final RECORDING_REC_TIME_TEXT_STROKE_WIDTH:I

.field private final REC_INDICATOR_TEXT_SIZE:F

.field private final SCREEN_HEIGHT:I

.field private final SCREEN_WIDTH:I

.field private mBlinkCount:I

.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mCoverIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

.field private mCoverIndicatorRecGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mCoverIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

.field private mCoverIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

.field private mCoverIndicatorRemainRecGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mCoverIndicatorRemainRecTimeText:Lcom/samsung/android/glview/GLText;

.field private mIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

.field private mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

.field private mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

.field private mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

.field private mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mIsRecordingTimeLimited:Z

.field private mMaxRecordingTimeInSecond:I

.field private mRecordingTimerIndicatorHandler:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator$RecordingHandler;

.field private mRemainRecordingTime:Ljava/lang/String;

.field private mTextAnimation:Landroid/view/animation/AlphaAnimation;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;)V
    .locals 5
    .param p1, "context"    # Lcom/sec/android/app/camera/interfaces/CameraContext;

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 105
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;)V

    .line 48
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->SCREEN_WIDTH:I

    .line 49
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->SCREEN_HEIGHT:I

    .line 51
    const v2, 0x7f0a0147

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_GROUP_HEIGHT:I

    .line 52
    const v2, 0x7f0a0146

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_GROUP_BOTTOM_MARGIN:I

    .line 53
    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->SCREEN_HEIGHT:I

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_GROUP_BOTTOM_MARGIN:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_GROUP_HEIGHT:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_GROUP_POS_Y:I

    .line 54
    const v2, 0x7f0a0144

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_GROUP_1_1_RATIO_MARGIN:I

    .line 55
    const v2, 0x7f0a0145

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_GROUP_4_3_RATIO_MARGIN:I

    .line 56
    const v2, 0x7f0a0148

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_GROUP_RATIO_BOTTOM_MARGIN:I

    .line 57
    const v2, 0x7f0a01c0

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_ICON_WIDTH:I

    .line 58
    const v2, 0x7f0a01c2

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_TEXT_POS_X:I

    .line 59
    const v2, 0x7f0a01c1

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_TEXT_HEIGHT:I

    .line 60
    const v2, 0x7f0b0053

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_TEXT_STROKE_WIDTH:I

    .line 61
    const v2, 0x7f0d0045

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_TEXT_STROKE_COLOR:I

    .line 62
    const v2, 0x7f0a02b4

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->REC_INDICATOR_TEXT_SIZE:F

    .line 63
    const v2, 0x7f0b0030

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_MODE_TEXT_SHADOW_OFFSET:I

    .line 64
    const v2, 0x7f0b002f

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_MODE_TEXT_SHADOW:Z

    .line 65
    const v0, 0x7f0a02ef

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->COVER_REC_ICON_WIDTH:I

    .line 66
    const v0, 0x7f0a027a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->COVER_RECORDING_INDICATOR_GROUP_HEIGHT:I

    .line 67
    const v0, 0x7f0a0104

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->COVER_INDICATOR_POS_X:I

    .line 68
    const v0, 0x7f0a02ed

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->COVER_REC_SIZE_TEXT_SIZE:I

    .line 69
    const v0, 0x7f0d000b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->COVER_RECORDING_REC_TIME_TEXT_COLOR:I

    .line 87
    iput-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mTextAnimation:Landroid/view/animation/AlphaAnimation;

    .line 91
    iput-boolean v1, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIsRecordingTimeLimited:Z

    .line 94
    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mBlinkCount:I

    .line 96
    iput-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 97
    iput-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 107
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 108
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 110
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->initIndicator()V

    .line 111
    return-void

    :cond_0
    move v0, v1

    .line 64
    goto :goto_0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->blinkRecIconIndicator(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->blinkRecTimeIndicator(Z)V

    return-void
.end method

.method private blinkRecIconIndicator(Z)V
    .locals 5
    .param p1, "isShow"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x4

    .line 339
    const-string v0, "RecordingTimerIndicator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "blinkRecIconIndicator : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mRecordingTimerIndicatorHandler:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator$RecordingHandler;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mRecordingTimerIndicatorHandler:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator$RecordingHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator$RecordingHandler;->removeMessages(I)V

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 344
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 345
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 356
    :goto_0
    return-void

    .line 347
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    goto :goto_0

    .line 350
    :cond_2
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 351
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    goto :goto_0

    .line 353
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    goto :goto_0
.end method

.method private blinkRecTimeIndicator(Z)V
    .locals 5
    .param p1, "isShow"    # Z

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 365
    const-string v0, "RecordingTimerIndicator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "blinkRecTimeIndicator : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mRecordingTimerIndicatorHandler:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator$RecordingHandler;

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mRecordingTimerIndicatorHandler:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator$RecordingHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator$RecordingHandler;->removeMessages(I)V

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 371
    if-eqz p1, :cond_1

    .line 372
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRemainRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 383
    :goto_0
    return-void

    .line 374
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRemainRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    goto :goto_0

    .line 377
    :cond_2
    if-eqz p1, :cond_3

    .line 378
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    goto :goto_0

    .line 380
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    goto :goto_0
.end method

.method private getRecordingTimeText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "recordingTime"    # Ljava/lang/String;
    .param p2, "remainTime"    # Ljava/lang/String;

    .prologue
    .line 393
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 396
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private initIndicator()V
    .locals 38

    .prologue
    .line 404
    new-instance v2, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator$RecordingHandler;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator$RecordingHandler;-><init>(Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mRecordingTimerIndicatorHandler:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator$RecordingHandler;

    .line 406
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->REC_INDICATOR_TEXT_SIZE:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/util/RecordingUtil;->getHMSFormatStringWidth(F)F

    move-result v11

    .line 407
    .local v11, "recTimeTextWidth":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v2, v2

    add-float v6, v2, v11

    .line 408
    .local v6, "recTimeGroupWidth":F
    new-instance v2, Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_GROUP_HEIGHT:I

    int-to-float v7, v7

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 410
    new-instance v2, Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v7, 0x7f0201d9

    invoke-direct {v2, v3, v4, v5, v7}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    .line 411
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 412
    new-instance v2, Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v7, 0x7f0201d8

    invoke-direct {v2, v3, v4, v5, v7}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    .line 413
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 415
    new-instance v7, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v8

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_TEXT_POS_X:I

    int-to-float v9, v2

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_TEXT_HEIGHT:I

    int-to-float v12, v2

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/util/RecordingUtil;->convertToHMSFormat(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->REC_INDICATOR_TEXT_SIZE:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 416
    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v3

    mul-float v14, v2, v3

    invoke-direct/range {v7 .. v14}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;F)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    .line 417
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoCondensedFont()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    .line 418
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 419
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_TEXT_STROKE_WIDTH:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_TEXT_STROKE_COLOR:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 420
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setShadowVisibility(Z)V

    .line 421
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 423
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 424
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 425
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 427
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 429
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->REC_INDICATOR_TEXT_SIZE:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/util/RecordingUtil;->getMSFormatStringWidth(F)F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    const-string v3, " / "

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->REC_INDICATOR_TEXT_SIZE:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 430
    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v5

    mul-float/2addr v4, v5

    .line 429
    invoke-static {v3, v4}, Lcom/sec/android/app/camera/util/Util;->getStringWidth(Ljava/lang/String;F)F

    move-result v3

    add-float v37, v2, v3

    .line 431
    .local v37, "recRemainTimeTextWidth":F
    new-instance v12, Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v2, v2

    add-float v16, v2, v37

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_GROUP_HEIGHT:I

    int-to-float v0, v2

    move/from16 v17, v0

    invoke-direct/range {v12 .. v17}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 432
    new-instance v12, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v13

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_TEXT_POS_X:I

    int-to-float v14, v2

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_TEXT_HEIGHT:I

    int-to-float v0, v2

    move/from16 v17, v0

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/util/RecordingUtil;->convertToMSFormat(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->REC_INDICATOR_TEXT_SIZE:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 433
    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v3

    mul-float v19, v2, v3

    move/from16 v16, v37

    invoke-direct/range {v12 .. v19}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;F)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    .line 434
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoCondensedFont()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    .line 435
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 436
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 437
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_TEXT_STROKE_WIDTH:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_TEXT_STROKE_COLOR:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 438
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_MODE_TEXT_SHADOW:Z

    if-eqz v2, :cond_1

    .line 439
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_MODE_TEXT_SHADOW_OFFSET:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_MODE_TEXT_SHADOW_OFFSET:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setShadowOffset(FF)V

    .line 443
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-static {}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation()Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    .line 445
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 446
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 447
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 449
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 451
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->COVER_CAMERA_RECORDING:Z

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 452
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->COVER_REC_SIZE_TEXT_SIZE:I

    int-to-float v2, v2

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/util/RecordingUtil;->getHMSFormatStringWidth(F)F

    move-result v21

    .line 453
    .local v21, "coverRecTimeTextWidth":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->COVER_REC_ICON_WIDTH:I

    int-to-float v2, v2

    add-float v16, v2, v21

    .line 455
    .local v16, "coverRecTimeGroupWidth":F
    new-instance v12, Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->COVER_RECORDING_INDICATOR_GROUP_HEIGHT:I

    int-to-float v0, v2

    move/from16 v17, v0

    invoke-direct/range {v12 .. v17}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRecGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 456
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRecGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->COVER_INDICATOR_POS_X:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->SCREEN_HEIGHT:I

    int-to-float v5, v5

    add-float v5, v5, v21

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->COVER_REC_ICON_WIDTH:I

    int-to-float v7, v7

    add-float/2addr v5, v7

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 457
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRecGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    .line 458
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRecGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setOrientation(I)V

    .line 459
    new-instance v2, Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v7, 0x7f02008a

    invoke-direct {v2, v3, v4, v5, v7}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    .line 460
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 461
    new-instance v2, Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v7, 0x7f020089

    invoke-direct {v2, v3, v4, v5, v7}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    .line 462
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 463
    new-instance v17, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v18

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->COVER_REC_ICON_WIDTH:I

    int-to-float v0, v2

    move/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->COVER_RECORDING_INDICATOR_GROUP_HEIGHT:I

    int-to-float v0, v2

    move/from16 v22, v0

    const/4 v2, 0x0

    .line 464
    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/util/RecordingUtil;->convertToHMSFormat(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->COVER_REC_SIZE_TEXT_SIZE:I

    int-to-float v0, v2

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->COVER_RECORDING_REC_TIME_TEXT_COLOR:I

    move/from16 v25, v0

    const/16 v26, 0x0

    invoke-direct/range {v17 .. v26}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    .line 465
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoCondensedFont()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    .line 466
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 467
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_TEXT_STROKE_WIDTH:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_TEXT_STROKE_COLOR:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 468
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRecGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 469
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRecGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 470
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRecGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 471
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRecGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 473
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->COVER_REC_SIZE_TEXT_SIZE:I

    int-to-float v2, v2

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/util/RecordingUtil;->getMSFormatStringWidth(F)F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    const-string v3, " / "

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->REC_INDICATOR_TEXT_SIZE:F

    invoke-static {v3, v4}, Lcom/sec/android/app/camera/util/Util;->getStringWidth(Ljava/lang/String;F)F

    move-result v3

    add-float v31, v2, v3

    .line 474
    .local v31, "coverRemainRecTimeTextWidth":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->COVER_REC_ICON_WIDTH:I

    int-to-float v2, v2

    add-float v26, v2, v31

    .line 475
    .local v26, "coverRemainRecTimeGroupWidth":F
    new-instance v22, Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v23

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->COVER_RECORDING_INDICATOR_GROUP_HEIGHT:I

    int-to-float v0, v2

    move/from16 v27, v0

    invoke-direct/range {v22 .. v27}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRemainRecGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 476
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRemainRecGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->COVER_INDICATOR_POS_X:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->SCREEN_HEIGHT:I

    int-to-float v5, v5

    add-float v5, v5, v31

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->COVER_REC_ICON_WIDTH:I

    int-to-float v7, v7

    add-float/2addr v5, v7

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 477
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRemainRecGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    .line 478
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRemainRecGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setOrientation(I)V

    .line 479
    new-instance v27, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v28

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->COVER_REC_ICON_WIDTH:I

    int-to-float v0, v2

    move/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->COVER_RECORDING_INDICATOR_GROUP_HEIGHT:I

    int-to-float v0, v2

    move/from16 v32, v0

    const/4 v2, 0x0

    .line 480
    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/util/RecordingUtil;->convertToMSFormat(I)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->COVER_REC_SIZE_TEXT_SIZE:I

    int-to-float v0, v2

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->COVER_RECORDING_REC_TIME_TEXT_COLOR:I

    move/from16 v35, v0

    const/16 v36, 0x0

    invoke-direct/range {v27 .. v36}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRemainRecTimeText:Lcom/samsung/android/glview/GLText;

    .line 481
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRemainRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoCondensedFont()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    .line 482
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRemainRecTimeText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 483
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRemainRecTimeText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_TEXT_STROKE_WIDTH:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_TEXT_STROKE_COLOR:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 484
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRemainRecGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 485
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRemainRecGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 486
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRemainRecGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRemainRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 487
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRemainRecGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 490
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRecGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 491
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRemainRecGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 493
    .end local v16    # "coverRecTimeGroupWidth":F
    .end local v21    # "coverRecTimeTextWidth":F
    .end local v26    # "coverRemainRecTimeGroupWidth":F
    .end local v31    # "coverRemainRecTimeTextWidth":F
    :cond_0
    return-void

    .line 441
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setShadowVisibility(Z)V

    goto/16 :goto_0
.end method

.method private setPosition()V
    .locals 13

    .prologue
    .line 499
    iget-object v9, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 504
    iget-object v9, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCurrentWindowOrientation()I

    move-result v1

    .line 505
    .local v1, "orientation":I
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v0

    .line 506
    .local v0, "height":I
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v8

    .line 508
    .local v8, "width":I
    iget v9, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->REC_INDICATOR_TEXT_SIZE:F

    iget-object v10, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v10}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v10

    mul-float/2addr v9, v10

    invoke-static {v9}, Lcom/sec/android/app/camera/shootingmode/util/RecordingUtil;->getHMSFormatStringWidth(F)F

    move-result v3

    .line 509
    .local v3, "recTimeTextWidth":F
    iget v9, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->REC_INDICATOR_TEXT_SIZE:F

    iget-object v10, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v10}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v10

    mul-float/2addr v9, v10

    invoke-static {v9}, Lcom/sec/android/app/camera/shootingmode/util/RecordingUtil;->getMSFormatStringWidth(F)F

    move-result v9

    const/high16 v10, 0x40000000    # 2.0f

    mul-float/2addr v9, v10

    const-string v10, " / "

    iget v11, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->REC_INDICATOR_TEXT_SIZE:F

    iget-object v12, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 510
    invoke-interface {v12}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v12

    mul-float/2addr v11, v12

    .line 509
    invoke-static {v10, v11}, Lcom/sec/android/app/camera/util/Util;->getStringWidth(Ljava/lang/String;F)F

    move-result v10

    add-float v2, v9, v10

    .line 512
    .local v2, "recRemainTimeTextWidth":F
    if-eqz v1, :cond_0

    const/4 v9, 0x2

    if-ne v1, v9, :cond_1

    .line 513
    :cond_0
    int-to-float v9, v8

    sub-float/2addr v9, v3

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    iget v10, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v10, v10

    sub-float/2addr v9, v10

    float-to-int v4, v9

    .line 514
    .local v4, "recTimeX":I
    int-to-float v9, v0

    iget v10, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->REC_INDICATOR_TEXT_SIZE:F

    sub-float/2addr v9, v10

    iget v10, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_GROUP_BOTTOM_MARGIN:I

    int-to-float v10, v10

    sub-float/2addr v9, v10

    float-to-int v5, v9

    .line 515
    .local v5, "recTimeY":I
    int-to-float v9, v8

    sub-float/2addr v9, v2

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    iget v10, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v10, v10

    sub-float/2addr v9, v10

    float-to-int v6, v9

    .line 516
    .local v6, "remainRecTimeX":I
    move v7, v5

    .line 524
    .local v7, "remainRecTimeY":I
    :goto_0
    iget-boolean v9, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIsRecordingTimeLimited:Z

    if-eqz v9, :cond_2

    .line 525
    int-to-float v9, v6

    int-to-float v10, v7

    invoke-virtual {p0, v9, v10}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->moveBaseLayoutAbsolute(FF)V

    .line 579
    .end local v0    # "height":I
    .end local v1    # "orientation":I
    .end local v2    # "recRemainTimeTextWidth":F
    .end local v3    # "recTimeTextWidth":F
    .end local v4    # "recTimeX":I
    .end local v5    # "recTimeY":I
    .end local v6    # "remainRecTimeX":I
    .end local v7    # "remainRecTimeY":I
    .end local v8    # "width":I
    :goto_1
    return-void

    .line 518
    .restart local v0    # "height":I
    .restart local v1    # "orientation":I
    .restart local v2    # "recRemainTimeTextWidth":F
    .restart local v3    # "recTimeTextWidth":F
    .restart local v8    # "width":I
    :cond_1
    int-to-float v9, v8

    sub-float/2addr v9, v3

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    float-to-int v9, v9

    iget v10, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_ICON_WIDTH:I

    sub-int v4, v9, v10

    .line 519
    .restart local v4    # "recTimeX":I
    iget v9, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_GROUP_RATIO_BOTTOM_MARGIN:I

    sub-int v9, v0, v9

    iget v10, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_GROUP_HEIGHT:I

    sub-int v5, v9, v10

    .line 520
    .restart local v5    # "recTimeY":I
    int-to-float v9, v8

    sub-float/2addr v9, v2

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    float-to-int v9, v9

    iget v10, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_ICON_WIDTH:I

    sub-int v6, v9, v10

    .line 521
    .restart local v6    # "remainRecTimeX":I
    move v7, v5

    .restart local v7    # "remainRecTimeY":I
    goto :goto_0

    .line 527
    :cond_2
    int-to-float v9, v4

    int-to-float v10, v5

    invoke-virtual {p0, v9, v10}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->moveBaseLayoutAbsolute(FF)V

    goto :goto_1

    .line 532
    .end local v0    # "height":I
    .end local v1    # "orientation":I
    .end local v2    # "recRemainTimeTextWidth":F
    .end local v3    # "recTimeTextWidth":F
    .end local v4    # "recTimeX":I
    .end local v5    # "recTimeY":I
    .end local v6    # "remainRecTimeX":I
    .end local v7    # "remainRecTimeY":I
    .end local v8    # "width":I
    :cond_3
    iget-boolean v9, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIsRecordingTimeLimited:Z

    if-eqz v9, :cond_5

    .line 533
    iget v9, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->REC_INDICATOR_TEXT_SIZE:F

    iget-object v10, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v10}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v10

    mul-float/2addr v9, v10

    invoke-static {v9}, Lcom/sec/android/app/camera/shootingmode/util/RecordingUtil;->getMSFormatStringWidth(F)F

    move-result v9

    const/high16 v10, 0x40000000    # 2.0f

    mul-float/2addr v9, v10

    const-string v10, " / "

    iget v11, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->REC_INDICATOR_TEXT_SIZE:F

    iget-object v12, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 534
    invoke-interface {v12}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v12

    mul-float/2addr v11, v12

    .line 533
    invoke-static {v10, v11}, Lcom/sec/android/app/camera/util/Util;->getStringWidth(Ljava/lang/String;F)F

    move-result v10

    add-float v2, v9, v10

    .line 535
    .restart local v2    # "recRemainTimeTextWidth":F
    iget-object v9, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v9

    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isKeyboardCoverCamera()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 536
    const/4 v9, 0x3

    iget v10, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->SCREEN_WIDTH:I

    iget v11, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_GROUP_RATIO_BOTTOM_MARGIN:I

    sub-int/2addr v10, v11

    iget v11, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_GROUP_HEIGHT:I

    mul-int/lit8 v11, v11, 0x2

    sub-int/2addr v10, v11

    int-to-float v10, v10

    iget v11, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->SCREEN_HEIGHT:I

    int-to-float v11, v11

    add-float/2addr v11, v2

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    iget v12, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v12, v12

    add-float/2addr v11, v12

    invoke-virtual {p0, v9, v10, v11}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->setLeftTop(IFF)V

    .line 578
    .end local v2    # "recRemainTimeTextWidth":F
    :goto_2
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->updateLayout(Z)V

    goto :goto_1

    .line 539
    .restart local v2    # "recRemainTimeTextWidth":F
    :cond_4
    const/4 v9, 0x0

    iget v10, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->SCREEN_WIDTH:I

    int-to-float v10, v10

    sub-float/2addr v10, v2

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    iget v11, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v11, v11

    sub-float/2addr v10, v11

    iget v11, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_GROUP_POS_Y:I

    int-to-float v11, v11

    invoke-virtual {p0, v9, v10, v11}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->setLeftTop(IFF)V

    .line 540
    const/4 v9, 0x1

    iget v10, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->SCREEN_WIDTH:I

    iget v11, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_GROUP_RATIO_BOTTOM_MARGIN:I

    sub-int/2addr v10, v11

    int-to-float v10, v10

    iget v11, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->SCREEN_HEIGHT:I

    int-to-float v11, v11

    sub-float/2addr v11, v2

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    iget v12, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v12, v12

    sub-float/2addr v11, v12

    invoke-virtual {p0, v9, v10, v11}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->setLeftTop(IFF)V

    .line 542
    const/4 v9, 0x2

    iget v10, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->SCREEN_WIDTH:I

    int-to-float v10, v10

    add-float/2addr v10, v2

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    iget v11, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v11, v11

    add-float/2addr v10, v11

    iget v11, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_GROUP_POS_Y:I

    iget v12, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_GROUP_HEIGHT:I

    add-int/2addr v11, v12

    int-to-float v11, v11

    invoke-virtual {p0, v9, v10, v11}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->setLeftTop(IFF)V

    .line 544
    const/4 v9, 0x3

    iget v10, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->SCREEN_WIDTH:I

    iget v11, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_GROUP_RATIO_BOTTOM_MARGIN:I

    sub-int/2addr v10, v11

    iget v11, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_GROUP_HEIGHT:I

    sub-int/2addr v10, v11

    int-to-float v10, v10

    iget v11, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->SCREEN_HEIGHT:I

    int-to-float v11, v11

    add-float/2addr v11, v2

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    iget v12, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v12, v12

    add-float/2addr v11, v12

    invoke-virtual {p0, v9, v10, v11}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->setLeftTop(IFF)V

    goto :goto_2

    .line 548
    .end local v2    # "recRemainTimeTextWidth":F
    :cond_5
    iget v9, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->REC_INDICATOR_TEXT_SIZE:F

    iget-object v10, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v10}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v10

    mul-float/2addr v9, v10

    invoke-static {v9}, Lcom/sec/android/app/camera/shootingmode/util/RecordingUtil;->getHMSFormatStringWidth(F)F

    move-result v3

    .line 550
    .restart local v3    # "recTimeTextWidth":F
    iget-object v9, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v9

    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isKeyboardCoverCamera()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 551
    const/4 v9, 0x3

    iget v10, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->SCREEN_WIDTH:I

    iget v11, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_GROUP_RATIO_BOTTOM_MARGIN:I

    sub-int/2addr v10, v11

    iget v11, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_GROUP_HEIGHT:I

    mul-int/lit8 v11, v11, 0x2

    sub-int/2addr v10, v11

    int-to-float v10, v10

    iget v11, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->SCREEN_HEIGHT:I

    int-to-float v11, v11

    add-float/2addr v11, v3

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    iget v12, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v12, v12

    add-float/2addr v11, v12

    invoke-virtual {p0, v9, v10, v11}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->setLeftTop(IFF)V

    goto/16 :goto_2

    .line 555
    :cond_6
    iget-object v9, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v9

    invoke-static {v9}, Lcom/sec/android/app/camera/util/CameraResolution;->isWideResolution(I)Z

    move-result v9

    if-nez v9, :cond_8

    .line 556
    iget-object v9, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v9

    invoke-static {v9}, Lcom/sec/android/app/camera/util/CameraResolution;->isSquareResolution(I)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 557
    const/4 v9, 0x0

    iget v10, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->SCREEN_WIDTH:I

    int-to-float v10, v10

    sub-float/2addr v10, v3

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    iget v11, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v11, v11

    sub-float/2addr v10, v11

    iget v11, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_GROUP_1_1_RATIO_MARGIN:I

    int-to-float v11, v11

    sub-float/2addr v10, v11

    iget v11, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_GROUP_POS_Y:I

    int-to-float v11, v11

    invoke-virtual {p0, v9, v10, v11}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->setLeftTop(IFF)V

    .line 559
    const/4 v9, 0x2

    iget v10, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->SCREEN_WIDTH:I

    int-to-float v10, v10

    add-float/2addr v10, v3

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    iget v11, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v11, v11

    add-float/2addr v10, v11

    iget v11, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_GROUP_1_1_RATIO_MARGIN:I

    int-to-float v11, v11

    sub-float/2addr v10, v11

    iget v11, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_GROUP_POS_Y:I

    iget v12, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_GROUP_HEIGHT:I

    add-int/2addr v11, v12

    int-to-float v11, v11

    invoke-virtual {p0, v9, v10, v11}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->setLeftTop(IFF)V

    .line 572
    :goto_3
    const/4 v9, 0x1

    iget v10, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->SCREEN_WIDTH:I

    iget v11, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_GROUP_RATIO_BOTTOM_MARGIN:I

    sub-int/2addr v10, v11

    int-to-float v10, v10

    iget v11, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->SCREEN_HEIGHT:I

    int-to-float v11, v11

    sub-float/2addr v11, v3

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    iget v12, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v12, v12

    sub-float/2addr v11, v12

    invoke-virtual {p0, v9, v10, v11}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->setLeftTop(IFF)V

    .line 574
    const/4 v9, 0x3

    iget v10, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->SCREEN_WIDTH:I

    iget v11, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_GROUP_RATIO_BOTTOM_MARGIN:I

    sub-int/2addr v10, v11

    iget v11, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_GROUP_HEIGHT:I

    sub-int/2addr v10, v11

    int-to-float v10, v10

    iget v11, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->SCREEN_HEIGHT:I

    int-to-float v11, v11

    add-float/2addr v11, v3

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    iget v12, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v12, v12

    add-float/2addr v11, v12

    invoke-virtual {p0, v9, v10, v11}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->setLeftTop(IFF)V

    goto/16 :goto_2

    .line 562
    :cond_7
    const/4 v9, 0x0

    iget v10, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->SCREEN_WIDTH:I

    int-to-float v10, v10

    sub-float/2addr v10, v3

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    iget v11, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v11, v11

    sub-float/2addr v10, v11

    iget v11, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_GROUP_4_3_RATIO_MARGIN:I

    int-to-float v11, v11

    sub-float/2addr v10, v11

    iget v11, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_GROUP_POS_Y:I

    int-to-float v11, v11

    invoke-virtual {p0, v9, v10, v11}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->setLeftTop(IFF)V

    .line 564
    const/4 v9, 0x2

    iget v10, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->SCREEN_WIDTH:I

    int-to-float v10, v10

    add-float/2addr v10, v3

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    iget v11, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v11, v11

    add-float/2addr v10, v11

    iget v11, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_GROUP_4_3_RATIO_MARGIN:I

    int-to-float v11, v11

    sub-float/2addr v10, v11

    iget v11, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_GROUP_POS_Y:I

    iget v12, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_GROUP_HEIGHT:I

    add-int/2addr v11, v12

    int-to-float v11, v11

    invoke-virtual {p0, v9, v10, v11}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->setLeftTop(IFF)V

    goto :goto_3

    .line 568
    :cond_8
    const/4 v9, 0x0

    iget v10, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->SCREEN_WIDTH:I

    int-to-float v10, v10

    sub-float/2addr v10, v3

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    iget v11, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v11, v11

    sub-float/2addr v10, v11

    iget v11, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_GROUP_POS_Y:I

    int-to-float v11, v11

    invoke-virtual {p0, v9, v10, v11}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->setLeftTop(IFF)V

    .line 569
    const/4 v9, 0x2

    iget v10, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->SCREEN_WIDTH:I

    int-to-float v10, v10

    add-float/2addr v10, v3

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    iget v11, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v11, v11

    add-float/2addr v10, v11

    iget v11, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_GROUP_POS_Y:I

    iget v12, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_GROUP_HEIGHT:I

    add-int/2addr v11, v12

    int-to-float v11, v11

    invoke-virtual {p0, v9, v10, v11}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->setLeftTop(IFF)V

    goto/16 :goto_3
.end method

.method private showRecordingTextAnimation(Z)V
    .locals 5
    .param p1, "isLimited"    # Z

    .prologue
    const/4 v4, 0x0

    .line 587
    const-string v0, "RecordingTimerIndicator"

    const-string v1, "showRecordingTextAnimation"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mTextAnimation:Landroid/view/animation/AlphaAnimation;

    if-nez v0, :cond_0

    .line 589
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mTextAnimation:Landroid/view/animation/AlphaAnimation;

    .line 590
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mTextAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 593
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 594
    if-eqz p1, :cond_1

    .line 595
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRemainRecTimeText:Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mTextAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setAnimation(Landroid/view/animation/Animation;)V

    .line 596
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRemainRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLText;->startAnimation()V

    .line 597
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRemainRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 614
    :goto_0
    return-void

    .line 599
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mTextAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setAnimation(Landroid/view/animation/Animation;)V

    .line 600
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLText;->startAnimation()V

    .line 601
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    goto :goto_0

    .line 604
    :cond_2
    if-eqz p1, :cond_3

    .line 605
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mTextAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setAnimation(Landroid/view/animation/Animation;)V

    .line 606
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLText;->startAnimation()V

    .line 607
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    goto :goto_0

    .line 609
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mTextAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setAnimation(Landroid/view/animation/Animation;)V

    .line 610
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLText;->startAnimation()V

    .line 611
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    goto :goto_0
.end method

.method private startRecIconIndicatorBlinking()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 623
    const-string v0, "RecordingTimerIndicator"

    const-string v1, "startRecIconIndicatorBlinking"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->blinkRecIconIndicator(Z)V

    .line 626
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mRecordingTimerIndicatorHandler:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator$RecordingHandler;

    if-eqz v0, :cond_0

    .line 627
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mRecordingTimerIndicatorHandler:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator$RecordingHandler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v4, v2, v3}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator$RecordingHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 629
    :cond_0
    return-void
.end method


# virtual methods
.method public clearIndicator()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mRecordingTimerIndicatorHandler:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator$RecordingHandler;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mRecordingTimerIndicatorHandler:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator$RecordingHandler;

    # invokes: Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator$RecordingHandler;->clear()V
    invoke-static {v0}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator$RecordingHandler;->access$000(Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator$RecordingHandler;)V

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mRecordingTimerIndicatorHandler:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator$RecordingHandler;

    .line 121
    :cond_0
    return-void
.end method

.method public hideIcon()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 127
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mRecordingTimerIndicatorHandler:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator$RecordingHandler;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mRecordingTimerIndicatorHandler:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator$RecordingHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator$RecordingHandler;->removeMessages(I)V

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 133
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 138
    :goto_0
    return-void

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    goto :goto_0
.end method

.method public onLayoutChanged(III)V
    .locals 11
    .param p1, "orientation"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/high16 v10, 0x40000000    # 2.0f

    .line 146
    iget v6, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->REC_INDICATOR_TEXT_SIZE:F

    iget-object v7, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v7

    mul-float/2addr v6, v7

    invoke-static {v6}, Lcom/sec/android/app/camera/shootingmode/util/RecordingUtil;->getHMSFormatStringWidth(F)F

    move-result v1

    .line 147
    .local v1, "recTimeTextWidth":F
    iget v6, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->REC_INDICATOR_TEXT_SIZE:F

    iget-object v7, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v7

    mul-float/2addr v6, v7

    invoke-static {v6}, Lcom/sec/android/app/camera/shootingmode/util/RecordingUtil;->getMSFormatStringWidth(F)F

    move-result v6

    mul-float/2addr v6, v10

    const-string v7, " / "

    iget v8, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->REC_INDICATOR_TEXT_SIZE:F

    iget-object v9, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 148
    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v9

    mul-float/2addr v8, v9

    .line 147
    invoke-static {v7, v8}, Lcom/sec/android/app/camera/util/Util;->getStringWidth(Ljava/lang/String;F)F

    move-result v7

    add-float v0, v6, v7

    .line 150
    .local v0, "recRemainTimeTextWidth":F
    if-eqz p1, :cond_0

    const/4 v6, 0x2

    if-ne p1, v6, :cond_1

    .line 151
    :cond_0
    int-to-float v6, p2

    sub-float/2addr v6, v1

    div-float/2addr v6, v10

    iget v7, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    float-to-int v2, v6

    .line 152
    .local v2, "recTimeX":I
    int-to-float v6, p3

    iget v7, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->REC_INDICATOR_TEXT_SIZE:F

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_GROUP_BOTTOM_MARGIN:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    float-to-int v3, v6

    .line 153
    .local v3, "recTimeY":I
    int-to-float v6, p2

    sub-float/2addr v6, v0

    div-float/2addr v6, v10

    iget v7, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    float-to-int v4, v6

    .line 154
    .local v4, "remainRecTimeX":I
    move v5, v3

    .line 162
    .local v5, "remainRecTimeY":I
    :goto_0
    iget-boolean v6, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIsRecordingTimeLimited:Z

    if-eqz v6, :cond_2

    .line 163
    int-to-float v6, v4

    int-to-float v7, v5

    invoke-virtual {p0, v6, v7}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->moveBaseLayoutAbsolute(FF)V

    .line 167
    :goto_1
    return-void

    .line 156
    .end local v2    # "recTimeX":I
    .end local v3    # "recTimeY":I
    .end local v4    # "remainRecTimeX":I
    .end local v5    # "remainRecTimeY":I
    :cond_1
    int-to-float v6, p2

    sub-float/2addr v6, v1

    div-float/2addr v6, v10

    float-to-int v6, v6

    iget v7, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_ICON_WIDTH:I

    sub-int v2, v6, v7

    .line 157
    .restart local v2    # "recTimeX":I
    iget v6, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_GROUP_RATIO_BOTTOM_MARGIN:I

    sub-int v6, p3, v6

    iget v7, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_TIME_GROUP_HEIGHT:I

    sub-int v3, v6, v7

    .line 158
    .restart local v3    # "recTimeY":I
    int-to-float v6, p2

    sub-float/2addr v6, v0

    div-float/2addr v6, v10

    float-to-int v6, v6

    iget v7, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->RECORDING_REC_ICON_WIDTH:I

    sub-int v4, v6, v7

    .line 159
    .restart local v4    # "remainRecTimeX":I
    move v5, v3

    .restart local v5    # "remainRecTimeY":I
    goto :goto_0

    .line 165
    :cond_2
    int-to-float v6, v2

    int-to-float v7, v3

    invoke-virtual {p0, v6, v7}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->moveBaseLayoutAbsolute(FF)V

    goto :goto_1
.end method

.method public setRecordingIconImage(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 175
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 176
    return-void
.end method

.method public showPauseIcon()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 182
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mRecordingTimerIndicatorHandler:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator$RecordingHandler;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mRecordingTimerIndicatorHandler:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator$RecordingHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator$RecordingHandler;->removeMessages(I)V

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 187
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 188
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 189
    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIsRecordingTimeLimited:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRemainRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLText;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 190
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRemainRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 199
    :cond_1
    :goto_0
    return-void

    .line 193
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 194
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 195
    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIsRecordingTimeLimited:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLText;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 196
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    goto :goto_0
.end method

.method public showResumeIcon()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 205
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 207
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 212
    :goto_0
    return-void

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 210
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    goto :goto_0
.end method

.method public startTimer(ZI)V
    .locals 4
    .param p1, "isLimited"    # Z
    .param p2, "maxRecordingTime"    # I

    .prologue
    const/4 v2, 0x4

    const/4 v3, 0x0

    .line 221
    const-string v0, "RecordingTimerIndicator"

    const-string v1, "startTimer"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mRecordingTimerIndicatorHandler:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator$RecordingHandler;

    if-nez v0, :cond_0

    .line 223
    new-instance v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator$RecordingHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator$RecordingHandler;-><init>(Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mRecordingTimerIndicatorHandler:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator$RecordingHandler;

    .line 226
    :cond_0
    iput v3, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mBlinkCount:I

    .line 227
    iput-boolean p1, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIsRecordingTimeLimited:Z

    .line 228
    iput p2, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mMaxRecordingTimeInSecond:I

    .line 229
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->setPosition()V

    .line 231
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 232
    if-eqz p1, :cond_2

    .line 233
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRecGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 234
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mMaxRecordingTimeInSecond:I

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/util/RecordingUtil;->convertToMSFormat(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mRemainRecordingTime:Ljava/lang/String;

    .line 235
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRemainRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/util/RecordingUtil;->convertToMSFormat(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mRemainRecordingTime:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->getRecordingTimeText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRemainRecGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 238
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->LOW_PERFORMANCE_RECORDING_VI:Z

    if-nez v0, :cond_1

    .line 239
    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIsRecordingTimeLimited:Z

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->showRecordingTextAnimation(Z)V

    .line 279
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->startRecIconIndicatorBlinking()V

    .line 280
    return-void

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRemainRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    goto :goto_0

    .line 244
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRemainRecGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 245
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/util/RecordingUtil;->convertToHMSFormat(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRecGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 248
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->LOW_PERFORMANCE_RECORDING_VI:Z

    if-nez v0, :cond_3

    .line 249
    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIsRecordingTimeLimited:Z

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->showRecordingTextAnimation(Z)V

    goto :goto_0

    .line 251
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    goto :goto_0

    .line 255
    :cond_4
    if-eqz p1, :cond_6

    .line 256
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 257
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mMaxRecordingTimeInSecond:I

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/util/RecordingUtil;->convertToMSFormat(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mRemainRecordingTime:Ljava/lang/String;

    .line 258
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/util/RecordingUtil;->convertToMSFormat(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mRemainRecordingTime:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->getRecordingTimeText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 261
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->LOW_PERFORMANCE_RECORDING_VI:Z

    if-nez v0, :cond_5

    .line 262
    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIsRecordingTimeLimited:Z

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->showRecordingTextAnimation(Z)V

    goto :goto_0

    .line 264
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    goto :goto_0

    .line 267
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 269
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/util/RecordingUtil;->convertToHMSFormat(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 272
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->LOW_PERFORMANCE_RECORDING_VI:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCoverOpen()Z

    move-result v0

    if-nez v0, :cond_7

    .line 273
    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIsRecordingTimeLimited:Z

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->showRecordingTextAnimation(Z)V

    goto/16 :goto_0

    .line 275
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public updateMaxRecordingTime(I)V
    .locals 1
    .param p1, "maxRecordingTime"    # I

    .prologue
    .line 288
    iput p1, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mMaxRecordingTimeInSecond:I

    .line 289
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mMaxRecordingTimeInSecond:I

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/util/RecordingUtil;->convertToMSFormat(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mRemainRecordingTime:Ljava/lang/String;

    .line 290
    return-void
.end method

.method public updateRecordingTime(J)V
    .locals 7
    .param p1, "ms"    # J

    .prologue
    const/16 v5, 0xa

    const/4 v4, 0x2

    .line 298
    const-string v1, "RecordingTimerIndicator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateRecordingTime : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    long-to-int v0, v2

    .line 301
    .local v0, "seconds":I
    iget-boolean v1, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIsRecordingTimeLimited:Z

    if-eqz v1, :cond_5

    .line 302
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 303
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRemainRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/util/RecordingUtil;->convertToMSFormat(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mRemainRecordingTime:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->getRecordingTimeText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 308
    :goto_0
    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mMaxRecordingTimeInSecond:I

    sub-int/2addr v1, v0

    const/16 v2, 0x3c

    if-ne v1, v2, :cond_3

    .line 309
    const/4 v1, 0x1

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mBlinkCount:I

    .line 316
    :cond_0
    :goto_1
    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mBlinkCount:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mBlinkCount:I

    if-lez v1, :cond_1

    .line 317
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->blinkRecTimeIndicator(Z)V

    .line 319
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mRecordingTimerIndicatorHandler:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator$RecordingHandler;

    if-eqz v1, :cond_1

    .line 320
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mRecordingTimerIndicatorHandler:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator$RecordingHandler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v4, v2, v3}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator$RecordingHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 330
    :cond_1
    :goto_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->startRecIconIndicatorBlinking()V

    .line 331
    return-void

    .line 305
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/util/RecordingUtil;->convertToMSFormat(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mRemainRecordingTime:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->getRecordingTimeText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 310
    :cond_3
    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mMaxRecordingTimeInSecond:I

    sub-int/2addr v1, v0

    const/16 v2, 0x1e

    if-ne v1, v2, :cond_4

    .line 311
    iput v4, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mBlinkCount:I

    goto :goto_1

    .line 312
    :cond_4
    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mMaxRecordingTimeInSecond:I

    sub-int/2addr v1, v0

    if-ne v1, v5, :cond_0

    .line 313
    iput v5, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mBlinkCount:I

    goto :goto_1

    .line 324
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 325
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mCoverIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/util/RecordingUtil;->convertToHMSFormat(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto :goto_2

    .line 327
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/util/RecordingUtil;->convertToHMSFormat(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto :goto_2
.end method
