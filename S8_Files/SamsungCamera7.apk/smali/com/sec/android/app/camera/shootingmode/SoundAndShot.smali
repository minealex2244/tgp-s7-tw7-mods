.class public Lcom/sec/android/app/camera/shootingmode/SoundAndShot;
.super Ljava/lang/Object;
.source "SoundAndShot.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/ShootingMode;
.implements Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;
.implements Lcom/samsung/android/glview/GLView$ClickListener;
.implements Lcom/sec/android/app/camera/interfaces/CameraContext$HRMShutterListener;
.implements Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;
.implements Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;
.implements Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;,
        Lcom/sec/android/app/camera/shootingmode/SoundAndShot$RecIndicatorHandler;
    }
.end annotation


# static fields
.field private static final NUM_OF_EQBAR:I = 0x14

.field private static final NUM_OF_EQ_LEVEL_MAX:I = 0xe

.field private static final SOUNDANDSHOT_SCREEN_ADD_VOICE:I = 0x1

.field private static final SOUNDANDSHOT_SCREEN_PREVIEWING:I = 0x0

.field private static final SOUND_RECORD_INDICATOR_UPDATE_DURATION:I = 0x32

.field private static final SOUND_RECORD_INDICATOR_UPDATE_TIMER:I = 0x1

.field private static final SOUND_RECORD_MAX_PROGRESSBAR_COUNT:I = 0x9

.field private static final SOUND_RECORD_PROGRESS_INCREASE_DURATION:I = 0x3e8

.field private static final SOUND_RECORD_PROGRESS_INCREASE_TIMER:I = 0x3

.field protected static final TAG:Ljava/lang/String; = "SoundAndShot"

.field private static final UPDATE_REC_MICIMAGE_MSG:I = 0x1


# instance fields
.field private final BASEMENU_GROUP_WIDTH:F

.field private final BASE_MENU_WEIGHT_VALUE:F

.field private final INDICATOR_EQBAR_BAND_AND_MIC_PADDING:I

.field private final INDICATOR_EQBAR_BAND_SPACING:I

.field private final INDICATOR_EQBAR_BAND_WIDTH:I

.field private final INDICATOR_EQBAR_MIC_WIDTH:I

.field private final INDICATOR_EQBAR_POS_X_START:I

.field private final INDICATOR_EQBAR_POS_Y:I

.field private final PAGE_NAVIGATOR_GROUP_HEIGHT:F

.field private final PROGRESS_BAR_ADD_VOICE_HEIGHT:I

.field private final PROGRESS_BAR_ADD_VOICE_POS_Y:I

.field private final PROGRESS_BAR_ADD_VOICE_SEQ_SPACING:I

.field private final PROGRESS_BAR_ADD_VOICE_SEQ_WIDTH:I

.field private final PROGRESS_BAR_HEIGHT:I

.field private final PROGRESS_BAR_MARGIN_0_180:I

.field private final PROGRESS_BAR_MARGIN_90_270:I

.field private final PROGRESS_BAR_SEQ_AND_TIMER_PADDING:I

.field private final PROGRESS_BAR_SEQ_POS_Y:I

.field private final PROGRESS_BAR_SEQ_SPACING:I

.field private final PROGRESS_BAR_SEQ_WIDTH:I

.field private final PROGRESS_BAR_WIDTH:I

.field private final PROGRESS_GROUP_HEIGHT:I

.field private final PROGRESS_GROUP_POS_BOTTOM_MARGIN_PORTRAIT:I

.field private final PROGRESS_GROUP_WIDTH:I

.field private final PROGRESS_TEXT_FONT_SIZE:I

.field private final PROGRESS_TEXT_HEIGHT:I

.field private final PROGRESS_TEXT_POS_Y:I

.field private final PROGRESS_TEXT_STROKE_COLOR:I

.field private final PROGRESS_TEXT_STROKE_WIDTH:I

.field private final PROGRESS_TEXT_WIDTH:I

.field private RecordedTime:I

.field private final SCREEN_HEIGHT:I

.field private final SCREEN_WIDTH:I

.field private final SHUTTER_BUTTON_GAP_WITH_NAVIGATOR:F

.field private final SHUTTER_BUTTON_WIDTH:F

.field private final SOUND_AND_SHOT_PROGRESS_BAR_TEXT_SHADOW_ENABLE:Z

.field private final STOP_BUTTON_POS_X:I

.field private final STOP_BUTTON_POS_Y:I

.field private eqBandList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/glview/GLImage;",
            ">;"
        }
    .end annotation
.end field

.field private eqBandListGroup:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/glview/GLImage;",
            ">;>;"
        }
    .end annotation
.end field

.field private isRecordKeyReleased:Z

.field private mAudioRecordIndicator:Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;

.field private mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

.field private mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

.field private final mEqValueArray:[I

.field private mFull:Z

.field private mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

.field private mMicImage:Lcom/samsung/android/glview/GLImage;

.field private final mMicImageArray:[I

.field private mProgessBarSeqFullImage:I

.field private mProgessBarSeqImage:I

.field private mProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mProgressText:Lcom/samsung/android/glview/GLText;

.field private mRecAddVoiceProgressBar:Lcom/samsung/android/glview/GLViewGroup;

.field private mRecAddVoiceProgressBarBG:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/glview/GLImage;",
            ">;"
        }
    .end annotation
.end field

.field private mRecAddVoiceProgressBarSeq:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/glview/GLImage;",
            ">;"
        }
    .end annotation
.end field

.field private mRecIndicatorHandler:Lcom/sec/android/app/camera/shootingmode/SoundAndShot$RecIndicatorHandler;

.field private mRecProgressBar:Lcom/samsung/android/glview/GLViewGroup;

.field private mRecProgressBarBG:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/glview/GLImage;",
            ">;"
        }
    .end annotation
.end field

.field private mRecProgressBarSeq:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/glview/GLImage;",
            ">;"
        }
    .end annotation
.end field

.field private mRecTimerIMG:Lcom/samsung/android/glview/GLImage;

.field private mRecordProgressCounter:I

.field private mRecording:Z

.field private mReviewImage:Lcom/samsung/android/glview/GLImage;

.field private mReviewImageGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mSoundAndShotAddVoice:Lcom/samsung/android/glview/GLViewGroup;

.field private mSoundAndShotHandler:Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;

.field private mSoundAndShotMode:I

.field private mSoundAndShotScreen:I

.field private mSoundAndShotSeq:Lcom/samsung/android/glview/GLViewGroup;

.field private mUpdateCnt:I

.field private mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

.field private qar:Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;

.field private rec_audio:[B


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V
    .locals 6
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "cameraSettings"    # Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_WIDTH:I

    .line 93
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_HEIGHT:I

    .line 94
    const v0, 0x7f0a0211

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_SEQ_WIDTH:I

    .line 95
    const v0, 0x7f0a0210

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_SEQ_SPACING:I

    .line 96
    const v0, 0x7f0a020e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_SEQ_AND_TIMER_PADDING:I

    .line 97
    const v0, 0x7f0a020f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_SEQ_POS_Y:I

    .line 98
    const v0, 0x7f0a020b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_HEIGHT:I

    .line 99
    const v0, 0x7f0a020c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_MARGIN_0_180:I

    .line 100
    const v0, 0x7f0a020d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_MARGIN_90_270:I

    .line 101
    const v0, 0x7f0a0206

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_GROUP_WIDTH:I

    .line 102
    const v0, 0x7f0a0205

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_GROUP_HEIGHT:I

    .line 103
    const v0, 0x7f0a0200

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_GROUP_POS_BOTTOM_MARGIN_PORTRAIT:I

    .line 104
    const v0, 0x7f0a0012

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->BASEMENU_GROUP_WIDTH:F

    .line 105
    const v0, 0x7f0a0052

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SHUTTER_BUTTON_GAP_WITH_NAVIGATOR:F

    .line 106
    const v0, 0x7f0a0372

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PAGE_NAVIGATOR_GROUP_HEIGHT:F

    .line 107
    const v0, 0x7f0a02a0

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SHUTTER_BUTTON_WIDTH:F

    .line 108
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->BASEMENU_GROUP_WIDTH:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PAGE_NAVIGATOR_GROUP_HEIGHT:F

    sub-float/2addr v0, v3

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SHUTTER_BUTTON_GAP_WITH_NAVIGATOR:F

    sub-float/2addr v0, v3

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SHUTTER_BUTTON_WIDTH:F

    sub-float/2addr v0, v3

    div-float/2addr v0, v5

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->BASE_MENU_WEIGHT_VALUE:F

    .line 109
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_WIDTH:I

    int-to-float v0, v0

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->BASEMENU_GROUP_WIDTH:F

    sub-float/2addr v0, v3

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->BASE_MENU_WEIGHT_VALUE:F

    add-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->STOP_BUTTON_POS_X:I

    .line 110
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_HEIGHT:I

    int-to-float v0, v0

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SHUTTER_BUTTON_WIDTH:F

    sub-float/2addr v0, v3

    div-float/2addr v0, v5

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->STOP_BUTTON_POS_Y:I

    .line 111
    const v0, 0x7f0a01fe

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->INDICATOR_EQBAR_POS_X_START:I

    .line 112
    const v0, 0x7f0a01ff

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->INDICATOR_EQBAR_POS_Y:I

    .line 113
    const v0, 0x7f0a01fc

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->INDICATOR_EQBAR_BAND_WIDTH:I

    .line 114
    const v0, 0x7f0a01fb

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->INDICATOR_EQBAR_BAND_SPACING:I

    .line 115
    const v0, 0x7f0a01fa

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->INDICATOR_EQBAR_BAND_AND_MIC_PADDING:I

    .line 116
    const v0, 0x7f0a01fd

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->INDICATOR_EQBAR_MIC_WIDTH:I

    .line 117
    const v0, 0x7f0a0202

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_ADD_VOICE_POS_Y:I

    .line 118
    const v0, 0x7f0a0201

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_ADD_VOICE_HEIGHT:I

    .line 119
    const v0, 0x7f0a0204

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_ADD_VOICE_SEQ_WIDTH:I

    .line 120
    const v0, 0x7f0a0203

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_ADD_VOICE_SEQ_SPACING:I

    .line 121
    const v0, 0x7f0a0209

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_TEXT_POS_Y:I

    .line 122
    const v0, 0x7f0a0207

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_TEXT_FONT_SIZE:I

    .line 123
    const v0, 0x7f0a020a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_TEXT_WIDTH:I

    .line 124
    const v0, 0x7f0a0208

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_TEXT_HEIGHT:I

    .line 125
    const v0, 0x7f0b0025

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_TEXT_STROKE_WIDTH:I

    .line 126
    const v0, 0x7f0d0010

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_TEXT_STROKE_COLOR:I

    .line 127
    const v0, 0x7f0b0058

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SOUND_AND_SHOT_PROGRESS_BAR_TEXT_SHADOW_ENABLE:Z

    .line 128
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_SEQ_WIDTH:I

    mul-int/lit8 v0, v0, 0x9

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_SEQ_SPACING:I

    mul-int/lit8 v3, v3, 0x8

    add-int/2addr v0, v3

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_WIDTH:I

    .line 130
    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mEqValueArray:[I

    .line 136
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mMicImageArray:[I

    .line 137
    iput-object v4, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 139
    iput-object v4, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 140
    iput-object v4, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    .line 141
    iput-object v4, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    .line 142
    iput-object v4, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    .line 146
    iput-object v4, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->rec_audio:[B

    .line 147
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecording:Z

    .line 148
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->RecordedTime:I

    .line 149
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mFull:Z

    .line 157
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotMode:I

    .line 158
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotScreen:I

    .line 159
    const v0, 0x7f020273

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mProgessBarSeqImage:I

    .line 160
    const v0, 0x7f020274

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mProgessBarSeqFullImage:I

    .line 161
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecordProgressCounter:I

    .line 175
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->isRecordKeyReleased:Z

    .line 176
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mUpdateCnt:I

    .line 177
    iput-object v4, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 178
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot$1;-><init>(Lcom/sec/android/app/camera/shootingmode/SoundAndShot;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 217
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 218
    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 219
    return-void

    :cond_0
    move v0, v2

    .line 127
    goto :goto_0

    .line 130
    :array_0
    .array-data 4
        0x7f020258
        0x7f020259
        0x7f02025a
        0x7f02025b
        0x7f02025c
        0x7f02025d
        0x7f02025e
        0x7f02025f
        0x7f020260
        0x7f020261
        0x7f020262
        0x7f020263
        0x7f020264
        0x7f020265
        0x7f020266
    .end array-data

    .line 136
    :array_1
    .array-data 4
        0x7f020267
        0x7f020268
    .end array-data
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/shootingmode/SoundAndShot;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/SoundAndShot;

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecording:Z

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/shootingmode/SoundAndShot;)Lcom/sec/android/app/camera/interfaces/CameraContext;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/SoundAndShot;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/shootingmode/SoundAndShot;)Lcom/sec/android/app/camera/interfaces/CameraSettings;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/SoundAndShot;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/shootingmode/SoundAndShot;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/SoundAndShot;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->setHRMSensor(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/shootingmode/SoundAndShot;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/SoundAndShot;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/shootingmode/SoundAndShot;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/SoundAndShot;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->clear()V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/shootingmode/SoundAndShot;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/SoundAndShot;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->updateRecMicImage()V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/shootingmode/SoundAndShot;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/SoundAndShot;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method private addAudio(Ljava/io/File;)V
    .locals 5
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 743
    const-string v1, "SoundAndShot"

    const-string v2, "addAudio"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->qar:Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->getRecordedAudioStream()[B

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->rec_audio:[B

    .line 746
    :try_start_0
    const-string v1, "SoundShot_Meta_Info"

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->rec_audio:[B

    const/16 v3, 0x800

    const/4 v4, 0x1

    invoke-static {p1, v1, v2, v3, v4}, Lcom/samsung/android/media/SemExtendedFormat;->addData(Ljava/io/File;Ljava/lang/String;[BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 751
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->stopSoundRecording()V

    .line 752
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->soundAndShotAddVoiceCompleted()V

    .line 753
    return-void

    .line 748
    :catch_0
    move-exception v0

    .line 749
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "SoundAndShot"

    const-string v2, "Error while addAudio"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 756
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotHandler:Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;

    if-eqz v0, :cond_0

    .line 757
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotHandler:Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;

    # invokes: Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;->clear()V
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;->access$600(Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;)V

    .line 758
    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotHandler:Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;

    .line 760
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecIndicatorHandler:Lcom/sec/android/app/camera/shootingmode/SoundAndShot$RecIndicatorHandler;

    if-eqz v0, :cond_1

    .line 761
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecIndicatorHandler:Lcom/sec/android/app/camera/shootingmode/SoundAndShot$RecIndicatorHandler;

    # invokes: Lcom/sec/android/app/camera/shootingmode/SoundAndShot$RecIndicatorHandler;->clear()V
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot$RecIndicatorHandler;->access$700(Lcom/sec/android/app/camera/shootingmode/SoundAndShot$RecIndicatorHandler;)V

    .line 762
    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecIndicatorHandler:Lcom/sec/android/app/camera/shootingmode/SoundAndShot$RecIndicatorHandler;

    .line 764
    :cond_1
    return-void
.end method

.method private handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 776
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 804
    :goto_0
    :pswitch_0
    return-void

    .line 778
    :pswitch_1
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotScreen:I

    if-nez v1, :cond_0

    .line 779
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->qar:Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->getVisualizationBands()[I

    move-result-object v0

    .line 780
    .local v0, "mRecordingAmpitude":[I
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->setAudioRecordIndicatorlevel([I)V

    .line 781
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->updateRecordingAmplevel()V

    goto :goto_0

    .line 783
    .end local v0    # "mRecordingAmpitude":[I
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->qar:Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->getVisualizationBands()[I

    move-result-object v0

    .line 784
    .restart local v0    # "mRecordingAmpitude":[I
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->setRecordingAmplitude([I)V

    .line 785
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->updateRecordingAmplevel()V

    goto :goto_0

    .line 789
    .end local v0    # "mRecordingAmpitude":[I
    :pswitch_2
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotScreen:I

    if-nez v1, :cond_2

    .line 790
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->RecordedTime:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_1

    .line 791
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mFull:Z

    .line 792
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->RecordedTime:I

    .line 794
    :cond_1
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->RecordedTime:I

    iget-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mFull:Z

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->setProgressBar(IZ)V

    .line 795
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotHandler:Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;

    const/4 v2, 0x3

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 796
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->RecordedTime:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->RecordedTime:I

    goto :goto_0

    .line 798
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->setRecordProgressIncreased()V

    goto :goto_0

    .line 776
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private hideProgressBar()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 807
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 808
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecProgressBarBG:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 809
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecProgressBarSeq:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 807
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 811
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecTimerIMG:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 812
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotHandler:Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;

    if-eqz v1, :cond_1

    .line 813
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotHandler:Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;->removeMessages(I)V

    .line 814
    :cond_1
    return-void
.end method

.method private hideSoundRecordProgressBar()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 817
    const-string v0, "SoundAndShot"

    const-string v1, "hideSoundRecordProgressBar"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 820
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 821
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecAddVoiceProgressBar:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 823
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecProgressBar:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 824
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mAudioRecordIndicator:Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->setVisibility(I)V

    .line 826
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecordProgressCounter:I

    .line 827
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_0

    .line 828
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x200

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    .line 829
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 831
    :cond_0
    return-void
.end method

.method private initAddVoice()V
    .locals 7

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 834
    const-string v0, "SoundAndShot"

    const-string v1, "initAddVoice"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_WIDTH:I

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_GROUP_POS_BOTTOM_MARGIN_PORTRAIT:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_HEIGHT:I

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_GROUP_WIDTH:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 836
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_WIDTH:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_WIDTH:I

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_GROUP_WIDTH:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v6

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_HEIGHT:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_HEIGHT:I

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_GROUP_HEIGHT:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v4, v6

    sub-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 838
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x3

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_WIDTH:I

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_GROUP_POS_BOTTOM_MARGIN_PORTRAIT:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_GROUP_HEIGHT:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_HEIGHT:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_HEIGHT:I

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_GROUP_WIDTH:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v4, v6

    sub-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 841
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;

    invoke-direct {v0}, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->qar:Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;

    .line 842
    return-void
.end method

.method private isAddVoiceScreen()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 845
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotScreen:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRecorded()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 854
    const-string v1, "SoundAndShot"

    const-string v2, "isRecorded"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotMode:I

    if-nez v1, :cond_0

    .line 856
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->qar:Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->getRecordedAudioStream()[B

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->rec_audio:[B

    .line 857
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->rec_audio:[B

    if-eqz v1, :cond_1

    .line 859
    :cond_0
    :goto_0
    return v0

    .line 857
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSoundScene(Ljava/io/File;)Z
    .locals 5
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 222
    const-string v2, "SoundAndShot"

    const-string v3, "isSoundScene"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/media/SemExtendedFormat;->isValidFile(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 226
    const/16 v2, 0x800

    invoke-static {p0, v2}, Lcom/samsung/android/media/SemExtendedFormat;->hasData(Ljava/io/File;I)Z

    move-result v2

    .line 237
    :goto_0
    return v2

    .line 228
    :cond_0
    const-string v2, "SoundShot_Meta_Info"

    invoke-static {p0, v2}, Lcom/samsung/android/media/SemExtendedFormat;->getData(Ljava/io/File;Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 229
    .local v1, "sefData":[B
    if-eqz v1, :cond_1

    .line 230
    const/4 v2, 0x1

    goto :goto_0

    .line 233
    .end local v1    # "sefData":[B
    :catch_0
    move-exception v0

    .line 234
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "SoundAndShot"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSoundScene : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private resetManualMode()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x4

    .line 863
    const-string v1, "SoundAndShot"

    const-string v2, "resetManualMode"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    iput v6, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecordProgressCounter:I

    .line 868
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v1, :cond_0

    .line 869
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mProgressText:Lcom/samsung/android/glview/GLText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecordProgressCounter:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 870
    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f09022b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 869
    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 872
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotHandler:Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;

    if-eqz v1, :cond_1

    .line 873
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotHandler:Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;->removeMessages(I)V

    .line 874
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotHandler:Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;->removeMessages(I)V

    .line 877
    :cond_1
    const/16 v1, 0xb

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 878
    .local v0, "MicAmplitude":[I
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->setRecordingAmplitude([I)V

    .line 880
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v5}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 881
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v5}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 882
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mReviewImageGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v1, :cond_2

    .line 883
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mReviewImageGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v5}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 884
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->rec_audio:[B

    .line 886
    invoke-direct {p0, v6}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->switchScreen(I)V

    .line 887
    return-void

    .line 877
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private resetProgressBar()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 890
    const-string v1, "SoundAndShot"

    const-string v2, "resetProgressBar"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 893
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecProgressBarSeq:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 892
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 896
    :cond_0
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->RecordedTime:I

    .line 897
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mFull:Z

    .line 899
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->qar:Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->getRecordedAudioStream()[B

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->rec_audio:[B

    .line 900
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->rec_audio:[B

    if-eqz v1, :cond_1

    .line 901
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->qar:Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->stopRecorder()V

    .line 902
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecording:Z

    .line 903
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->rec_audio:[B

    .line 906
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotHandler:Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;

    if-eqz v1, :cond_2

    .line 907
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotHandler:Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;->removeMessages(I)V

    .line 908
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotHandler:Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;->removeMessages(I)V

    .line 910
    :cond_2
    return-void
.end method

.method private saveAudio(Ljava/lang/String;)V
    .locals 6
    .param p1, "filepath"    # Ljava/lang/String;

    .prologue
    .line 913
    const-string v1, "SoundAndShot"

    const-string v2, "saveAudio"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v2, "SoundShot_Meta_Info"

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->rec_audio:[B

    const/16 v4, 0x800

    const/4 v5, 0x1

    invoke-static {v1, v2, v3, v4, v5}, Lcom/samsung/android/media/SemExtendedFormat;->addData(Ljava/io/File;Ljava/lang/String;[BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 920
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->soundAndShotAddVoiceCompleted()V

    .line 921
    return-void

    .line 917
    :catch_0
    move-exception v0

    .line 918
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "SoundAndShot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while addAudio"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setAudioRecordIndicator(Z)V
    .locals 2
    .param p1, "isAudioRecording"    # Z

    .prologue
    .line 924
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mAudioRecordIndicator:Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;

    if-nez v0, :cond_0

    .line 934
    :goto_0
    return-void

    .line 927
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mAudioRecordIndicator:Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->setRecording()V

    .line 929
    if-eqz p1, :cond_1

    .line 930
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mAudioRecordIndicator:Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->setVisibility(I)V

    goto :goto_0

    .line 932
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mAudioRecordIndicator:Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->setVisibility(I)V

    goto :goto_0
.end method

.method private setAudioRecordIndicatorlevel([I)V
    .locals 1
    .param p1, "MicAmplitude"    # [I

    .prologue
    .line 937
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mAudioRecordIndicator:Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;

    if-nez v0, :cond_0

    .line 940
    :goto_0
    return-void

    .line 939
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mAudioRecordIndicator:Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->setRecordingAmplitude([I)V

    goto :goto_0
.end method

.method private setHRMSensor(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 943
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getHRMShutter()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 944
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->registerHRMShutterListener(Lcom/sec/android/app/camera/interfaces/CameraContext$HRMShutterListener;)V

    .line 948
    :goto_0
    return-void

    .line 946
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->unregisterHRMShutterListener()V

    goto :goto_0
.end method

.method private setProgressBar(I)V
    .locals 2
    .param p1, "time"    # I

    .prologue
    .line 951
    if-lez p1, :cond_0

    .line 952
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecAddVoiceProgressBarSeq:Ljava/util/ArrayList;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLImage;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mProgessBarSeqImage:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 955
    :cond_0
    const/16 v0, 0x9

    if-ge p1, v0, :cond_1

    .line 956
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecAddVoiceProgressBarSeq:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLImage;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mProgessBarSeqFullImage:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 957
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecAddVoiceProgressBarSeq:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 959
    :cond_1
    return-void
.end method

.method private setProgressBar(IZ)V
    .locals 3
    .param p1, "time"    # I
    .param p2, "full"    # Z

    .prologue
    .line 962
    if-nez p2, :cond_2

    .line 963
    if-lez p1, :cond_0

    .line 964
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecProgressBarSeq:Ljava/util/ArrayList;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/glview/GLImage;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mProgessBarSeqImage:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 966
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecProgressBarSeq:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/glview/GLImage;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mProgessBarSeqFullImage:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 967
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecProgressBarSeq:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 976
    :cond_1
    return-void

    .line 969
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x9

    if-ge v0, v1, :cond_1

    .line 970
    if-ne v0, p1, :cond_3

    .line 971
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecProgressBarSeq:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/glview/GLImage;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mProgessBarSeqFullImage:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 969
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 973
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecProgressBarSeq:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/glview/GLImage;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mProgessBarSeqImage:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    goto :goto_1
.end method

.method private setRecordProgressIncreased()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/16 v7, 0x9

    .line 980
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotHandler:Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-nez v1, :cond_1

    .line 981
    :cond_0
    const-string v1, "SoundAndShot"

    const-string v2, "setRecordProgressIncreased - Handler or Context is null"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    :goto_0
    return-void

    .line 985
    :cond_1
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecordProgressCounter:I

    if-ge v1, v7, :cond_3

    .line 986
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecordProgressCounter:I

    add-int/lit8 v0, v1, 0x1

    .line 987
    .local v0, "progressCountForDisplay":I
    if-gt v0, v7, :cond_2

    .line 988
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mProgressText:Lcom/samsung/android/glview/GLText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const-string v4, "%d"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const-string v4, "%d"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 989
    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f09022b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 988
    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 991
    :cond_2
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecordProgressCounter:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->setProgressBar(I)V

    .line 994
    .end local v0    # "progressCountForDisplay":I
    :cond_3
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecordProgressCounter:I

    const/16 v2, 0x8

    if-le v1, v2, :cond_4

    .line 996
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecordProgressCounter:I

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->setProgressBar(I)V

    .line 998
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotHandler:Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;

    invoke-virtual {v1, v10}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;->removeMessages(I)V

    .line 1000
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->soundAndshotAddVoiceRecordingFinished()V

    goto :goto_0

    .line 1004
    :cond_4
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecordProgressCounter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecordProgressCounter:I

    .line 1005
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotHandler:Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v10, v2, v3}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0
.end method

.method private setRecordingAmplitude([I)V
    .locals 7
    .param p1, "MicAmplitude"    # [I

    .prologue
    const/16 v6, 0x14

    const/16 v5, 0xe

    .line 1010
    new-array v0, v6, [I

    .line 1011
    .local v0, "EqBandLevel":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v6, :cond_1

    .line 1012
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-gt v2, v5, :cond_0

    .line 1013
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->eqBandListGroup:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1012
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1011
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1017
    .end local v2    # "j":I
    :cond_1
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v6, :cond_6

    .line 1018
    div-int/lit8 v3, v1, 0x2

    aget v3, p1, v3

    if-le v3, v5, :cond_2

    .line 1019
    div-int/lit8 v3, v1, 0x2

    aput v5, p1, v3

    .line 1021
    :cond_2
    rem-int/lit8 v3, v1, 0x2

    if-nez v3, :cond_3

    .line 1022
    div-int/lit8 v3, v1, 0x2

    aget v3, p1, v3

    aput v3, v0, v1

    .line 1017
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1024
    :cond_3
    div-int/lit8 v3, v1, 0x2

    aget v3, p1, v3

    if-eqz v3, :cond_4

    div-int/lit8 v3, v1, 0x2

    aget v3, p1, v3

    if-ne v3, v5, :cond_5

    .line 1025
    :cond_4
    div-int/lit8 v3, v1, 0x2

    aget v3, p1, v3

    aput v3, v0, v1

    goto :goto_3

    .line 1027
    :cond_5
    div-int/lit8 v3, v1, 0x2

    aget v3, p1, v3

    add-int/lit8 v3, v3, 0x1

    aput v3, v0, v1

    goto :goto_3

    .line 1032
    :cond_6
    const/4 v1, 0x0

    :goto_4
    if-ge v1, v6, :cond_7

    .line 1033
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->eqBandListGroup:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    aget v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1032
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1035
    :cond_7
    return-void
.end method

.method private setReviewImage(Landroid/graphics/Bitmap;IZ)V
    .locals 9
    .param p1, "data"    # Landroid/graphics/Bitmap;
    .param p2, "orientation"    # I
    .param p3, "is_front_camera"    # Z

    .prologue
    const/4 v8, 0x0

    .line 1055
    const-string v0, "SoundAndShot"

    const-string v1, "showReviewImage"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mReviewImage:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_0

    .line 1058
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mReviewImageGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mReviewImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 1059
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mReviewImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->clear()V

    .line 1060
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mReviewImage:Lcom/samsung/android/glview/GLImage;

    .line 1062
    :cond_0
    if-eqz p3, :cond_2

    const/16 v0, 0x5a

    if-eq p2, v0, :cond_1

    const/16 v0, 0x10e

    if-ne p2, v0, :cond_2

    .line 1063
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSelfFlip()I

    move-result v0

    if-nez v0, :cond_2

    .line 1064
    const/16 v0, 0xb4

    invoke-static {p1, v0, v8}, Lcom/sec/android/app/camera/util/ImageUtils;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1067
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v7

    .line 1068
    .local v7, "previewRect":Landroid/graphics/Rect;
    new-instance v0, Lcom/samsung/android/glview/GLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v2, v7, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v7, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLandroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mReviewImage:Lcom/samsung/android/glview/GLImage;

    .line 1069
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mReviewImageGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mReviewImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1071
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mReviewImageGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v8}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1072
    return-void
.end method

.method private setSoundAndShotType(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 1075
    const-string v0, "SoundAndShot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SoundAndShotMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotMode:I

    .line 1078
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotMode:I

    if-nez v0, :cond_0

    .line 1079
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->updateLayoutForRatio()V

    .line 1080
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->switchScreen(I)V

    .line 1081
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->resetProgressBar()V

    .line 1082
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->startSoundRecording()V

    .line 1087
    :goto_0
    return-void

    .line 1084
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->switchScreen(I)V

    .line 1085
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->stopSoundRecording()V

    goto :goto_0
.end method

.method private showProgressBar()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1090
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 1091
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecProgressBarBG:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1090
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1093
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecTimerIMG:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1094
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotHandler:Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;

    if-eqz v1, :cond_1

    .line 1095
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotHandler:Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;

    const/4 v2, 0x3

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1096
    :cond_1
    return-void
.end method

.method private showSoundRecordProgress()V
    .locals 2

    .prologue
    .line 1099
    const-string v0, "SoundAndShot"

    const-string v1, "showSoundRecordProgress"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    .line 1101
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1103
    :cond_0
    return-void
.end method

.method private soundAndShotAddVoiceCompleted()V
    .locals 6

    .prologue
    .line 1106
    const-string v1, "SoundAndShot"

    const-string v2, "soundAndShotAddVoiceCompleted()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    const-string v1, "SoundAndShot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DB update : getLastContentData().getFilePath() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentData()Lcom/sec/android/app/camera/interfaces/Engine$ContentData;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/Engine$ContentData;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentData()Lcom/sec/android/app/camera/interfaces/Engine$ContentData;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine$ContentData;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v1, v2, v4, v5}, Lcom/sec/android/app/camera/util/ImageUtils;->updatePostSavingFile(Landroid/content/ContentResolver;Landroid/net/Uri;J)V

    .line 1111
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.MTP.OBJECT_PROP_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1112
    .local v0, "action":Landroid/content/Intent;
    const-string v1, "Path"

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentData()Lcom/sec/android/app/camera/interfaces/Engine$ContentData;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine$ContentData;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1113
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1114
    return-void
.end method

.method private soundAndshotAddVoiceRecordingFinished()V
    .locals 3

    .prologue
    .line 1117
    const-string v1, "SoundAndShot"

    const-string v2, "soundAndshotAddVoiceRecordingFinished()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentData()Lcom/sec/android/app/camera/interfaces/Engine$ContentData;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentFilePath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1119
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1120
    .local v0, "sefFile":Ljava/io/File;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->isSoundScene(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1121
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->addAudio(Ljava/io/File;)V

    .line 1124
    .end local v0    # "sefFile":Ljava/io/File;
    :cond_0
    return-void
.end method

.method private soundAndshotAddVoiceRecordingPaused()V
    .locals 3

    .prologue
    .line 1127
    const-string v1, "SoundAndShot"

    const-string v2, "soundAndshotAddVoiceRecordingPaused()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentData()Lcom/sec/android/app/camera/interfaces/Engine$ContentData;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentFilePath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1129
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1130
    .local v0, "sefFile":Ljava/io/File;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->isSoundScene(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1131
    const-string v1, "SoundAndShot"

    const-string v2, "the sound file is not stored. store it again"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->stopSoundRecordingByExternalEvent(Ljava/io/File;)V

    .line 1135
    .end local v0    # "sefFile":Ljava/io/File;
    :cond_0
    return-void
.end method

.method private startMicAnimation()V
    .locals 2

    .prologue
    .line 1138
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecIndicatorHandler:Lcom/sec/android/app/camera/shootingmode/SoundAndShot$RecIndicatorHandler;

    if-eqz v0, :cond_0

    .line 1139
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecIndicatorHandler:Lcom/sec/android/app/camera/shootingmode/SoundAndShot$RecIndicatorHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot$RecIndicatorHandler;->sendEmptyMessage(I)Z

    .line 1141
    :cond_0
    return-void
.end method

.method private startRecordingByCreateButton()V
    .locals 2

    .prologue
    .line 1144
    const-string v0, "SoundAndShot"

    const-string v1, "startRecordingByCreateButton"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->startSoundRecording()V

    .line 1146
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->showSoundRecordProgress()V

    .line 1147
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->startMicAnimation()V

    .line 1148
    return-void
.end method

.method private startSoundRecording()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1151
    const-string v0, "SoundAndShot"

    const-string v1, "startSoundRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-nez v0, :cond_0

    .line 1154
    const-string v0, "SoundAndShot"

    const-string v1, "Error occurred"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    :goto_0
    return-void

    .line 1157
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/RestrictionPolicyUtil;->isAudioRecordRestricted(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1158
    const-string v0, "SoundAndShot"

    const-string v1, "Audio record not allowed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1163
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->qar:Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->startRecorder()V

    .line 1164
    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecording:Z

    .line 1166
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isMicrophonePlugged()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1167
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v1, 0x7f0901fd

    invoke-static {v0, v1, v3}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1170
    :cond_2
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotScreen:I

    if-nez v0, :cond_3

    .line 1171
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->disableAlertSound(Landroid/content/Context;)V

    .line 1172
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.camera.DISABLE_VIBRATOR"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1173
    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->setAudioRecordIndicator(Z)V

    .line 1174
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->updateRecordingAmplevel()V

    .line 1175
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->showProgressBar()V

    .line 1176
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecProgressBar:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 1178
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecAddVoiceProgressBar:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1179
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->updateRecordingAmplevel()V

    .line 1180
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->setRecordProgressIncreased()V

    goto :goto_0
.end method

.method private stopMicAnimation()V
    .locals 2

    .prologue
    .line 1185
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecIndicatorHandler:Lcom/sec/android/app/camera/shootingmode/SoundAndShot$RecIndicatorHandler;

    if-eqz v0, :cond_0

    .line 1186
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecIndicatorHandler:Lcom/sec/android/app/camera/shootingmode/SoundAndShot$RecIndicatorHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot$RecIndicatorHandler;->removeMessages(I)V

    .line 1188
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mUpdateCnt:I

    .line 1189
    return-void
.end method

.method private stopSoundRecording()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1192
    const-string v0, "SoundAndShot"

    const-string v1, "stopSoundRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecording:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotScreen:I

    if-nez v0, :cond_0

    .line 1194
    const-string v0, "SoundAndShot"

    const-string v1, "stopSoundRecording : not recording state"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    :goto_0
    return-void

    .line 1198
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-nez v0, :cond_1

    .line 1199
    const-string v0, "SoundAndShot"

    const-string v1, "Error occurred"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1202
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->qar:Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->stopRecorder()V

    .line 1203
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecording:Z

    .line 1205
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotScreen:I

    if-nez v0, :cond_2

    .line 1206
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->RecordedTime:I

    .line 1207
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mFull:Z

    .line 1208
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->enableAlertSound(Landroid/content/Context;)V

    .line 1209
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.camera.ENABLE_VIBRATOR"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1210
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->setAudioRecordIndicator(Z)V

    .line 1214
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotHandler:Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;

    if-eqz v0, :cond_3

    .line 1215
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotHandler:Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;->removeMessages(I)V

    .line 1216
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotHandler:Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;->removeMessages(I)V

    .line 1219
    :cond_3
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotScreen:I

    if-nez v0, :cond_4

    .line 1220
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->hideProgressBar()V

    goto :goto_0

    .line 1222
    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->hideSoundRecordProgressBar()V

    .line 1223
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->resetManualMode()V

    .line 1225
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->enableAlertSound(Landroid/content/Context;)V

    .line 1226
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.camera.ENABLE_VIBRATOR"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private stopSoundRecordingByExternalEvent(Ljava/io/File;)V
    .locals 5
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 1231
    const-string v1, "SoundAndShot"

    const-string v2, "stopSoundRecordingByExternalEvent"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->qar:Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->getRecordedAudioStream()[B

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->rec_audio:[B

    .line 1235
    :try_start_0
    const-string v1, "SoundShot_Meta_Info"

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->rec_audio:[B

    const/16 v3, 0x800

    const/4 v4, 0x1

    invoke-static {p1, v1, v2, v3, v4}, Lcom/samsung/android/media/SemExtendedFormat;->addData(Ljava/io/File;Ljava/lang/String;[BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1240
    :goto_0
    return-void

    .line 1237
    :catch_0
    move-exception v0

    .line 1238
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "SoundAndShot"

    const-string v2, "Error stopSoundRecordingByExternalEvent while saveAudioJPEG"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private switchScreen(I)V
    .locals 5
    .param p1, "screen"    # I

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 1243
    const-string v0, "SoundAndShot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchScreen : screen = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotScreen:I

    .line 1247
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotScreen:I

    if-nez v0, :cond_1

    .line 1248
    const-string v0, "SoundAndShot"

    const-string v1, "switchScreen()- It will show normal menu"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotSeq:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1250
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotAddVoice:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1252
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x200

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    .line 1253
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 1260
    :cond_0
    :goto_0
    return-void

    .line 1254
    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotScreen:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1255
    const-string v0, "SoundAndShot"

    const-string v1, "switchScreen()- It will show addvoice menu"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotSeq:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1257
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotAddVoice:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateLayoutForRatio()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    .line 1267
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-nez v1, :cond_0

    .line 1268
    const-string v1, "SoundAndShot"

    const-string v2, "Error occurred"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    :goto_0
    return-void

    .line 1271
    :cond_0
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    sub-int v0, v1, v2

    .line 1272
    .local v0, "ratioMargin":I
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotMode:I

    if-nez v1, :cond_1

    .line 1273
    const-string v1, "SoundAndShot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateLayoutForRatio(), SoundAndShotMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecProgressBar:Lcom/samsung/android/glview/GLViewGroup;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_WIDTH:I

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_WIDTH:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v2, v6

    int-to-float v3, v0

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_HEIGHT:I

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_MARGIN_0_180:I

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_HEIGHT:I

    add-int/2addr v4, v5

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v1, v7, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 1276
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecProgressBar:Lcom/samsung/android/glview/GLViewGroup;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_WIDTH:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_WIDTH:I

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_WIDTH:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v6

    sub-float/2addr v2, v3

    int-to-float v3, v0

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_HEIGHT:I

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_MARGIN_0_180:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v1, v9, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 1278
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecProgressBar:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v8}, Lcom/samsung/android/glview/GLViewGroup;->updateLayout(Z)V

    goto :goto_0

    .line 1280
    :cond_1
    const-string v1, "SoundAndShot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateLayoutForRatio(), SoundAndShotMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_WIDTH:I

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_GROUP_WIDTH:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v2, v6

    int-to-float v3, v0

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_HEIGHT:I

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_GROUP_HEIGHT:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v6

    invoke-virtual {v1, v7, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 1282
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_WIDTH:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_WIDTH:I

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_GROUP_WIDTH:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v6

    sub-float/2addr v2, v3

    int-to-float v3, v0

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_HEIGHT:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_HEIGHT:I

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_GROUP_HEIGHT:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v4, v6

    sub-float/2addr v3, v4

    invoke-virtual {v1, v9, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 1284
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v8}, Lcom/samsung/android/glview/GLViewGroup;->updateLayout(Z)V

    goto/16 :goto_0
.end method

.method private updateRecMicImage()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1289
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecIndicatorHandler:Lcom/sec/android/app/camera/shootingmode/SoundAndShot$RecIndicatorHandler;

    if-eqz v0, :cond_0

    .line 1290
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecIndicatorHandler:Lcom/sec/android/app/camera/shootingmode/SoundAndShot$RecIndicatorHandler;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot$RecIndicatorHandler;->removeMessages(I)V

    .line 1291
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mUpdateCnt:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mUpdateCnt:I

    .line 1292
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mMicImage:Lcom/samsung/android/glview/GLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mMicImageArray:[I

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mUpdateCnt:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 1293
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecIndicatorHandler:Lcom/sec/android/app/camera/shootingmode/SoundAndShot$RecIndicatorHandler;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v4, v2, v3}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot$RecIndicatorHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1295
    :cond_0
    return-void
.end method

.method private updateRecordingAmplevel()V
    .locals 4

    .prologue
    .line 1298
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotHandler:Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;

    if-eqz v0, :cond_0

    .line 1299
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotHandler:Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1300
    :cond_0
    return-void
.end method

.method private waitForAudioThread()V
    .locals 1

    .prologue
    .line 1303
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->qar:Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->waitForAudioThread()V

    .line 1304
    return-void
.end method


# virtual methods
.method public isCapturing()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 242
    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecording:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotMode:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isChangingShootingModeDisabled()Z
    .locals 1

    .prologue
    .line 247
    const/4 v0, 0x0

    return v0
.end method

.method public isZoomDisabled()Z
    .locals 1

    .prologue
    .line 252
    const/4 v0, 0x0

    return v0
.end method

.method public onActivate(Lcom/sec/android/app/camera/interfaces/Engine;)V
    .locals 5
    .param p1, "engine"    # Lcom/sec/android/app/camera/interfaces/Engine;

    .prologue
    const/16 v4, 0x4d

    const/4 v3, 0x0

    .line 257
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 258
    new-instance v1, Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;-><init>(Lcom/sec/android/app/camera/shootingmode/SoundAndShot;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotHandler:Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;

    .line 259
    new-instance v1, Lcom/sec/android/app/camera/shootingmode/SoundAndShot$RecIndicatorHandler;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot$RecIndicatorHandler;-><init>(Lcom/sec/android/app/camera/shootingmode/SoundAndShot;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecIndicatorHandler:Lcom/sec/android/app/camera/shootingmode/SoundAndShot$RecIndicatorHandler;

    .line 260
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 261
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "camera.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 262
    const-string v1, "camera.action.COVER_ATTACHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 263
    const-string v1, "camera.action.COVER_DETACHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 264
    const-string v1, "camera.action.ACTION_ERROR_FINISH_CAMERA"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 265
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->register(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 267
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 268
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setSideQuickSettingItems([I)V

    .line 269
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->setHRMSensor(Z)V

    .line 273
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 275
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestAudioFocus()V

    .line 276
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1, v4, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 279
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/16 v2, 0x12

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    .line 280
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->setOnShowListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;)V

    .line 281
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V

    .line 283
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setPrepareDBUpdateListener(Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;)V

    .line 284
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->sendOrientationInfoToHAL()V

    .line 286
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSoundAndShotMode()I

    move-result v1

    if-nez v1, :cond_0

    .line 287
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1, v4, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 290
    :cond_0
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecording:Z

    .line 292
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotMode:I

    if-nez v1, :cond_1

    .line 293
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->startSoundRecording()V

    .line 295
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->updateLayoutForRatio()V

    .line 296
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->isRecordKeyReleased:Z

    .line 297
    return-void

    .line 271
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_1

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setSideQuickSettingItems([I)V

    goto :goto_0

    .line 268
    :array_0
    .array-data 4
        0xc
        0x4d
    .end array-data

    .line 271
    :array_1
    .array-data 4
        0x3
        0xc
        0x4d
    .end array-data
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 302
    const/4 v0, 0x0

    return v0
.end method

.method public onCameraSettingChanged(II)V
    .locals 3
    .param p1, "menuId"    # I
    .param p2, "modeId"    # I

    .prologue
    .line 307
    const-string v0, "SoundAndShot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCameraSettingsChanged: menuid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", modeid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    :goto_0
    return-void

    .line 311
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 313
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->setSoundAndShotType(I)V

    goto :goto_0

    .line 311
    nop

    :pswitch_data_0
    .packed-switch 0x4d
        :pswitch_0
    .end packed-switch
.end method

.method public onChangeShootingModeParameters(Lcom/samsung/android/camera/core/SemCamera$Parameters;)V
    .locals 2
    .param p1, "parameters"    # Lcom/samsung/android/camera/core/SemCamera$Parameters;

    .prologue
    const/16 v1, 0x7530

    .line 323
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    const/16 v0, 0x3a98

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->setPreviewFpsRange(II)V

    .line 329
    :goto_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraParameters;->getModeString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShootingModeValueForISPset()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 330
    return-void

    .line 326
    :cond_0
    const/16 v0, 0x1f40

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->setPreviewFpsRange(II)V

    goto :goto_0
.end method

.method public onClick(Lcom/samsung/android/glview/GLView;)Z
    .locals 3
    .param p1, "v"    # Lcom/samsung/android/glview/GLView;

    .prologue
    const/4 v0, 0x0

    .line 334
    const-string v1, "SoundAndShot"

    const-string v2, "onClick"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 336
    const-string v1, "SoundAndShot"

    const-string v2, "mCaptureStopButton onClicked"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotHandler:Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;

    if-eqz v1, :cond_0

    .line 338
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotHandler:Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;->removeMessages(I)V

    .line 340
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->soundAndshotAddVoiceRecordingFinished()V

    .line 341
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecording:Z

    .line 343
    const/4 v0, 0x1

    .line 345
    :cond_1
    return v0
.end method

.method public onCreateView(Lcom/samsung/android/glview/GLContext;Lcom/samsung/android/glview/GLViewGroup;Lcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/interfaces/BaseMenuController;Lcom/sec/android/app/camera/interfaces/MenuManager;)V
    .locals 17
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "viewLayout"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p3, "controllerLayout"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p4, "baseMenuController"    # Lcom/sec/android/app/camera/interfaces/BaseMenuController;
    .param p5, "menuManager"    # Lcom/sec/android/app/camera/interfaces/MenuManager;

    .prologue
    .line 350
    const-string v2, "SoundAndShot"

    const-string v3, "SoundAndShot"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    .line 352
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    .line 354
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecProgressBarBG:Ljava/util/ArrayList;

    .line 355
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecProgressBarSeq:Ljava/util/ArrayList;

    .line 357
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecAddVoiceProgressBarBG:Ljava/util/ArrayList;

    .line 358
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecAddVoiceProgressBarSeq:Ljava/util/ArrayList;

    .line 360
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->eqBandListGroup:Ljava/util/ArrayList;

    .line 362
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSoundAndShotMode()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotMode:I

    .line 363
    new-instance v2, Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/glview/GLViewGroup;->getLeft()F

    move-result v4

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/glview/GLViewGroup;->getTop()F

    move-result v5

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/glview/GLViewGroup;->getWidth()F

    move-result v6

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/glview/GLViewGroup;->getHeight()F

    move-result v7

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotSeq:Lcom/samsung/android/glview/GLViewGroup;

    .line 364
    new-instance v2, Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_WIDTH:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_WIDTH:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v3, v4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_HEIGHT:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_MARGIN_0_180:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_HEIGHT:I

    add-int/2addr v5, v6

    sub-int/2addr v3, v5

    int-to-float v5, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_WIDTH:I

    int-to-float v6, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_HEIGHT:I

    int-to-float v7, v3

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecProgressBar:Lcom/samsung/android/glview/GLViewGroup;

    .line 366
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecProgressBar:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    .line 367
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecProgressBar:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setBypassTouch(Z)V

    .line 369
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_WIDTH:I

    div-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    sub-int v15, v2, v3

    .line 370
    .local v15, "ratioMargin":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecProgressBar:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_WIDTH:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_WIDTH:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    int-to-float v5, v15

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_HEIGHT:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_MARGIN_0_180:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_HEIGHT:I

    add-int/2addr v6, v7

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 372
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecProgressBar:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_WIDTH:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_MARGIN_90_270:I

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_HEIGHT:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_HEIGHT:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_WIDTH:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 373
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecProgressBar:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_WIDTH:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_WIDTH:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_WIDTH:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    int-to-float v5, v15

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_HEIGHT:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_MARGIN_0_180:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 375
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecProgressBar:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_WIDTH:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_MARGIN_90_270:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_HEIGHT:I

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_HEIGHT:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_WIDTH:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 377
    const/4 v14, 0x0

    .local v14, "progressSeqPosX":I
    const/16 v16, 0x0

    .line 378
    .local v16, "timerPosX":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    const/16 v2, 0x9

    if-ge v11, v2, :cond_2

    .line 380
    if-nez v11, :cond_0

    .line 381
    const/4 v14, 0x0

    .line 389
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecProgressBarBG:Ljava/util/ArrayList;

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    int-to-float v4, v14

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_SEQ_POS_Y:I

    int-to-float v5, v5

    const v6, 0x7f020275

    move-object/from16 v0, p1

    invoke-direct {v3, v0, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecProgressBarBG:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 391
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecProgressBar:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecProgressBarBG:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/glview/GLView;

    invoke-virtual {v3, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 393
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecProgressBarSeq:Ljava/util/ArrayList;

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    int-to-float v4, v14

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_SEQ_POS_Y:I

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mProgessBarSeqImage:I

    move-object/from16 v0, p1

    invoke-direct {v3, v0, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecProgressBarSeq:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 395
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecProgressBar:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecProgressBarSeq:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/glview/GLView;

    invoke-virtual {v3, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 378
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 382
    :cond_0
    const/16 v2, 0x8

    if-ne v11, v2, :cond_1

    .line 383
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_SEQ_WIDTH:I

    add-int/2addr v2, v14

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_SEQ_SPACING:I

    add-int v14, v2, v3

    .line 384
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_SEQ_WIDTH:I

    add-int/2addr v2, v14

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_SEQ_AND_TIMER_PADDING:I

    add-int v16, v2, v3

    goto/16 :goto_1

    .line 386
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_SEQ_WIDTH:I

    add-int/2addr v2, v14

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_SEQ_SPACING:I

    add-int v14, v2, v3

    goto/16 :goto_1

    .line 398
    :cond_2
    new-instance v2, Lcom/samsung/android/glview/GLImage;

    move/from16 v0, v16

    int-to-float v3, v0

    const/4 v4, 0x0

    const v5, 0x7f020269

    move-object/from16 v0, p1

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecTimerIMG:Lcom/samsung/android/glview/GLImage;

    .line 399
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecTimerIMG:Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 400
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecProgressBar:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecTimerIMG:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 401
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecProgressBar:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setClipping(Z)V

    .line 403
    new-instance v2, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mAudioRecordIndicator:Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;

    .line 404
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mAudioRecordIndicator:Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->setClipping(Z)V

    .line 405
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mAudioRecordIndicator:Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;->setVisibility(I)V

    .line 407
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotSeq:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecProgressBar:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 408
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotSeq:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mAudioRecordIndicator:Lcom/sec/android/app/camera/widget/gl/AudioRecordIndicator;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 410
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotSeq:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 416
    new-instance v2, Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/glview/GLViewGroup;->getLeft()F

    move-result v4

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/glview/GLViewGroup;->getTop()F

    move-result v5

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/glview/GLViewGroup;->getWidth()F

    move-result v6

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/glview/GLViewGroup;->getHeight()F

    move-result v7

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotAddVoice:Lcom/samsung/android/glview/GLViewGroup;

    .line 418
    new-instance v2, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->STOP_BUTTON_POS_X:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->STOP_BUTTON_POS_Y:I

    int-to-float v5, v5

    const v6, 0x7f020101

    const v7, 0x7f020103

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    .line 420
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    .line 421
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f090163

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 422
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 423
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 424
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 425
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setFocusable(Z)V

    .line 426
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    .line 427
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 429
    new-instance v2, Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_WIDTH:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_GROUP_WIDTH:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v3, v4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SCREEN_HEIGHT:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_GROUP_HEIGHT:I

    sub-int/2addr v3, v5

    int-to-float v3, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v3, v5

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_GROUP_WIDTH:I

    int-to-float v6, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_GROUP_HEIGHT:I

    int-to-float v7, v3

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 431
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 432
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    .line 434
    const/4 v10, 0x0

    .local v10, "eqBarPosX":I
    const/4 v13, 0x0

    .line 435
    .local v13, "micPosX":I
    const/4 v11, 0x0

    :goto_2
    const/16 v2, 0x14

    if-ge v11, v2, :cond_6

    .line 436
    if-nez v11, :cond_3

    .line 437
    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->INDICATOR_EQBAR_POS_X_START:I

    .line 444
    :goto_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->eqBandList:Ljava/util/ArrayList;

    .line 445
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_4
    const/16 v2, 0xe

    if-gt v12, v2, :cond_5

    .line 446
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->eqBandList:Ljava/util/ArrayList;

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    int-to-float v4, v10

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->INDICATOR_EQBAR_POS_Y:I

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mEqValueArray:[I

    aget v6, v6, v12

    move-object/from16 v0, p1

    invoke-direct {v3, v0, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 447
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->eqBandList:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/glview/GLView;

    invoke-virtual {v3, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 445
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 438
    .end local v12    # "j":I
    :cond_3
    const/16 v2, 0xa

    if-ne v11, v2, :cond_4

    .line 439
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->INDICATOR_EQBAR_BAND_WIDTH:I

    add-int/2addr v2, v10

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->INDICATOR_EQBAR_BAND_AND_MIC_PADDING:I

    add-int v13, v2, v3

    .line 440
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->INDICATOR_EQBAR_MIC_WIDTH:I

    add-int/2addr v2, v13

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->INDICATOR_EQBAR_BAND_AND_MIC_PADDING:I

    add-int v10, v2, v3

    goto :goto_3

    .line 442
    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->INDICATOR_EQBAR_BAND_WIDTH:I

    add-int/2addr v2, v10

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->INDICATOR_EQBAR_BAND_SPACING:I

    add-int v10, v2, v3

    goto :goto_3

    .line 449
    .restart local v12    # "j":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->eqBandListGroup:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->eqBandList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 435
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 452
    .end local v12    # "j":I
    :cond_6
    new-instance v2, Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    int-to-float v4, v13

    const/4 v5, 0x0

    const v6, 0x7f020267

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mMicImage:Lcom/samsung/android/glview/GLImage;

    .line 453
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mMicImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 455
    new-instance v2, Lcom/samsung/android/glview/GLViewGroup;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_ADD_VOICE_POS_Y:I

    int-to-float v5, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_GROUP_WIDTH:I

    int-to-float v6, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_ADD_VOICE_HEIGHT:I

    int-to-float v7, v3

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecAddVoiceProgressBar:Lcom/samsung/android/glview/GLViewGroup;

    .line 457
    const/4 v11, 0x0

    :goto_5
    const/16 v2, 0x9

    if-ge v11, v2, :cond_8

    .line 458
    if-nez v11, :cond_7

    .line 459
    const/4 v14, 0x0

    .line 464
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecAddVoiceProgressBarBG:Ljava/util/ArrayList;

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    int-to-float v4, v14

    const/4 v5, 0x0

    const v6, 0x7f020275

    move-object/from16 v0, p1

    invoke-direct {v3, v0, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 465
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecAddVoiceProgressBar:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecAddVoiceProgressBarBG:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/glview/GLView;

    invoke-virtual {v3, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 466
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecAddVoiceProgressBarBG:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 468
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecAddVoiceProgressBarSeq:Ljava/util/ArrayList;

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    int-to-float v4, v14

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mProgessBarSeqImage:I

    move-object/from16 v0, p1

    invoke-direct {v3, v0, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 469
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecAddVoiceProgressBar:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecAddVoiceProgressBarSeq:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/glview/GLView;

    invoke-virtual {v3, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 457
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 461
    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_ADD_VOICE_SEQ_WIDTH:I

    add-int/2addr v2, v14

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_BAR_ADD_VOICE_SEQ_SPACING:I

    add-int v14, v2, v3

    goto :goto_6

    .line 471
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecAddVoiceProgressBar:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 473
    new-instance v2, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_GROUP_WIDTH:I

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_TEXT_WIDTH:I

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float v4, v3, v4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_TEXT_POS_Y:I

    int-to-float v5, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_TEXT_WIDTH:I

    int-to-float v6, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_TEXT_HEIGHT:I

    int-to-float v7, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0/9 "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 474
    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f09022b

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_TEXT_FONT_SIZE:I

    int-to-float v9, v3

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;F)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mProgressText:Lcom/samsung/android/glview/GLText;

    .line 476
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mProgressText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 477
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mProgressText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 478
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mProgressText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_TEXT_STROKE_WIDTH:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->PROGRESS_TEXT_STROKE_COLOR:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 479
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mProgressText:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->SOUND_AND_SHOT_PROGRESS_BAR_TEXT_SHADOW_ENABLE:Z

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setShadowVisibility(Z)V

    .line 480
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mProgressText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 482
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->initAddVoice()V

    .line 484
    new-instance v2, Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mReviewImageGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 485
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotAddVoice:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mReviewImageGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 486
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotAddVoice:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 487
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotAddVoice:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 489
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotAddVoice:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 490
    return-void
.end method

.method public onDBUpdatePrepared(Landroid/content/ContentValues;Ljava/io/File;)Z
    .locals 2
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    .line 495
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->isRecorded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 496
    const-string v0, "sef_file_type"

    const/16 v1, 0x800

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 499
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotScreen:I

    if-eqz v0, :cond_1

    .line 500
    const-string v0, "date_modified"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 502
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onHRMShutterDetected()V
    .locals 2

    .prologue
    .line 507
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecording:Z

    if-eqz v0, :cond_0

    .line 508
    const-string v0, "SoundAndShot"

    const-string v1, "onHRMShutterDetected returned - Recording"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    :goto_0
    return-void

    .line 512
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->isAddVoiceScreen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 513
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotHandler:Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;

    if-eqz v0, :cond_1

    .line 514
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotHandler:Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;->removeMessages(I)V

    .line 516
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->soundAndshotAddVoiceRecordingFinished()V

    goto :goto_0

    .line 518
    :cond_2
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;->HRM_SHUTTER:Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->onShutterKeyReleased(Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;)Z

    goto :goto_0
.end method

.method public onHide(Lcom/sec/android/app/camera/interfaces/MenuBase;)V
    .locals 2
    .param p1, "menu"    # Lcom/sec/android/app/camera/interfaces/MenuBase;

    .prologue
    .line 524
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 525
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotMode:I

    if-nez v0, :cond_0

    .line 526
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecProgressBar:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 529
    :cond_0
    return-void
.end method

.method public onImageStoringCompleted()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 533
    const-string v1, "SoundAndShot"

    const-string v2, "onImageStoringCompleted"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotMode:I

    if-ne v1, v5, :cond_2

    .line 536
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotScreen:I

    if-nez v1, :cond_0

    .line 537
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentData()Lcom/sec/android/app/camera/interfaces/Engine$ContentData;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine$ContentData;->getCaptureData()[B

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntWidth(I)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 538
    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraResolution()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntHeight(I)I

    move-result v3

    .line 537
    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/util/ImageUtils;->getReviewBitmap([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 539
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentOrientation()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 540
    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v2

    .line 539
    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->setReviewImage(Landroid/graphics/Bitmap;IZ)V

    .line 541
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->showSoundAndShowAddVoice()V

    .line 542
    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->switchScreen(I)V

    .line 548
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentData()Lcom/sec/android/app/camera/interfaces/Engine$ContentData;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 549
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentData()Lcom/sec/android/app/camera/interfaces/Engine$ContentData;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine$ContentData;->getCaptureBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentData()Lcom/sec/android/app/camera/interfaces/Engine$ContentData;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/Engine$ContentData;->getOrientation()I

    move-result v3

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->updateThumbnailButton(Landroid/graphics/Bitmap;IZ)V

    .line 551
    :cond_1
    return v5

    .line 544
    :cond_2
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotMode:I

    if-nez v1, :cond_0

    .line 545
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->saveAudio(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onInactivate()V
    .locals 5

    .prologue
    const/16 v4, 0x4d

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 556
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->removeSideQuickSettingItems()V

    .line 558
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->abandonAudioFocus()V

    .line 560
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 561
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->setHRMSensor(Z)V

    .line 564
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setPrepareDBUpdateListener(Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;)V

    .line 565
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, v4, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 567
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->stopSoundRecording()V

    .line 569
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecording:Z

    .line 571
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 572
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->unregister(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 575
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotHandler:Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;

    if-eqz v0, :cond_2

    .line 576
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotHandler:Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;->removeMessages(I)V

    .line 577
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotHandler:Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;->removeMessages(I)V

    .line 579
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->soundAndshotAddVoiceRecordingPaused()V

    .line 580
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isPausing()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->isRecordKeyReleased:Z

    if-nez v0, :cond_3

    .line 581
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v4, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 584
    :cond_3
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotMode:I

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->isRecordKeyReleased:Z

    if-eqz v0, :cond_4

    .line 585
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->waitForAudioThread()V

    .line 587
    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->clear()V

    .line 588
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 592
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 593
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x52

    if-ne p1, v0, :cond_1

    .line 594
    :cond_0
    const/4 v0, 0x1

    .line 596
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 601
    sparse-switch p1, :sswitch_data_0

    .line 625
    :goto_0
    :sswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLButton;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    .line 626
    const/16 v1, 0x52

    if-ne p1, v1, :cond_4

    .line 631
    :cond_0
    :goto_1
    return v0

    .line 603
    :sswitch_1
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotScreen:I

    if-nez v1, :cond_1

    .line 604
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->stopSoundRecording()V

    goto :goto_0

    .line 606
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotHandler:Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;

    if-eqz v1, :cond_2

    .line 607
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotHandler:Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;->removeMessages(I)V

    .line 610
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v1, :cond_0

    .line 611
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLContext;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 612
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLButton;->requestFocus()Z

    .line 614
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->soundAndshotAddVoiceRecordingFinished()V

    goto :goto_1

    .line 631
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 601
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x1b -> :sswitch_0
    .end sparse-switch
.end method

.method public onMenuSelected(II)Z
    .locals 1
    .param p1, "menuId"    # I
    .param p2, "modeId"    # I

    .prologue
    .line 636
    const/4 v0, 0x0

    return v0
.end method

.method public onRecordKeyCanceled()Z
    .locals 1

    .prologue
    .line 641
    const/4 v0, 0x0

    return v0
.end method

.method public onRecordKeyPressed()Z
    .locals 1

    .prologue
    .line 646
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->isRecordKeyReleased:Z

    .line 647
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->switchToRecordingMode()V

    .line 648
    const/4 v0, 0x0

    return v0
.end method

.method public onRecordKeyReleased()Z
    .locals 1

    .prologue
    .line 653
    const/4 v0, 0x0

    return v0
.end method

.method public onShow(Lcom/sec/android/app/camera/interfaces/MenuBase;)V
    .locals 2
    .param p1, "menu"    # Lcom/sec/android/app/camera/interfaces/MenuBase;

    .prologue
    .line 658
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 659
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotMode:I

    if-nez v0, :cond_0

    .line 660
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecProgressBar:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 663
    :cond_0
    return-void
.end method

.method public onShutterKeyLongPressed()Z
    .locals 1

    .prologue
    .line 667
    const/4 v0, 0x0

    return v0
.end method

.method public onShutterKeyPressed()Z
    .locals 1

    .prologue
    .line 672
    const/4 v0, 0x0

    return v0
.end method

.method public onShutterKeyReleased(Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;)Z
    .locals 3
    .param p1, "captureMethod"    # Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;

    .prologue
    const/4 v0, 0x1

    .line 677
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->isCapturing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 678
    const-string v1, "SoundAndShot"

    const-string v2, "return sound and shot recording"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    :goto_0
    return v0

    .line 681
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isSwitchingCamera()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->isCameraSwitchingAnimationRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 682
    :cond_1
    const-string v1, "SoundAndShot"

    const-string v2, "Switch camera is now in progress."

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 685
    :cond_2
    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecording:Z

    if-nez v1, :cond_3

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotMode:I

    if-ne v1, v0, :cond_3

    .line 686
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecording:Z

    .line 689
    :cond_3
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mSoundAndShotScreen:I

    if-nez v0, :cond_4

    .line 690
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/Engine;->handleSingleShutterReleased(Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;)V

    .line 693
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->hideShootingModeText()V

    .line 694
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSingleCaptureEvent(I)V
    .locals 0
    .param p1, "event"    # I

    .prologue
    .line 699
    return-void
.end method

.method public onTimerEvent(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 703
    return-void
.end method

.method protected showSoundAndShowAddVoice()V
    .locals 6

    .prologue
    const/16 v5, 0x9

    const/4 v4, 0x0

    .line 706
    const-string v2, "SoundAndShot"

    const-string v3, "showSoundAndShowAddVoice()"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v3, 0x200

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->disableView(I)V

    .line 709
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v3, -0x181

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    .line 710
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isPausing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 711
    const-string v2, "SoundAndShot"

    const-string v3, "stop onShow by pausing main activity"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    :goto_0
    return-void

    .line 714
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mReviewImageGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v2, :cond_1

    .line 715
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mReviewImageGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2, v4}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 716
    :cond_1
    const/16 v2, 0xb

    new-array v0, v2, [I

    fill-array-data v0, :array_0

    .line 717
    .local v0, "MicAmplitude":[I
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->setRecordingAmplitude([I)V

    .line 719
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 721
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mMicImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2, v4}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 723
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mProgressText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v4}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 724
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v5, :cond_2

    .line 725
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecAddVoiceProgressBarBG:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2, v4}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 724
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 728
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecAddVoiceProgressBar:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2, v4}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 730
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v5, :cond_3

    .line 731
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecAddVoiceProgressBarSeq:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 730
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 734
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2, v4}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 735
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->startRecordingByCreateButton()V

    .line 736
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLContext;->isTouchExplorationEnabled()Z

    move-result v2

    if-nez v2, :cond_4

    .line 737
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLButton;->requestFocus()Z

    .line 739
    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->updateLayoutForRatio()V

    goto :goto_0

    .line 716
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method
