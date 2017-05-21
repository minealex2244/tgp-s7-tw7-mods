.class public Lcom/sec/android/app/camera/shootingmode/VideoCollage;
.super Lcom/sec/android/app/camera/shootingmode/RecordingController;
.source "VideoCollage.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/ShootingMode;
.implements Lcom/samsung/android/glview/GLView$TouchListener;
.implements Lcom/samsung/android/glview/GLView$OrientationChangeListener;
.implements Lcom/samsung/android/glview/GLView$ClickListener;
.implements Lcom/samsung/android/glview/GLView$AnimationEventListener;
.implements Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;
.implements Lcom/sec/android/app/camera/interfaces/CameraContext$CameraDialogListener;
.implements Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;
.implements Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$EffectProcessorListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$EngineStateListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$VideoContentsLoggingListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;,
        Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION_570:I = 0x23a

.field private static final CAMERA_ID_NONE:I = -0x1

.field private static final COLLAGE1BY1_01_ICONLINE_ARRAY:[[I

.field private static final COLLAGE1BY1_01_ICON_ARRAY:[[I

.field private static final COLLAGE1BY1_02_ICONLINE_ARRAY:[[I

.field private static final COLLAGE1BY1_02_ICON_ARRAY:[[I

.field private static final COLLAGE1BY1_03_ICONLINE_ARRAY:[[I

.field private static final COLLAGE1BY1_03_ICON_ARRAY:[[I

.field private static final COLLAGE1BY1_04_ICONLINE_ARRAY:[[I

.field private static final COLLAGE1BY1_04_ICON_ARRAY:[[I

.field private static final COLLAGE4BY3_01_ICONLINE_ARRAY:[[I

.field private static final COLLAGE4BY3_01_ICON_ARRAY:[[I

.field private static final COLLAGE4BY3_02_ICONLINE_ARRAY:[[I

.field private static final COLLAGE4BY3_02_ICON_ARRAY:[[I

.field private static final COLLAGE4BY3_03_ICONLINE_ARRAY:[[I

.field private static final COLLAGE4BY3_03_ICON_ARRAY:[[I

.field private static final COLLAGE4BY3_04_ICONLINE_ARRAY:[[I

.field private static final COLLAGE4BY3_04_ICON_ARRAY:[[I

.field private static final COLLAGE_ICON_ORDER_DEFAULT:I = 0x0

.field private static final COLLAGE_ICON_ORDER_HORIZONTAL:I = 0x1

.field private static final COLLAGE_ICON_ORDER_VERTICAL:I = 0x0

.field private static final DIM_CROP_ALPHA_VALUE:F = 0.45f

.field private static final EDITOR_COLLAGE_1_BY_1_1x2:I = 0x1

.field private static final EDITOR_COLLAGE_1_BY_1_1x22:I = 0x7

.field private static final EDITOR_COLLAGE_1_BY_1_1x3:I = 0x2

.field private static final EDITOR_COLLAGE_1_BY_1_2x2:I = 0x3

.field private static final EDITOR_COLLAGE_4_BY_3_1x2:I = 0x4

.field private static final EDITOR_COLLAGE_4_BY_3_1x22:I = 0x8

.field private static final EDITOR_COLLAGE_4_BY_3_1x3:I = 0x5

.field private static final EDITOR_COLLAGE_4_BY_3_2x2:I = 0x6

.field private static final EDITOR_COLLAGE_NONE:I = 0x0

.field private static final FOCUS_PAUSE_BUTTON:I = 0x1

.field private static final FOCUS_RECORDING_BUTTON:I = 0x0

.field private static final FOCUS_RESUME_BUTTON:I = 0x2

.field private static final INTERVAL_UPDATE_PROGRESS:I = 0x1f4

.field private static final KEY_VIDEO_COLLAGE_IS_PROJECT_SAVED:Ljava/lang/String; = "pref_video_collage_is_project_saved_key"

.field private static final KEY_VIDEO_COLLAGE_IS_PROJECT_SECURE_SAVED:Ljava/lang/String; = "pref_video_collage_is_project_secure_saved_key"

.field private static final LAUNCH_EDITOR_MSG:I = 0x1

.field private static final MAX_COLLAGE_COUNT:I = 0x5

.field private static final MAX_PROGRESS:I = 0x3e8

.field private static final NO_VALUE:I = -0x1

.field private static final RECORDING_DURATION_GUARANTEE_TIME:I = 0x46

.field private static final SHOW_UI_DELAY_TIME:I = 0x32

.field private static final SHOW_UI_MSG:I = 0x3

.field private static final SLOW_MOTION_ENCODING_BITRATE:I = 0x2dc6c0

.field private static final SWITCH_CAMERA:I = 0x4

.field private static final TAG:Ljava/lang/String; = "VideoCollage"

.field private static final UPDATE_REC_INDICATOR_MSG:I = 0x2

.field private static final VIDEO_COLLAGE_EDITOR_CLASS_NAME:Ljava/lang/String; = "com.sec.android.app.clipvideo.activity.ClipVideoEditorActivity"

.field private static final VIDEO_COLLAGE_EDITOR_PACKAGE:Ljava/lang/String; = "com.sec.android.app.clipvideo"

.field private static final VIDEO_COLLAGE_PROJECT_SAVE_FILE:Ljava/lang/String; = "VideoCollageProjectSave"

.field private static final VIDEO_COLLAGE_PROJECT_SECURE_SAVE_FILE:Ljava/lang/String; = "VideoCollageProjectSecureSave"

.field private static final VIDEO_COLLAGE_SAVE_DIRECTORY:Ljava/lang/String; = "/.VideoCollage"


# instance fields
.field private final BASEMENU_GROUP_ICON_GAP:F

.field private final CAF_BUTTON_DIAMETER:I

.field private final CAF_BUTTON_POS_X:I

.field private final CAF_BUTTON_POS_Y:I

.field private final CAF_BUTTON_POS_Y_BOTTOM:I

.field private final COLLAGE_TYPE_HEIGHT:I

.field private final COLLAGE_TYPE_MARGIN_Y:I

.field private final COLLAGE_TYPE_MARGIN_Y_270:I

.field private final COLLAGE_TYPE_WIDTH:I

.field private final FLASH_BUTTON_HEIGHT:I

.field private final FLASH_BUTTON_POS_X:I

.field private final FLASH_BUTTON_POS_Y:I

.field private final FLASH_BUTTON_WIDTH:I

.field private final NORMAL_RATIO_LANDSCAPE_CROP_WIDTH_DIVIDE_2:F

.field private final NORMAL_RATIO_PREVIEW_LEFT:I

.field private final PROGRESSBAR_DIVIDER_WIDTH:I

.field private final PROGRESSBAR_HEIGHT:I

.field private final PROGRESSBAR_WIDTH:I

.field private final PROGRESS_GROUP_HEIGHT:I

.field private final PROGRESS_GROUP_MARGIN_Y:I

.field private final PROGRESS_GROUP_MARGIN_Y_270:I

.field private final PROGRESS_GROUP_WIDTH:I

.field private final RECORDING_ICON_WIDTH:I

.field private final RECORDING_TIME_GROUP_HEIGHT:I

.field private final RECORDING_TIME_GROUP_MARGIN_Y:I

.field private final RECORDING_TIME_GROUP_MARGIN_Y_270:I

.field private final RECORDING_TIME_GROUP_WIDTH:I

.field private final RECORDING_TIME_TEXT_LEFT_PADDING:I

.field private final RECORDING_TIME_TEXT_POS_X:I

.field private final RECORDING_TIME_TEXT_SIZE:F

.field private final RECORDING_TIME_TEXT_STROKE_COLOR:I

.field private final RECORDING_TIME_TEXT_STROKE_WIDTH:I

.field private final RECORDING_TIME_TEXT_WIDTH:I

.field private final RIGHT_SIDE_MENU_POS_X:I

.field private final SCREEN_HEIGHT:I

.field private final SCREEN_NORMAL_WIDTH:I

.field private final SCREEN_WIDTH:I

.field private final SHUTTER_BUTTON_PORTRAIT_BOTTOM_PADDING:F

.field private final SHUTTER_BUTTON_POS_Y:I

.field private final SHUTTER_BUTTON_WIDTH:F

.field private final SIDE_MENU_HEIGHT:I

.field private final SIDE_MENU_WIDTH:I

.field private final SWITCH_BUTTON_HEIGHT:I

.field private final SWITCH_BUTTON_POS_X:I

.field private final SWITCH_BUTTON_POS_Y:I

.field private final SWITCH_BUTTON_POS_Y_FRONT:I

.field private final SWITCH_BUTTON_POS_Y_REAR:I

.field private final SWITCH_BUTTON_WIDTH:I

.field private final UNDO_BUTTON_DIAMETER:I

.field private final UNDO_BUTTON_WIDTH:I

.field private mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

.field private mCAFButton:Lcom/samsung/android/glview/GLButton;

.field private mCollageTypeGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mCollageTypeIcon:Lcom/samsung/android/glview/GLImage;

.field private mCollageTypeIconLine:Lcom/samsung/android/glview/GLImage;

.field private mCropAreaGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mCurrentOrientation:I

.field private mEffectLevelSliderMenu:Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;

.field private mEffectThumbnailListMenu:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

.field private mFirstCameraId:I

.field private mFlashButton:Lcom/sec/android/app/camera/widget/gl/Item;

.field private mIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

.field private mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

.field private mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

.field private mIsCameraSwitching:Z

.field private mIsLayoutUpdateNeeded:Z

.field private mIsNeedBackupRecordingTime:Z

.field private mIsNeedDrawingProgressDivider:Z

.field private mIsTimerCounting:Z

.field private mLastDivider:Lcom/samsung/android/glview/GLImage;

.field private mLowDeviceStorageToast:Landroid/widget/Toast;

.field private mMaxRecordingTimeBackup:I

.field private mMaxRecordingTimeChangeCnt:I

.field private mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

.field private mPauseButton:Lcom/samsung/android/glview/GLButton;

.field private mPortraitCropAreaLeft:Lcom/samsung/android/glview/GLRectangle;

.field private mPortraitCropAreaRight:Lcom/samsung/android/glview/GLRectangle;

.field private mProgressBar:Lcom/samsung/android/glview/GLProgressBar;

.field private mProgressBarDividerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/glview/GLImage;",
            ">;"
        }
    .end annotation
.end field

.field private mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

.field private mRecordingButton:Lcom/samsung/android/glview/GLButton;

.field private mRecordingSideMenu:Lcom/samsung/android/glview/GLViewGroup;

.field private mRecordingTimeInMs:I

.field private mResumeButton:Lcom/samsung/android/glview/GLButton;

.field private mSavedCamcorderResolution:I

.field private mSavedCameraResolution:I

.field private mSavedFlipValue:I

.field private mSavedTimerValue:I

.field private mSavedVideoCollageType:I

.field private mSavedVoiceCommandValue:I

.field private mSavedZoomValue:I

.field private mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

.field private mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

.field private mUndoButton:Lcom/samsung/android/glview/GLButton;

.field private mVideoCollageHandler:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

.field private mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 145
    new-array v0, v2, [[I

    new-array v1, v5, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v3

    new-array v1, v5, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE1BY1_01_ICON_ARRAY:[[I

    .line 148
    new-array v0, v2, [[I

    new-array v1, v6, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v3

    new-array v1, v6, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE1BY1_02_ICON_ARRAY:[[I

    .line 151
    new-array v0, v2, [[I

    const/4 v1, 0x5

    new-array v1, v1, [I

    fill-array-data v1, :array_4

    aput-object v1, v0, v3

    const/4 v1, 0x5

    new-array v1, v1, [I

    fill-array-data v1, :array_5

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE1BY1_03_ICON_ARRAY:[[I

    .line 154
    new-array v0, v2, [[I

    new-array v1, v6, [I

    fill-array-data v1, :array_6

    aput-object v1, v0, v3

    new-array v1, v6, [I

    fill-array-data v1, :array_7

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE1BY1_04_ICON_ARRAY:[[I

    .line 157
    new-array v0, v2, [[I

    new-array v1, v5, [I

    fill-array-data v1, :array_8

    aput-object v1, v0, v3

    new-array v1, v5, [I

    fill-array-data v1, :array_9

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE4BY3_01_ICON_ARRAY:[[I

    .line 160
    new-array v0, v2, [[I

    new-array v1, v6, [I

    fill-array-data v1, :array_a

    aput-object v1, v0, v3

    new-array v1, v6, [I

    fill-array-data v1, :array_b

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE4BY3_02_ICON_ARRAY:[[I

    .line 163
    new-array v0, v2, [[I

    const/4 v1, 0x5

    new-array v1, v1, [I

    fill-array-data v1, :array_c

    aput-object v1, v0, v3

    const/4 v1, 0x5

    new-array v1, v1, [I

    fill-array-data v1, :array_d

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE4BY3_03_ICON_ARRAY:[[I

    .line 166
    new-array v0, v2, [[I

    new-array v1, v6, [I

    fill-array-data v1, :array_e

    aput-object v1, v0, v3

    new-array v1, v6, [I

    fill-array-data v1, :array_f

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE4BY3_04_ICON_ARRAY:[[I

    .line 170
    new-array v0, v2, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_10

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_11

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE1BY1_01_ICONLINE_ARRAY:[[I

    .line 173
    new-array v0, v2, [[I

    new-array v1, v5, [I

    fill-array-data v1, :array_12

    aput-object v1, v0, v3

    new-array v1, v5, [I

    fill-array-data v1, :array_13

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE1BY1_02_ICONLINE_ARRAY:[[I

    .line 176
    new-array v0, v2, [[I

    new-array v1, v6, [I

    fill-array-data v1, :array_14

    aput-object v1, v0, v3

    new-array v1, v6, [I

    fill-array-data v1, :array_15

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE1BY1_03_ICONLINE_ARRAY:[[I

    .line 179
    new-array v0, v2, [[I

    new-array v1, v5, [I

    fill-array-data v1, :array_16

    aput-object v1, v0, v3

    new-array v1, v5, [I

    fill-array-data v1, :array_17

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE1BY1_04_ICONLINE_ARRAY:[[I

    .line 182
    new-array v0, v2, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_18

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_19

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE4BY3_01_ICONLINE_ARRAY:[[I

    .line 185
    new-array v0, v2, [[I

    new-array v1, v5, [I

    fill-array-data v1, :array_1a

    aput-object v1, v0, v3

    new-array v1, v5, [I

    fill-array-data v1, :array_1b

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE4BY3_02_ICONLINE_ARRAY:[[I

    .line 188
    new-array v0, v2, [[I

    new-array v1, v6, [I

    fill-array-data v1, :array_1c

    aput-object v1, v0, v3

    new-array v1, v6, [I

    fill-array-data v1, :array_1d

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE4BY3_03_ICONLINE_ARRAY:[[I

    .line 191
    new-array v0, v2, [[I

    new-array v1, v5, [I

    fill-array-data v1, :array_1e

    aput-object v1, v0, v3

    new-array v1, v5, [I

    fill-array-data v1, :array_1f

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE4BY3_04_ICONLINE_ARRAY:[[I

    return-void

    .line 145
    :array_0
    .array-data 4
        0x7f020038
        0x7f020039
        0x7f02003a
    .end array-data

    :array_1
    .array-data 4
        0x7f020038
        0x7f02003b
        0x7f02003a
    .end array-data

    .line 148
    :array_2
    .array-data 4
        0x7f020045
        0x7f020046
        0x7f020047
        0x7f020048
    .end array-data

    :array_3
    .array-data 4
        0x7f020045
        0x7f020049
        0x7f02004a
        0x7f020048
    .end array-data

    .line 151
    :array_4
    .array-data 4
        0x7f02004f
        0x7f020050
        0x7f020051
        0x7f020052
        0x7f020053
    .end array-data

    :array_5
    .array-data 4
        0x7f02004f
        0x7f020054
        0x7f020055
        0x7f020056
        0x7f020053
    .end array-data

    .line 154
    :array_6
    .array-data 4
        0x7f02003c
        0x7f02003d
        0x7f02003f
        0x7f020041
    .end array-data

    :array_7
    .array-data 4
        0x7f02003c
        0x7f02003e
        0x7f020040
        0x7f020041
    .end array-data

    .line 157
    :array_8
    .array-data 4
        0x7f02005a
        0x7f02005b
        0x7f02005c
    .end array-data

    :array_9
    .array-data 4
        0x7f02005a
        0x7f020057
        0x7f02005c
    .end array-data

    .line 160
    :array_a
    .array-data 4
        0x7f020068
        0x7f020069
        0x7f02006a
        0x7f02006b
    .end array-data

    :array_b
    .array-data 4
        0x7f020068
        0x7f020063
        0x7f020064
        0x7f02006b
    .end array-data

    .line 163
    :array_c
    .array-data 4
        0x7f020070
        0x7f020071
        0x7f020072
        0x7f020073
        0x7f020074
    .end array-data

    :array_d
    .array-data 4
        0x7f020070
        0x7f020075
        0x7f020076
        0x7f020077
        0x7f020074
    .end array-data

    .line 166
    :array_e
    .array-data 4
        0x7f02005d
        0x7f02005e
        0x7f020060
        0x7f020062
    .end array-data

    :array_f
    .array-data 4
        0x7f02005d
        0x7f02005f
        0x7f020061
        0x7f020062
    .end array-data

    .line 170
    :array_10
    .array-data 4
        0x7f020036
        0x7f020037
    .end array-data

    :array_11
    .array-data 4
        0x7f020037
        0x7f020036
    .end array-data

    .line 173
    :array_12
    .array-data 4
        0x7f020042
        0x7f020043
        0x7f020044
    .end array-data

    :array_13
    .array-data 4
        0x7f020044
        0x7f020043
        0x7f020042
    .end array-data

    .line 176
    :array_14
    .array-data 4
        0x7f02004b
        0x7f02004c
        0x7f02004d
        0x7f02004e
    .end array-data

    :array_15
    .array-data 4
        0x7f02004c
        0x7f02004e
        0x7f02004b
        0x7f02004d
    .end array-data

    .line 179
    :array_16
    .array-data 4
        0x7f020036
        0x7f02004c
        0x7f02004e
    .end array-data

    :array_17
    .array-data 4
        0x7f02004c
        0x7f02004e
        0x7f020036
    .end array-data

    .line 182
    :array_18
    .array-data 4
        0x7f020058
        0x7f020059
    .end array-data

    :array_19
    .array-data 4
        0x7f020059
        0x7f020058
    .end array-data

    .line 185
    :array_1a
    .array-data 4
        0x7f020065
        0x7f020066
        0x7f020067
    .end array-data

    :array_1b
    .array-data 4
        0x7f020067
        0x7f020066
        0x7f020065
    .end array-data

    .line 188
    :array_1c
    .array-data 4
        0x7f02006c
        0x7f02006d
        0x7f02006e
        0x7f02006f
    .end array-data

    :array_1d
    .array-data 4
        0x7f02006d
        0x7f02006f
        0x7f02006c
        0x7f02006e
    .end array-data

    .line 191
    :array_1e
    .array-data 4
        0x7f020058
        0x7f02006d
        0x7f02006f
    .end array-data

    :array_1f
    .array-data 4
        0x7f02006d
        0x7f02006f
        0x7f020058
    .end array-data
.end method

.method protected constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V
    .locals 7
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "cameraSettings"    # Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .prologue
    const v6, 0x7f0b01cc

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 333
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/RecordingController;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V

    .line 205
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_WIDTH:I

    .line 206
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_HEIGHT:I

    .line 209
    const v0, 0x7f0b0187

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SIDE_MENU_WIDTH:I

    .line 210
    const v0, 0x7f0b0186

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SIDE_MENU_HEIGHT:I

    .line 211
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_WIDTH:I

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SIDE_MENU_WIDTH:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RIGHT_SIDE_MENU_POS_X:I

    .line 214
    const v0, 0x7f0b01d8

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SHUTTER_BUTTON_WIDTH:F

    .line 215
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_HEIGHT:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SHUTTER_BUTTON_WIDTH:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v5

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SHUTTER_BUTTON_POS_Y:I

    .line 216
    const v0, 0x7f0b005b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->BASEMENU_GROUP_ICON_GAP:F

    .line 217
    const v0, 0x7f0b034d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SHUTTER_BUTTON_PORTRAIT_BOTTOM_PADDING:F

    .line 220
    const v0, 0x7f0b0291

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->UNDO_BUTTON_WIDTH:I

    .line 221
    const v0, 0x7f0b034f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->UNDO_BUTTON_DIAMETER:I

    .line 224
    const v0, 0x7f0b0028

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->CAF_BUTTON_POS_X:I

    .line 225
    const v0, 0x7f0b033d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->CAF_BUTTON_POS_Y_BOTTOM:I

    .line 226
    const v0, 0x7f0b033c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->CAF_BUTTON_DIAMETER:I

    .line 227
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_HEIGHT:I

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->CAF_BUTTON_POS_Y_BOTTOM:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->CAF_BUTTON_DIAMETER:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->CAF_BUTTON_POS_Y:I

    .line 230
    const v0, 0x7f0b01cd

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SWITCH_BUTTON_WIDTH:I

    .line 231
    invoke-static {v6}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SWITCH_BUTTON_HEIGHT:I

    .line 232
    const v0, 0x7f0b01ce

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SWITCH_BUTTON_POS_X:I

    .line 233
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_HEIGHT:I

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SWITCH_BUTTON_HEIGHT:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SWITCH_BUTTON_POS_Y:I

    .line 234
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_HEIGHT:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SWITCH_BUTTON_HEIGHT:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SWITCH_BUTTON_POS_Y_FRONT:I

    .line 235
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SWITCH_BUTTON_POS_Y:I

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SWITCH_BUTTON_POS_Y_REAR:I

    .line 238
    const v0, 0x7f0b01cd

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->FLASH_BUTTON_WIDTH:I

    .line 239
    invoke-static {v6}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->FLASH_BUTTON_HEIGHT:I

    .line 240
    const v0, 0x7f0b01ce

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->FLASH_BUTTON_POS_X:I

    .line 241
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_HEIGHT:I

    div-int/lit8 v0, v0, 0x3

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->FLASH_BUTTON_HEIGHT:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->FLASH_BUTTON_POS_Y:I

    .line 244
    const v0, 0x7f0b007c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE_TYPE_WIDTH:I

    .line 245
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE_TYPE_WIDTH:I

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE_TYPE_HEIGHT:I

    .line 246
    const v0, 0x7f0b007a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE_TYPE_MARGIN_Y:I

    .line 247
    const v0, 0x7f0b007b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE_TYPE_MARGIN_Y_270:I

    .line 250
    const v0, 0x7f0b0084

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_GROUP_MARGIN_Y:I

    .line 251
    const v0, 0x7f0b0085

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_GROUP_MARGIN_Y_270:I

    .line 252
    const v0, 0x7f0b0083

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_GROUP_HEIGHT:I

    .line 253
    const v0, 0x7f0b0082

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_ICON_WIDTH:I

    .line 254
    const v0, 0x7f0b0087

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_TEXT_WIDTH:I

    .line 255
    const v0, 0x7f0b0086

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_TEXT_LEFT_PADDING:I

    .line 256
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_ICON_WIDTH:I

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_TEXT_LEFT_PADDING:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_TEXT_WIDTH:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_GROUP_WIDTH:I

    .line 257
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_ICON_WIDTH:I

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_TEXT_LEFT_PADDING:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_TEXT_POS_X:I

    .line 258
    const v0, 0x7f0e0045

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_TEXT_STROKE_WIDTH:I

    .line 259
    const v0, 0x7f0d003a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_TEXT_STROKE_COLOR:I

    .line 260
    const v0, 0x7f0b0290

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_TEXT_SIZE:F

    .line 263
    const v0, 0x7f0b0081

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->PROGRESS_GROUP_WIDTH:I

    .line 264
    const v0, 0x7f0b0080

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->PROGRESS_GROUP_HEIGHT:I

    .line 265
    const v0, 0x7f0b007e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->PROGRESS_GROUP_MARGIN_Y:I

    .line 266
    const v0, 0x7f0b007f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->PROGRESS_GROUP_MARGIN_Y_270:I

    .line 267
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->PROGRESS_GROUP_WIDTH:I

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->PROGRESSBAR_WIDTH:I

    .line 268
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->PROGRESS_GROUP_HEIGHT:I

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->PROGRESSBAR_HEIGHT:I

    .line 269
    const v0, 0x7f0b007d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->PROGRESSBAR_DIVIDER_WIDTH:I

    .line 272
    const v0, 0x7f0b0043

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_NORMAL_WIDTH:I

    .line 273
    const v0, 0x7f0b0144

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->NORMAL_RATIO_PREVIEW_LEFT:I

    .line 274
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_NORMAL_WIDTH:I

    int-to-float v0, v0

    div-float/2addr v0, v5

    div-float/2addr v0, v5

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->NORMAL_RATIO_LANDSCAPE_CROP_WIDTH_DIVIDE_2:F

    .line 277
    iput-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    .line 278
    iput-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    .line 280
    iput-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEffectThumbnailListMenu:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    .line 281
    iput-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEffectLevelSliderMenu:Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;

    .line 284
    iput-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mLowDeviceStorageToast:Landroid/widget/Toast;

    .line 305
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBarDividerList:Ljava/util/ArrayList;

    .line 311
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mFirstCameraId:I

    .line 313
    iput-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    .line 315
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingTimeInMs:I

    .line 316
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedCameraResolution:I

    .line 317
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedCamcorderResolution:I

    .line 318
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedTimerValue:I

    .line 319
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedZoomValue:I

    .line 320
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedVideoCollageType:I

    .line 321
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedVoiceCommandValue:I

    .line 322
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedFlipValue:I

    .line 324
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mMaxRecordingTimeChangeCnt:I

    .line 326
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsNeedBackupRecordingTime:Z

    .line 327
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsLayoutUpdateNeeded:Z

    .line 328
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsNeedDrawingProgressDivider:Z

    .line 329
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsTimerCounting:Z

    .line 330
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsCameraSwitching:Z

    .line 334
    return-void
.end method

.method static synthetic access$1300(Lcom/sec/android/app/camera/shootingmode/VideoCollage;)Lcom/sec/android/app/camera/interfaces/MenuManager;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/VideoCollage;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/camera/shootingmode/VideoCollage;)Lcom/sec/android/app/camera/menu/ZoomSliderMenu;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/VideoCollage;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/sec/android/app/camera/shootingmode/VideoCollage;Lcom/sec/android/app/camera/menu/ZoomSliderMenu;)Lcom/sec/android/app/camera/menu/ZoomSliderMenu;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/VideoCollage;
    .param p1, "x1"    # Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/sec/android/app/camera/shootingmode/VideoCollage;)Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/VideoCollage;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEffectThumbnailListMenu:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/sec/android/app/camera/shootingmode/VideoCollage;Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/VideoCollage;
    .param p1, "x1"    # Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEffectThumbnailListMenu:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/sec/android/app/camera/shootingmode/VideoCollage;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/VideoCollage;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->updateRecIndicatorIcon()V

    return-void
.end method

.method static synthetic access$3600(Lcom/sec/android/app/camera/shootingmode/VideoCollage;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/VideoCollage;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->launchEditor()V

    return-void
.end method

.method static synthetic access$3700(Lcom/sec/android/app/camera/shootingmode/VideoCollage;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/VideoCollage;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isCameraSwitchingAnimationRunning()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3800(Lcom/sec/android/app/camera/shootingmode/VideoCollage;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/VideoCollage;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->sendShowUIMessageDelayed()V

    return-void
.end method

.method static synthetic access$3900(Lcom/sec/android/app/camera/shootingmode/VideoCollage;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/VideoCollage;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showView()V

    return-void
.end method

.method static synthetic access$4000(Lcom/sec/android/app/camera/shootingmode/VideoCollage;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/VideoCollage;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->prepareSwitchCamera()V

    return-void
.end method

.method static synthetic access$4100(Lcom/sec/android/app/camera/shootingmode/VideoCollage;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/VideoCollage;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->switchCamera()V

    return-void
.end method

.method static synthetic access$4200(Lcom/sec/android/app/camera/shootingmode/VideoCollage;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/VideoCollage;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->handleSwitchCameraCompleted()V

    return-void
.end method

.method private addClip()V
    .locals 8

    .prologue
    .line 1239
    const/4 v0, 0x0

    .line 1240
    .local v0, "duration":I
    const-string v3, ""

    .line 1241
    .local v3, "recordedTime":Ljava/lang/String;
    const-string v2, ""

    .line 1243
    .local v2, "recordedFileName":Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentFilePath()Ljava/lang/String;

    move-result-object v2

    .line 1245
    new-instance v4, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v4}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 1247
    .local v4, "retriever":Landroid/media/MediaMetadataRetriever;
    :try_start_0
    invoke-virtual {v4, v2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 1248
    const/16 v5, 0x9

    invoke-virtual {v4, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1252
    :goto_0
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 1254
    if-eqz v3, :cond_1

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1255
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1256
    const-string v5, "VideoCollage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addClip() - duration by metadataRetriver="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    :goto_1
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    if-eqz v5, :cond_0

    .line 1263
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isNeedRotate()Z

    move-result v6

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->addClip(Ljava/lang/String;IZ)V
    invoke-static {v5, v2, v0, v6}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$300(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;Ljava/lang/String;IZ)V

    .line 1265
    :cond_0
    return-void

    .line 1249
    :catch_0
    move-exception v1

    .line 1250
    .local v1, "e":Ljava/lang/RuntimeException;
    :goto_2
    const-string v5, "VideoCollage"

    const-string v6, "setDataSource failed"

    invoke-static {v5, v6}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1258
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRecordedTimeInMs()I

    move-result v0

    .line 1259
    const-string v5, "VideoCollage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addClip() - duration by getRecordedTimeInMs="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1249
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method private addProgressDivider(I)V
    .locals 8
    .param p1, "progress"    # I

    .prologue
    .line 1268
    int-to-float v0, p1

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->PROGRESSBAR_WIDTH:I

    int-to-float v1, v1

    mul-float v2, v0, v1

    .line 1269
    .local v2, "posX":F
    new-instance v0, Lcom/samsung/android/glview/GLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->PROGRESSBAR_DIVIDER_WIDTH:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->PROGRESS_GROUP_HEIGHT:I

    int-to-float v5, v5

    const/4 v6, 0x1

    const v7, 0x7f020035

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFFFZI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mLastDivider:Lcom/samsung/android/glview/GLImage;

    .line 1270
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mLastDivider:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1271
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBarDividerList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mLastDivider:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1272
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mLastDivider:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1273
    return-void
.end method

.method private clear()V
    .locals 2

    .prologue
    .line 1276
    const-string v0, "VideoCollage"

    const-string v1, "clear"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mVideoCollageHandler:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;->clear()V
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;->access$400(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;)V

    .line 1278
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mVideoCollageHandler:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

    .line 1279
    return-void
.end method

.method private clearProgressDivider()V
    .locals 3

    .prologue
    .line 1282
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBarDividerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLImage;

    .line 1283
    .local v0, "divider":Lcom/samsung/android/glview/GLImage;
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 1284
    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->clear()V

    goto :goto_0

    .line 1286
    .end local v0    # "divider":Lcom/samsung/android/glview/GLImage;
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBarDividerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1287
    return-void
.end method

.method private createVideoCollageFilePath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1290
    const/4 v1, 0x0

    .line 1291
    .local v1, "videoPathDir":Ljava/lang/String;
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getVideoCollageFilePath()Ljava/lang/String;

    move-result-object v1

    .line 1292
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1293
    .local v0, "cameraDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1294
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1295
    const-string v2, "VideoCollage"

    const-string v3, "directory is not made"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    const/4 v1, 0x0

    .line 1299
    .end local v1    # "videoPathDir":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method private discardRecording()V
    .locals 4

    .prologue
    .line 1303
    const-string v2, "VideoCollage"

    const-string v3, "discardRecording()"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v2, v3, :cond_0

    .line 1306
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleCancelVideoRecording()V

    .line 1309
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    if-eqz v2, :cond_1

    .line 1310
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCurrentRecordingCount()I
    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$100(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v0

    .line 1312
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1313
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->doUndo()V

    .line 1312
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1316
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showPreviewLayout()V

    .line 1317
    return-void
.end method

.method private discardSaved()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1320
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getVideoCollageFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->deleteDirectory(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1321
    const-string v0, "VideoCollage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail to delete directory : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getVideoCollageFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getProjectSaveFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1324
    const-string v0, "VideoCollage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail to delete file : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getProjectSaveFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getProjectSecureSaveFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1327
    const-string v0, "VideoCollage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail to delete file : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getProjectSecureSaveFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_video_collage_is_project_saved_key"

    invoke-static {v0, v1, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1330
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_video_collage_is_project_secure_saved_key"

    invoke-static {v0, v1, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1331
    return-void
.end method

.method private doUndo()V
    .locals 2

    .prologue
    .line 1334
    const-string v0, "VideoCollage"

    const-string v1, "doUndo()"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isClipsAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1337
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->removeLastClip()V
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$500(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)V

    .line 1339
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getProjectType()I
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1340
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->removeLastProgressDivider()V

    .line 1344
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCurrentRecordingCount()I
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$100(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v0

    if-nez v0, :cond_1

    .line 1345
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isCameraSwitched()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1346
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->switchCameraAsync()V

    .line 1349
    :cond_1
    return-void
.end method

.method private getCollageTypeForEditor(II)I
    .locals 4
    .param p1, "projectType"    # I
    .param p2, "collageType"    # I

    .prologue
    const/4 v2, 0x6

    const/4 v1, 0x5

    const/4 v0, 0x4

    const/4 v3, 0x0

    .line 1353
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    move v0, v3

    .line 1387
    :goto_0
    :pswitch_1
    return v0

    .line 1355
    :pswitch_2
    packed-switch p2, :pswitch_data_1

    move v0, v3

    .line 1363
    goto :goto_0

    :pswitch_3
    move v0, v1

    .line 1359
    goto :goto_0

    :pswitch_4
    move v0, v2

    .line 1361
    goto :goto_0

    .line 1366
    :pswitch_5
    packed-switch p2, :pswitch_data_2

    move v0, v3

    .line 1384
    goto :goto_0

    .line 1368
    :pswitch_6
    const/4 v0, 0x1

    goto :goto_0

    .line 1370
    :pswitch_7
    const/4 v0, 0x2

    goto :goto_0

    .line 1372
    :pswitch_8
    const/4 v0, 0x3

    goto :goto_0

    .line 1374
    :pswitch_9
    const/4 v0, 0x7

    goto :goto_0

    :pswitch_a
    move v0, v1

    .line 1378
    goto :goto_0

    :pswitch_b
    move v0, v2

    .line 1380
    goto :goto_0

    .line 1382
    :pswitch_c
    const/16 v0, 0x8

    goto :goto_0

    .line 1353
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_5
    .end packed-switch

    .line 1355
    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 1366
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_a
        :pswitch_b
        :pswitch_9
        :pswitch_c
    .end packed-switch
.end method

.method private getCollageTypeSettingFromProject(III)I
    .locals 6
    .param p1, "projectType"    # I
    .param p2, "collageType"    # I
    .param p3, "ratio"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x6

    const/4 v2, 0x5

    const/4 v1, 0x4

    const/4 v0, 0x3

    .line 1392
    packed-switch p1, :pswitch_data_0

    move v0, v4

    .line 1429
    :cond_0
    :goto_0
    return v0

    .line 1394
    :pswitch_0
    if-ne p2, v1, :cond_1

    .line 1395
    const/4 v0, 0x1

    goto :goto_0

    .line 1396
    :cond_1
    if-ne p2, v2, :cond_2

    .line 1397
    const/4 v0, 0x2

    goto :goto_0

    .line 1398
    :cond_2
    if-ne p2, v3, :cond_0

    goto :goto_0

    .line 1403
    :pswitch_1
    if-nez p3, :cond_3

    move v0, v1

    .line 1404
    goto :goto_0

    :cond_3
    move v0, v2

    .line 1406
    goto :goto_0

    .line 1409
    :pswitch_2
    const/4 v5, 0x1

    if-ne p2, v5, :cond_4

    move v0, v3

    .line 1410
    goto :goto_0

    .line 1411
    :cond_4
    const/4 v5, 0x2

    if-ne p2, v5, :cond_5

    .line 1412
    const/4 v0, 0x7

    goto :goto_0

    .line 1413
    :cond_5
    if-ne p2, v0, :cond_6

    .line 1414
    const/16 v0, 0x8

    goto :goto_0

    .line 1415
    :cond_6
    const/4 v0, 0x7

    if-ne p2, v0, :cond_7

    .line 1416
    const/16 v0, 0x9

    goto :goto_0

    .line 1417
    :cond_7
    if-ne p2, v1, :cond_8

    .line 1418
    const/16 v0, 0xa

    goto :goto_0

    .line 1419
    :cond_8
    if-ne p2, v2, :cond_9

    .line 1420
    const/16 v0, 0xb

    goto :goto_0

    .line 1421
    :cond_9
    if-ne p2, v3, :cond_a

    .line 1422
    const/16 v0, 0xc

    goto :goto_0

    .line 1423
    :cond_a
    const/16 v0, 0x8

    if-ne p2, v0, :cond_b

    .line 1424
    const/16 v0, 0xd

    goto :goto_0

    :cond_b
    move v0, v4

    .line 1426
    goto :goto_0

    .line 1392
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getCurrentProgress()I
    .locals 4

    .prologue
    .line 1435
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getProjectType()I
    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 1436
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v2, v3, :cond_0

    .line 1437
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRecordedTimeInMs()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCurrentRecordedTimeInMs()I
    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$600(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v3

    add-int v1, v2, v3

    .line 1444
    .local v1, "recordedTimeInMs":I
    :goto_0
    int-to-float v2, v1

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getRecordingTime()I
    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$700(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float/2addr v2, v3

    float-to-int v0, v2

    .line 1445
    .local v0, "progress":I
    return v0

    .line 1439
    .end local v0    # "progress":I
    .end local v1    # "recordedTimeInMs":I
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCurrentRecordedTimeInMs()I
    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$600(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v1

    .restart local v1    # "recordedTimeInMs":I
    goto :goto_0

    .line 1442
    .end local v1    # "recordedTimeInMs":I
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRecordedTimeInMs()I

    move-result v1

    .restart local v1    # "recordedTimeInMs":I
    goto :goto_0
.end method

.method private getCurrentRecordingTime()I
    .locals 4

    .prologue
    .line 1450
    const/4 v0, 0x0

    .line 1452
    .local v0, "currentTime":I
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    if-eqz v1, :cond_0

    .line 1453
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getProjectType()I
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1454
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCurrentRecordedTimeInMs()I
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$600(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingTimeInMs:I

    add-int v0, v1, v2

    .line 1459
    :cond_0
    :goto_0
    const-string v1, "VideoCollage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentRecordingTime() - currentTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    return v0

    .line 1456
    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingTimeInMs:I

    goto :goto_0
.end method

.method private getEffectProcessorParameter()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1464
    const/4 v0, 0x0

    .line 1466
    .local v0, "clipping":I
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isCropAreaEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1467
    const/4 v0, 0x1

    .line 1472
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clipmovie,clipping="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1473
    .local v1, "str":Ljava/lang/String;
    return-object v1

    .line 1469
    .end local v1    # "str":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getMaxRecordingTimeInMs()I
    .locals 4

    .prologue
    .line 1478
    const/4 v0, 0x0

    .line 1480
    .local v0, "duration":I
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    if-eqz v1, :cond_0

    .line 1481
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getRecordingTime()I
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$700(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v0

    .line 1483
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getProjectType()I
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1484
    const-string v1, "VideoCollage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMaxRecordingTimeInMS - duration : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " currentRecording - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCurrentRecordedTimeInMs()I
    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$600(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1485
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCurrentRecordedTimeInMs()I
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$600(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 1488
    :cond_0
    return v0
.end method

.method private getProgress()I
    .locals 1

    .prologue
    .line 1492
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBar:Lcom/samsung/android/glview/GLProgressBar;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLProgressBar;->getProgress()I

    move-result v0

    return v0
.end method

.method private getProjectSaveFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1500
    const-string v0, "VideoCollageProjectSave"

    return-object v0
.end method

.method private getProjectSecureSaveFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1504
    const-string v0, "VideoCollageProjectSecureSave"

    return-object v0
.end method

.method private getRecordedTimeInMs()I
    .locals 2

    .prologue
    .line 1508
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getTotalRecordingTime()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method private getRecordingTimeSettingFromProject(I)I
    .locals 1
    .param p1, "recordingTime"    # I

    .prologue
    const/4 v0, 0x1

    .line 1513
    sparse-switch p1, :sswitch_data_0

    .line 1523
    :goto_0
    :sswitch_0
    return v0

    .line 1515
    :sswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1519
    :sswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 1521
    :sswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 1513
    nop

    :sswitch_data_0
    .sparse-switch
        0xbb8 -> :sswitch_1
        0x1770 -> :sswitch_0
        0x2328 -> :sswitch_2
        0x3a98 -> :sswitch_3
    .end sparse-switch
.end method

.method private getRecordingTimeText()Ljava/lang/String;
    .locals 8

    .prologue
    const v7, 0x7f0a0220

    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1529
    const-string v0, ""

    .line 1530
    .local v0, "time":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    if-eqz v1, :cond_0

    .line 1531
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1532
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%d/%d"

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getRecordingTime()I
    invoke-static {v4}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$700(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v4

    div-int/lit16 v4, v4, 0x3e8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getCurrentRecordingTime()I

    move-result v4

    div-int/lit16 v4, v4, 0x3e8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 1533
    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1539
    :cond_0
    :goto_0
    return-object v0

    .line 1535
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%d/%d"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getCurrentRecordingTime()I

    move-result v4

    div-int/lit16 v4, v4, 0x3e8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getRecordingTime()I
    invoke-static {v4}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$700(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v4

    div-int/lit16 v4, v4, 0x3e8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 1536
    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getRemainedRecordingTime()I
    .locals 4

    .prologue
    .line 1544
    const/4 v0, 0x0

    .line 1546
    .local v0, "remainedTime":I
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    if-eqz v1, :cond_0

    .line 1547
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getProjectType()I
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1548
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getRecordingTime()I
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$700(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCurrentRecordedTimeInMs()I
    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$600(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingTimeInMs:I

    add-int/2addr v2, v3

    sub-int v0, v1, v2

    .line 1553
    :cond_0
    :goto_0
    const-string v1, "VideoCollage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRemainedRecordingTime() - currentTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1554
    return v0

    .line 1550
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getRecordingTime()I
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$700(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingTimeInMs:I

    sub-int v0, v1, v2

    goto :goto_0
.end method

.method private getResourceIconLineOrder(II)I
    .locals 2
    .param p1, "count"    # I
    .param p2, "order"    # I

    .prologue
    const/4 v0, -0x1

    .line 1558
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getProjectType()I
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1581
    :goto_0
    return v0

    .line 1560
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCollageType()I
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$800(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v1

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 1562
    :pswitch_1
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE1BY1_01_ICONLINE_ARRAY:[[I

    aget-object v0, v0, p2

    aget v0, v0, p1

    goto :goto_0

    .line 1564
    :pswitch_2
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE1BY1_02_ICONLINE_ARRAY:[[I

    aget-object v0, v0, p2

    aget v0, v0, p1

    goto :goto_0

    .line 1566
    :pswitch_3
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE1BY1_03_ICONLINE_ARRAY:[[I

    aget-object v0, v0, p2

    aget v0, v0, p1

    goto :goto_0

    .line 1568
    :pswitch_4
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE1BY1_04_ICONLINE_ARRAY:[[I

    aget-object v0, v0, p2

    aget v0, v0, p1

    goto :goto_0

    .line 1570
    :pswitch_5
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE4BY3_01_ICONLINE_ARRAY:[[I

    aget-object v0, v0, p2

    aget v0, v0, p1

    goto :goto_0

    .line 1572
    :pswitch_6
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE4BY3_02_ICONLINE_ARRAY:[[I

    aget-object v0, v0, p2

    aget v0, v0, p1

    goto :goto_0

    .line 1574
    :pswitch_7
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE4BY3_03_ICONLINE_ARRAY:[[I

    aget-object v0, v0, p2

    aget v0, v0, p1

    goto :goto_0

    .line 1576
    :pswitch_8
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE4BY3_04_ICONLINE_ARRAY:[[I

    aget-object v0, v0, p2

    aget v0, v0, p1

    goto :goto_0

    .line 1558
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch

    .line 1560
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_4
        :pswitch_8
    .end packed-switch
.end method

.method private getResourceIconOrder(II)I
    .locals 2
    .param p1, "count"    # I
    .param p2, "order"    # I

    .prologue
    const/4 v0, -0x1

    .line 1586
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getProjectType()I
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1609
    :goto_0
    return v0

    .line 1588
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCollageType()I
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$800(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v1

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 1590
    :pswitch_1
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE1BY1_01_ICON_ARRAY:[[I

    aget-object v0, v0, p2

    aget v0, v0, p1

    goto :goto_0

    .line 1592
    :pswitch_2
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE1BY1_02_ICON_ARRAY:[[I

    aget-object v0, v0, p2

    aget v0, v0, p1

    goto :goto_0

    .line 1594
    :pswitch_3
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE1BY1_03_ICON_ARRAY:[[I

    aget-object v0, v0, p2

    aget v0, v0, p1

    goto :goto_0

    .line 1596
    :pswitch_4
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE1BY1_04_ICON_ARRAY:[[I

    aget-object v0, v0, p2

    aget v0, v0, p1

    goto :goto_0

    .line 1598
    :pswitch_5
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE4BY3_01_ICON_ARRAY:[[I

    aget-object v0, v0, p2

    aget v0, v0, p1

    goto :goto_0

    .line 1600
    :pswitch_6
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE4BY3_02_ICON_ARRAY:[[I

    aget-object v0, v0, p2

    aget v0, v0, p1

    goto :goto_0

    .line 1602
    :pswitch_7
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE4BY3_03_ICON_ARRAY:[[I

    aget-object v0, v0, p2

    aget v0, v0, p1

    goto :goto_0

    .line 1604
    :pswitch_8
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE4BY3_04_ICON_ARRAY:[[I

    aget-object v0, v0, p2

    aget v0, v0, p1

    goto :goto_0

    .line 1586
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch

    .line 1588
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_4
        :pswitch_8
    .end packed-switch
.end method

.method private getVideoCollageFilePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1614
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/sec/android/app/camera/util/ImageUtils;->getImageSavingDir(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/.VideoCollage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getVideoSizeDivider()[I
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x2

    .line 1618
    const/4 v2, 0x1

    .local v2, "verticalDivider":I
    const/4 v0, 0x1

    .line 1619
    .local v0, "horizontalDivider":I
    new-array v1, v4, [I

    .line 1621
    .local v1, "ret":[I
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getProjectType()I
    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 1688
    :pswitch_0
    const/4 v0, 0x1

    .line 1689
    const/4 v2, 0x1

    .line 1693
    :cond_0
    :goto_0
    const/4 v3, 0x0

    aput v0, v1, v3

    .line 1694
    aput v2, v1, v5

    .line 1695
    return-object v1

    .line 1623
    :pswitch_1
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCollageType()I
    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$800(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v3

    packed-switch v3, :pswitch_data_1

    .line 1637
    const/4 v0, 0x1

    .line 1638
    const/4 v2, 0x1

    .line 1639
    goto :goto_0

    .line 1625
    :pswitch_2
    const/4 v0, 0x1

    .line 1626
    const/4 v2, 0x2

    .line 1627
    goto :goto_0

    .line 1629
    :pswitch_3
    const/4 v0, 0x1

    .line 1630
    const/4 v2, 0x3

    .line 1631
    goto :goto_0

    .line 1633
    :pswitch_4
    const/4 v0, 0x1

    .line 1634
    const/4 v2, 0x1

    .line 1635
    goto :goto_0

    .line 1644
    :pswitch_5
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCollageType()I
    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$800(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v3

    packed-switch v3, :pswitch_data_2

    .line 1682
    const/4 v0, 0x1

    .line 1683
    const/4 v2, 0x1

    .line 1684
    goto :goto_0

    .line 1647
    :pswitch_6
    const/4 v0, 0x1

    .line 1648
    const/4 v2, 0x2

    .line 1649
    goto :goto_0

    .line 1652
    :pswitch_7
    const/4 v0, 0x1

    .line 1653
    const/4 v2, 0x3

    .line 1654
    goto :goto_0

    .line 1657
    :pswitch_8
    const/4 v0, 0x2

    .line 1658
    const/4 v2, 0x2

    .line 1659
    goto :goto_0

    .line 1663
    :pswitch_9
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getViewOrientation()I
    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$900(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getViewOrientation()I
    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$900(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v3

    if-ne v3, v4, :cond_4

    .line 1664
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCurrentRecordingCount()I
    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$100(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCurrentRecordingCount()I
    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$100(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v3

    if-ne v3, v5, :cond_3

    .line 1665
    :cond_2
    const/4 v0, 0x2

    .line 1666
    const/4 v2, 0x2

    goto :goto_0

    .line 1667
    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCurrentRecordingCount()I
    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$100(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v3

    if-ne v3, v4, :cond_0

    .line 1668
    const/4 v0, 0x1

    .line 1669
    const/4 v2, 0x2

    goto :goto_0

    .line 1672
    :cond_4
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCurrentRecordingCount()I
    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$100(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v3

    if-nez v3, :cond_5

    .line 1673
    const/4 v0, 0x1

    .line 1674
    const/4 v2, 0x2

    goto :goto_0

    .line 1675
    :cond_5
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCurrentRecordingCount()I
    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$100(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v3

    if-eq v3, v5, :cond_6

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCurrentRecordingCount()I
    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$100(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v3

    if-ne v3, v4, :cond_0

    .line 1676
    :cond_6
    const/4 v0, 0x2

    .line 1677
    const/4 v2, 0x2

    goto :goto_0

    .line 1621
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_5
    .end packed-switch

    .line 1623
    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 1644
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method private handleRecordingCancelled()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1699
    const-string v0, "VideoCollage"

    const-string v1, "handleRecordingCancelled()"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1701
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setVideoFilePath(Ljava/lang/String;)V

    .line 1702
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraShutterSound()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setShutterSound(I)V

    .line 1703
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->abandonAudioFocus()V

    .line 1704
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getProjectType()I
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v0

    if-nez v0, :cond_1

    .line 1705
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Camera_recording_over_60fps"

    invoke-static {v0, v1, v3}, Lcom/sec/android/app/camera/util/Util;->notifyCameraInfo(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1710
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFlashMode()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 1711
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFlashAutoCallback(Z)V

    .line 1714
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->stopTimer()V

    .line 1716
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsLayoutUpdateNeeded:Z

    .line 1717
    return-void

    .line 1707
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Camera_recording"

    invoke-static {v0, v1, v3}, Lcom/sec/android/app/camera/util/Util;->notifyCameraInfo(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private handleRecordingStopped()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1720
    const-string v1, "VideoCollage"

    const-string v2, "handleRecordingStopped()"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1722
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isPlayRecordingStopSound()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1723
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v2, 0x9

    invoke-interface {v1, v2, v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->playCameraSound(II)V

    .line 1725
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraShutterSound()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setShutterSound(I)V

    .line 1726
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->abandonAudioFocus()V

    .line 1727
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getProjectType()I
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v1

    if-nez v1, :cond_5

    .line 1728
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Camera_recording_over_60fps"

    invoke-static {v1, v2, v6}, Lcom/sec/android/app/camera/util/Util;->notifyCameraInfo(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1733
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFlashMode()I

    move-result v1

    if-ne v1, v5, :cond_1

    .line 1734
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v5}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFlashAutoCallback(Z)V

    .line 1737
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setVideoFilePath(Ljava/lang/String;)V

    .line 1739
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/16 v2, 0x12

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1740
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->collapseMenu()V

    .line 1744
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isClipsAdded()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1745
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->getOrientationOnTake()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->calculateOrientationForPicture(I)I

    move-result v0

    .line 1746
    .local v0, "orientation":I
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setOrientation(I)V
    invoke-static {v1, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$1000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    .line 1747
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSelfFlip()I

    move-result v2

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setFirstFlip(I)V
    invoke-static {v1, v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$1100(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    .line 1748
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraId()I

    move-result v2

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setFirstCameraIdTaken(I)V
    invoke-static {v1, v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$1200(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    .line 1751
    .end local v0    # "orientation":I
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->addClip()V

    .line 1753
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->stopTimer()V

    .line 1755
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isFinish()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1756
    const-string v1, "VideoCollage"

    const-string v2, "Finishing.."

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1758
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideIndicatorLayout()V

    .line 1760
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mVideoCollageHandler:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

    if-eqz v1, :cond_4

    .line 1761
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSecureCamera()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.sec.android.app.clipvideo"

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/util/PermissionUtils;->hasPermissions(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1763
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v2, 0x1e3

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 1764
    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x1040014

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0a0203

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1763
    invoke-interface {v1, v2, v3, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showCameraDialog(ILjava/lang/String;Ljava/lang/String;)V

    .line 1772
    :cond_4
    :goto_1
    return-void

    .line 1730
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Camera_recording"

    invoke-static {v1, v2, v6}, Lcom/sec/android/app/camera/util/Util;->notifyCameraInfo(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1767
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mVideoCollageHandler:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 1770
    :cond_7
    iput-boolean v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsLayoutUpdateNeeded:Z

    goto :goto_1
.end method

.method private handleSwitchCameraCompleted()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1776
    move-object v0, p0

    .line 1777
    .local v0, "pInstance":Lcom/sec/android/app/camera/shootingmode/VideoCollage;
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/shootingmode/VideoCollage$2;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$2;-><init>(Lcom/sec/android/app/camera/shootingmode/VideoCollage;Lcom/sec/android/app/camera/shootingmode/VideoCollage;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1794
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraHDR()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 1795
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->enableHdrAutoCallback(Z)V

    .line 1800
    :goto_0
    return-void

    .line 1797
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->enableHdrAutoCallback(Z)V

    goto :goto_0
.end method

.method private hideCAFButton()V
    .locals 2

    .prologue
    .line 1803
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1804
    return-void
.end method

.method private hideCollageTypeIcon()V
    .locals 2

    .prologue
    .line 1807
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1808
    return-void
.end method

.method private hideCollageTypeIconLine()V
    .locals 2

    .prologue
    .line 1811
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIconLine:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1812
    return-void
.end method

.method private hideCropArea()V
    .locals 2

    .prologue
    .line 1815
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCropAreaGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1816
    return-void
.end method

.method private hideFlashButton()V
    .locals 2

    .prologue
    .line 1819
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mFlashButton:Lcom/sec/android/app/camera/widget/gl/Item;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/Item;->setVisibility(I)V

    .line 1820
    return-void
.end method

.method private hideIndicatorLayout()V
    .locals 2

    .prologue
    .line 1823
    const-string v0, "VideoCollage"

    const-string v1, "hideIndicatorLayout()"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1825
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideRecTimeGroup()V

    .line 1826
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideProgress()V

    .line 1827
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideCollageTypeIcon()V

    .line 1828
    return-void
.end method

.method private hidePauseButton()V
    .locals 2

    .prologue
    .line 1831
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1832
    return-void
.end method

.method private hidePauseIndicatorIcon()V
    .locals 2

    .prologue
    .line 1835
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1836
    return-void
.end method

.method private hideProgress()V
    .locals 2

    .prologue
    .line 1839
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1840
    return-void
.end method

.method private hideRecIndicatorIcon()V
    .locals 2

    .prologue
    .line 1843
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1844
    return-void
.end method

.method private hideRecTimeGroup()V
    .locals 2

    .prologue
    .line 1847
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1848
    return-void
.end method

.method private hideRecordedLayout()V
    .locals 0

    .prologue
    .line 1851
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideRecordingButton()V

    .line 1852
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideUndoButton()V

    .line 1853
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideFlashButton()V

    .line 1854
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideSwitchCameraButton()V

    .line 1855
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hidePauseButton()V

    .line 1856
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideResumeButton()V

    .line 1858
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideProgress()V

    .line 1859
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->clearProgressDivider()V

    .line 1860
    return-void
.end method

.method private hideRecordingButton()V
    .locals 2

    .prologue
    .line 1863
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1864
    return-void
.end method

.method private hideRecordingLayout()V
    .locals 0

    .prologue
    .line 1867
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hidePauseButton()V

    .line 1868
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideResumeButton()V

    .line 1869
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideCAFButton()V

    .line 1870
    return-void
.end method

.method private hideResumeButton()V
    .locals 2

    .prologue
    .line 1873
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1874
    return-void
.end method

.method private hideSwitchCameraButton()V
    .locals 2

    .prologue
    .line 1877
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1878
    return-void
.end method

.method private hideUndoButton()V
    .locals 2

    .prologue
    .line 1881
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mUndoButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1882
    return-void
.end method

.method private hideView()V
    .locals 2

    .prologue
    .line 1885
    const-string v0, "VideoCollage"

    const-string v1, "hideView()"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1887
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideIndicatorLayout()V

    .line 1888
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideRecordingLayout()V

    .line 1889
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideRecordedLayout()V

    .line 1890
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideCropArea()V

    .line 1891
    return-void
.end method

.method private initializeProject(I)V
    .locals 4
    .param p1, "type"    # I

    .prologue
    const/4 v3, 0x0

    .line 1894
    const-string v0, "VideoCollage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initializeProject() - type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1896
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    if-eqz v0, :cond_0

    .line 1897
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->clear()V
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$1600(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)V

    .line 1898
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    .line 1901
    :cond_0
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-direct {v0, v3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;-><init>(Lcom/sec/android/app/camera/shootingmode/VideoCollage$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    .line 1903
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setProjectType(I)V

    .line 1904
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setRecordingTimeByType()V

    .line 1905
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setCollageType(I)V

    .line 1906
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setRatio(I)V

    .line 1907
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setMaxRecordingCount(I)V

    .line 1908
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCurrentOrientation:I

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setViewOrientation(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$200(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    .line 1909
    return-void
.end method

.method private initializeView(Lcom/samsung/android/glview/GLContext;Lcom/samsung/android/glview/GLViewGroup;Lcom/samsung/android/glview/GLViewGroup;)V
    .locals 27
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "viewLayout"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p3, "controllerLayout"    # Lcom/samsung/android/glview/GLViewGroup;

    .prologue
    .line 1912
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCurrentOrientation:I

    .line 1914
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_WIDTH:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SHUTTER_BUTTON_WIDTH:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SHUTTER_BUTTON_PORTRAIT_BOTTOM_PADDING:F

    add-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v0, v1

    move/from16 v19, v0

    .line 1915
    .local v19, "controllerButtonBaseX":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SHUTTER_BUTTON_POS_Y:I

    move/from16 v20, v0

    .line 1916
    .local v20, "controllerButtonBaseY":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SHUTTER_BUTTON_WIDTH:F

    float-to-int v0, v1

    move/from16 v18, v0

    .line 1917
    .local v18, "controllerButtonBaseWidth":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->BASEMENU_GROUP_ICON_GAP:F

    float-to-int v0, v1

    move/from16 v21, v0

    .line 1919
    .local v21, "controllerButtonGap":I
    new-instance v1, Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RIGHT_SIDE_MENU_POS_X:I

    int-to-float v3, v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SIDE_MENU_WIDTH:I

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SIDE_MENU_HEIGHT:I

    int-to-float v6, v6

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingSideMenu:Lcom/samsung/android/glview/GLViewGroup;

    .line 1920
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingSideMenu:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setClipping(Z)V

    .line 1922
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RIGHT_SIDE_MENU_POS_X:I

    sub-int v22, v19, v1

    .line 1923
    .local v22, "recButtonX":I
    move/from16 v23, v20

    .line 1925
    .local v23, "recButtonY":I
    new-instance v1, Lcom/samsung/android/glview/GLButton;

    move/from16 v0, v22

    int-to-float v3, v0

    move/from16 v0, v23

    int-to-float v4, v0

    const v5, 0x7f0200e9

    const v6, 0x7f0200ea

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    .line 1927
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    const/16 v2, 0x41

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setTag(I)V

    .line 1928
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    .line 1929
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 1930
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 1931
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 1932
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->updateLayout(Z)V

    .line 1933
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 1934
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setDraggable(Z)V

    .line 1935
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1936
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    .line 1937
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a01ec

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 1938
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingSideMenu:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1940
    new-instance v1, Lcom/samsung/android/glview/GLButton;

    move/from16 v0, v22

    int-to-float v3, v0

    move/from16 v0, v23

    int-to-float v4, v0

    const v5, 0x7f020105

    const v6, 0x7f020106

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    .line 1941
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    .line 1942
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 1943
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 1944
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 1945
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 1946
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->updateLayout(Z)V

    .line 1947
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1948
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    .line 1949
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a01d8

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 1950
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingSideMenu:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1952
    new-instance v1, Lcom/samsung/android/glview/GLButton;

    move/from16 v0, v22

    int-to-float v3, v0

    move/from16 v0, v23

    int-to-float v4, v0

    const v5, 0x7f0200e9

    const v6, 0x7f0200ea

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    .line 1954
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    .line 1955
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 1956
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 1957
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 1958
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 1959
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->updateLayout(Z)V

    .line 1960
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1961
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    .line 1962
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a01fc

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 1963
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingSideMenu:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1965
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RIGHT_SIDE_MENU_POS_X:I

    sub-int v1, v19, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->UNDO_BUTTON_WIDTH:I

    sub-int v2, v18, v2

    div-int/lit8 v2, v2, 0x2

    add-int v25, v1, v2

    .line 1966
    .local v25, "undoButtonX":I
    sub-int v1, v20, v21

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->UNDO_BUTTON_WIDTH:I

    sub-int v26, v1, v2

    .line 1968
    .local v26, "undoButtonY":I
    new-instance v1, Lcom/samsung/android/glview/GLButton;

    move/from16 v0, v25

    int-to-float v3, v0

    move/from16 v0, v26

    int-to-float v4, v0

    const v5, 0x7f0200fc

    const v6, 0x7f0200fc

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mUndoButton:Lcom/samsung/android/glview/GLButton;

    .line 1969
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mUndoButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 1970
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mUndoButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 1971
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mUndoButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 1972
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mUndoButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 1973
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mUndoButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->updateLayout(Z)V

    .line 1974
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mUndoButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1975
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mUndoButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->UNDO_BUTTON_DIAMETER:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setRippleDiameter(F)V

    .line 1976
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mUndoButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a0154

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 1977
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingSideMenu:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mUndoButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1979
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_RECORDING_CONTINUOUS_AF:Z

    if-eqz v1, :cond_0

    .line 1980
    new-instance v1, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->CAF_BUTTON_POS_X:I

    int-to-float v3, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->CAF_BUTTON_POS_Y:I

    int-to-float v4, v2

    const v5, 0x7f020023

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    .line 1981
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    .line 1982
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 1983
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 1984
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 1985
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 1986
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->CAF_BUTTON_DIAMETER:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setRippleDiameter(F)V

    .line 1987
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a003d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 1988
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1991
    :cond_0
    const/4 v1, 0x3

    invoke-static {v1}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v24

    .line 1992
    .local v24, "resFlashID":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    new-instance v7, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v1, 0x6

    new-array v1, v1, [I

    const/4 v2, 0x0

    move-object/from16 v0, v24

    iget v3, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    aput v3, v1, v2

    const/4 v2, 0x1

    move-object/from16 v0, v24

    iget v3, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    aput v3, v1, v2

    const/4 v2, 0x2

    move-object/from16 v0, v24

    iget v3, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    aput v3, v1, v2

    const/4 v2, 0x3

    const/4 v3, 0x3

    aput v3, v1, v2

    const/4 v2, 0x4

    move-object/from16 v0, v24

    iget v3, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    aput v3, v1, v2

    const/4 v2, 0x5

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-direct {v7, v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;-><init>([I)V

    .line 1993
    .local v7, "bundleFlash":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    invoke-virtual {v7}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCommandReceiver()Lcom/sec/android/app/camera/interfaces/CommandInterface;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/interfaces/CommandInterface;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v8

    .line 1994
    .local v8, "cmdFlash":Lcom/sec/android/app/camera/command/MenuCommand;
    new-instance v1, Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->FLASH_BUTTON_POS_X:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->FLASH_BUTTON_POS_Y:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->FLASH_BUTTON_WIDTH:I

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->FLASH_BUTTON_HEIGHT:I

    int-to-float v6, v6

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mFlashButton:Lcom/sec/android/app/camera/widget/gl/Item;

    .line 1995
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mFlashButton:Lcom/sec/android/app/camera/widget/gl/Item;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/Item;->setRotatable(Z)V

    .line 1996
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mFlashButton:Lcom/sec/android/app/camera/widget/gl/Item;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/Item;->setCenterPivot(Z)V

    .line 1997
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mFlashButton:Lcom/sec/android/app/camera/widget/gl/Item;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/Item;->setRotateAnimation(Z)V

    .line 1998
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mFlashButton:Lcom/sec/android/app/camera/widget/gl/Item;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/Item;->setVisibility(I)V

    .line 2000
    new-instance v9, Lcom/samsung/android/glview/GLButton;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const v13, 0x7f0201bc

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v10, p1

    invoke-direct/range {v9 .. v16}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    .line 2001
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 2002
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 2003
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 2004
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 2005
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 2006
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a0228

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 2008
    new-instance v1, Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_GROUP_WIDTH:I

    int-to-float v5, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_GROUP_HEIGHT:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v6

    mul-float/2addr v6, v2

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 2009
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    .line 2010
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 2011
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLViewGroup;->setOrientationChangeListener(Lcom/samsung/android/glview/GLView$OrientationChangeListener;)V

    .line 2012
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_WIDTH:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_GROUP_WIDTH:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_HEIGHT:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_GROUP_MARGIN_Y:I

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_GROUP_HEIGHT:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 2014
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_WIDTH:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_GROUP_WIDTH:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_HEIGHT:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_GROUP_MARGIN_Y:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 2015
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_WIDTH:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_GROUP_MARGIN_Y_270:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_HEIGHT:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_GROUP_WIDTH:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 2016
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_WIDTH:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_GROUP_MARGIN_Y_270:I

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_GROUP_HEIGHT:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_HEIGHT:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_GROUP_WIDTH:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 2019
    new-instance v1, Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f0201c8

    move-object/from16 v0, p1

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    .line 2020
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2022
    new-instance v1, Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f0201c7

    move-object/from16 v0, p1

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    .line 2023
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2025
    new-instance v9, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_TEXT_POS_X:I

    int-to-float v11, v1

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_TEXT_WIDTH:I

    int-to-float v13, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_GROUP_HEIGHT:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v2

    mul-float v14, v1, v2

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRecordingTimeText()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_TEXT_SIZE:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 2026
    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v2

    mul-float v16, v1, v2

    move-object/from16 v10, p1

    invoke-direct/range {v9 .. v16}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;F)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    .line 2027
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 2028
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_TEXT_STROKE_WIDTH:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_TEXT_STROKE_COLOR:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 2029
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setShadowVisibility(Z)V

    .line 2031
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 2032
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 2033
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 2036
    new-instance v1, Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->PROGRESS_GROUP_WIDTH:I

    int-to-float v5, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->PROGRESS_GROUP_HEIGHT:I

    int-to-float v6, v2

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 2037
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    .line 2038
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_WIDTH:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->PROGRESS_GROUP_WIDTH:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_HEIGHT:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->PROGRESS_GROUP_MARGIN_Y:I

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->PROGRESS_GROUP_HEIGHT:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 2039
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_WIDTH:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->PROGRESS_GROUP_WIDTH:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_HEIGHT:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->PROGRESS_GROUP_MARGIN_Y:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 2040
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_WIDTH:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->PROGRESS_GROUP_MARGIN_Y_270:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_HEIGHT:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->PROGRESS_GROUP_WIDTH:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->PROGRESS_GROUP_WIDTH:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 2041
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_WIDTH:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->PROGRESS_GROUP_MARGIN_Y_270:I

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->PROGRESS_GROUP_HEIGHT:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_HEIGHT:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->PROGRESS_GROUP_WIDTH:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->PROGRESS_GROUP_WIDTH:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 2044
    new-instance v9, Lcom/samsung/android/glview/GLProgressBar;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->PROGRESSBAR_WIDTH:I

    int-to-float v13, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->PROGRESSBAR_HEIGHT:I

    int-to-float v14, v1

    const v15, 0x7f02018c

    const v16, 0x7f02018d

    move-object/from16 v10, p1

    invoke-direct/range {v9 .. v16}, Lcom/samsung/android/glview/GLProgressBar;-><init>(Lcom/samsung/android/glview/GLContext;FFFFII)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBar:Lcom/samsung/android/glview/GLProgressBar;

    .line 2045
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBar:Lcom/samsung/android/glview/GLProgressBar;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLProgressBar;->setMax(I)V

    .line 2047
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBar:Lcom/samsung/android/glview/GLProgressBar;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 2048
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 2049
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLViewGroup;->setOrientationChangeListener(Lcom/samsung/android/glview/GLView$OrientationChangeListener;)V

    .line 2052
    new-instance v1, Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE_TYPE_WIDTH:I

    int-to-float v5, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE_TYPE_HEIGHT:I

    int-to-float v6, v2

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 2053
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    .line 2054
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_WIDTH:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE_TYPE_WIDTH:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_HEIGHT:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE_TYPE_MARGIN_Y:I

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE_TYPE_HEIGHT:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 2055
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_WIDTH:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE_TYPE_WIDTH:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_HEIGHT:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE_TYPE_MARGIN_Y:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 2056
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_WIDTH:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE_TYPE_MARGIN_Y_270:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_HEIGHT:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE_TYPE_WIDTH:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE_TYPE_WIDTH:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 2057
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_WIDTH:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE_TYPE_MARGIN_Y_270:I

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE_TYPE_HEIGHT:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_HEIGHT:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE_TYPE_WIDTH:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE_TYPE_WIDTH:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 2060
    new-instance v1, Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f020070

    move-object/from16 v0, p1

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIcon:Lcom/samsung/android/glview/GLImage;

    .line 2061
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIcon:Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setRotatable(Z)V

    .line 2062
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIcon:Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setCenterPivot(Z)V

    .line 2063
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIcon:Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a0149

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setTitle(Ljava/lang/String;)V

    .line 2065
    new-instance v1, Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f02006c

    move-object/from16 v0, p1

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIconLine:Lcom/samsung/android/glview/GLImage;

    .line 2066
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIconLine:Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setRotatable(Z)V

    .line 2067
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIconLine:Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setCenterPivot(Z)V

    .line 2068
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIconLine:Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setFocusable(Z)V

    .line 2069
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIconLine:Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a0149

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setTitle(Ljava/lang/String;)V

    .line 2071
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 2072
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIconLine:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 2073
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 2074
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLViewGroup;->setOrientationChangeListener(Lcom/samsung/android/glview/GLView$OrientationChangeListener;)V

    .line 2077
    new-instance v1, Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_WIDTH:I

    int-to-float v5, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_HEIGHT:I

    int-to-float v6, v2

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCropAreaGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 2078
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCropAreaGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    .line 2079
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCropAreaGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 2080
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCropAreaGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 2081
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCropAreaGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 2082
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCropAreaGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 2084
    new-instance v9, Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->NORMAL_RATIO_PREVIEW_LEFT:I

    int-to-float v11, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_HEIGHT:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->NORMAL_RATIO_LANDSCAPE_CROP_WIDTH_DIVIDE_2:F

    sub-float v12, v1, v2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_NORMAL_WIDTH:I

    int-to-float v13, v1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->NORMAL_RATIO_LANDSCAPE_CROP_WIDTH_DIVIDE_2:F

    const v1, 0x7f0d000c

    .line 2085
    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v15

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v17, 0x1

    move-object/from16 v10, p1

    invoke-direct/range {v9 .. v17}, Lcom/samsung/android/glview/GLRectangle;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIFI)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mPortraitCropAreaLeft:Lcom/samsung/android/glview/GLRectangle;

    .line 2086
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mPortraitCropAreaLeft:Lcom/samsung/android/glview/GLRectangle;

    const v2, 0x3ee66666    # 0.45f

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLRectangle;->setAlpha(F)V

    .line 2087
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mPortraitCropAreaLeft:Lcom/samsung/android/glview/GLRectangle;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLRectangle;->setBypassTouch(Z)V

    .line 2089
    new-instance v9, Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->NORMAL_RATIO_PREVIEW_LEFT:I

    int-to-float v11, v1

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_NORMAL_WIDTH:I

    int-to-float v13, v1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->NORMAL_RATIO_LANDSCAPE_CROP_WIDTH_DIVIDE_2:F

    const v1, 0x7f0d000c

    .line 2090
    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v15

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v17, 0x1

    move-object/from16 v10, p1

    invoke-direct/range {v9 .. v17}, Lcom/samsung/android/glview/GLRectangle;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIFI)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mPortraitCropAreaRight:Lcom/samsung/android/glview/GLRectangle;

    .line 2091
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mPortraitCropAreaRight:Lcom/samsung/android/glview/GLRectangle;

    const v2, 0x3ee66666    # 0.45f

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLRectangle;->setAlpha(F)V

    .line 2092
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mPortraitCropAreaRight:Lcom/samsung/android/glview/GLRectangle;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLRectangle;->setBypassTouch(Z)V

    .line 2094
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCropAreaGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mPortraitCropAreaLeft:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 2095
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCropAreaGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mPortraitCropAreaRight:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 2096
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCropAreaGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 2098
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingSideMenu:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 2100
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCropAreaGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 2101
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 2102
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 2103
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 2104
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 2105
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mFlashButton:Lcom/sec/android/app/camera/widget/gl/Item;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 2106
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 2107
    return-void
.end method

.method private isCameraSwitched()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2110
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mFirstCameraId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 2113
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mFirstCameraId:I

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraId()I

    move-result v2

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isCameraSwitchingAnimationRunning()Z
    .locals 1

    .prologue
    .line 2118
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->isCameraSwitchingAnimationRunning()Z

    move-result v0

    return v0
.end method

.method private isClipsAdded()Z
    .locals 1

    .prologue
    .line 2123
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCurrentRecordingCount()I
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$100(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v0

    if-lez v0, :cond_0

    .line 2124
    const/4 v0, 0x1

    .line 2126
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCropAreaEnabled()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2131
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getVideoSizeDivider()[I

    move-result-object v0

    .line 2132
    .local v0, "div":[I
    aget v1, v0, v5

    .line 2133
    .local v1, "horizontal_div":I
    aget v3, v0, v4

    .line 2134
    .local v3, "vertical_div":I
    div-int v2, v3, v1

    .line 2136
    .local v2, "ratio":I
    if-eq v2, v4, :cond_0

    .line 2139
    :goto_0
    return v4

    :cond_0
    move v4, v5

    goto :goto_0
.end method

.method private isFinish()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2144
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    if-eqz v2, :cond_3

    .line 2145
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getProjectType()I
    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v2

    if-ne v2, v0, :cond_2

    .line 2146
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRemainedRecordingTime()I

    move-result v2

    if-gtz v2, :cond_1

    .line 2151
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 2146
    goto :goto_0

    .line 2148
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCurrentRecordingCount()I
    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$100(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getMaxRecordingCount()I
    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$1800(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v3

    if-ge v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 2151
    goto :goto_0
.end method

.method private isNeedReset()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2156
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isPausing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2157
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isFinish()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2164
    :cond_0
    :goto_0
    return v0

    .line 2160
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNeedRotate()Z
    .locals 6

    .prologue
    const/16 v5, 0x10e

    const/16 v4, 0x5a

    .line 2168
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/Engine;->getOrientationOnTake()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->calculateOrientationForPicture(I)I

    move-result v1

    .line 2169
    .local v1, "orientation":I
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSelfFlip()I

    move-result v0

    .line 2170
    .local v0, "flip":I
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getFirstCameraIdTaken()I
    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$1900(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraId()I

    move-result v3

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getOrientation()I
    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v2

    if-eq v2, v1, :cond_4

    .line 2171
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getOrientation()I
    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v2

    if-eq v2, v4, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getOrientation()I
    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v2

    if-ne v2, v5, :cond_4

    .line 2172
    :cond_0
    if-eq v1, v4, :cond_1

    if-ne v1, v5, :cond_4

    .line 2173
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraId()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/Engine;->getBackCameraId()I

    move-result v3

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getFirstFlip()I
    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2100(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 2174
    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraId()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/Engine;->getFrontCameraId()I

    move-result v3

    if-ne v2, v3, :cond_4

    if-nez v0, :cond_4

    .line 2176
    :cond_3
    const/4 v2, 0x1

    .line 2181
    :goto_0
    return v2

    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isNeedSaveProjcet()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2185
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isFinish()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2193
    :cond_0
    :goto_0
    return v0

    .line 2189
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isClipsAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2193
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isSavedProjectExist()Z
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 2197
    const/4 v2, 0x0

    .line 2198
    .local v2, "matched":Z
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "pref_video_collage_is_project_saved_key"

    invoke-static {v4, v5, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    .line 2200
    .local v1, "isSavedCheck":Z
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->fileList()[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    move v4, v3

    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v0, v5, v4

    .line 2201
    .local v0, "file":Ljava/lang/String;
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getProjectSaveFileName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_0

    .line 2202
    const/4 v2, 0x1

    .line 2200
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2206
    .end local v0    # "file":Ljava/lang/String;
    :cond_1
    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    const/4 v3, 0x1

    :cond_2
    return v3
.end method

.method private isSecureSavedProjectExist()Z
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 2210
    const/4 v2, 0x0

    .line 2211
    .local v2, "matched":Z
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "pref_video_collage_is_project_secure_saved_key"

    invoke-static {v4, v5, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    .line 2213
    .local v1, "isSavedCheck":Z
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->fileList()[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    move v4, v3

    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v0, v5, v4

    .line 2214
    .local v0, "file":Ljava/lang/String;
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getProjectSecureSaveFileName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_0

    .line 2215
    const/4 v2, 0x1

    .line 2213
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2219
    .end local v0    # "file":Ljava/lang/String;
    :cond_1
    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    const/4 v3, 0x1

    :cond_2
    return v3
.end method

.method private launchEditor()V
    .locals 12

    .prologue
    .line 2223
    const-string v9, "VideoCollage"

    const-string v10, "launchEditor()"

    invoke-static {v9, v10}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2225
    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "com.sec.android.app.clipvideo"

    invoke-static {v9, v10}, Lcom/sec/android/app/camera/util/Util;->isPkgEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 2226
    const/4 v0, 0x0

    .local v0, "duration":I
    const/4 v8, 0x0

    .local v8, "type":I
    const/4 v4, 0x0

    .local v4, "ratio":I
    const/4 v7, 0x0

    .line 2227
    .local v7, "start_orientation":I
    const/4 v1, 0x0

    .line 2228
    .local v1, "fileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 2229
    .local v6, "rotationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    const/4 v5, 0x0

    .line 2231
    .local v5, "resultPath":Ljava/lang/String;
    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getOrientation()I
    invoke-static {v9}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v7

    .line 2232
    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getRecordingTime()I
    invoke-static {v9}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$700(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v9

    div-int/lit16 v0, v9, 0x3e8

    .line 2233
    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getProjectType()I
    invoke-static {v9}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v8

    .line 2234
    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getRatio()I
    invoke-static {v9}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2200(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v4

    .line 2235
    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCLipListAsStringArray()Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2300(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)Ljava/util/ArrayList;

    move-result-object v1

    .line 2236
    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCLipListAsRotationInfo()Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2400(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)Ljava/util/ArrayList;

    move-result-object v6

    .line 2237
    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/Engine;->createVideoDirectory()Ljava/lang/String;

    move-result-object v5

    .line 2239
    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getProjectType()I
    invoke-static {v9}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_0

    .line 2240
    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getMaxRecordingCount()I
    invoke-static {v9}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$1800(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v9

    mul-int/2addr v0, v9

    .line 2243
    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 2244
    .local v2, "intent":Landroid/content/Intent;
    const-string v9, "com.sec.android.app.clipvideo"

    const-string v10, "com.sec.android.app.clipvideo.activity.ClipVideoEditorActivity"

    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2246
    const-string v9, "android.intent.action.EDIT"

    invoke-virtual {v2, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2248
    const-string v9, "orientation"

    invoke-virtual {v2, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2249
    const-string v9, "type"

    invoke-virtual {v2, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2250
    const-string v9, "collageType"

    iget-object v10, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getProjectType()I
    invoke-static {v10}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v10

    iget-object v11, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCollageType()I
    invoke-static {v11}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$800(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v11

    invoke-direct {p0, v10, v11}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getCollageTypeForEditor(II)I

    move-result v10

    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2251
    const-string v9, "duration"

    invoke-virtual {v2, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2252
    const-string v9, "aspectRatio"

    invoke-virtual {v2, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2253
    const-string v9, "fileList"

    invoke-virtual {v2, v9, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 2254
    const-string v9, "rotationList"

    invoke-virtual {v2, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2255
    const-string v9, "resultPath"

    invoke-virtual {v2, v9, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2257
    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCurrentLocation()Landroid/location/Location;

    move-result-object v3

    .line 2258
    .local v3, "location":Landroid/location/Location;
    if-eqz v3, :cond_1

    .line 2259
    const-string v9, "latitude"

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v10

    invoke-virtual {v2, v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 2260
    const-string v9, "longitude"

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v10

    invoke-virtual {v2, v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 2262
    :cond_1
    const-string v9, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v2, v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2264
    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const/16 v10, 0x7e9

    invoke-virtual {v9, v2, v10}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2265
    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const v10, 0x7f050002

    const v11, 0x7f050003

    invoke-virtual {v9, v10, v11}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 2269
    .end local v0    # "duration":I
    .end local v1    # "fileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "location":Landroid/location/Location;
    .end local v4    # "ratio":I
    .end local v5    # "resultPath":Ljava/lang/String;
    .end local v6    # "rotationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .end local v7    # "start_orientation":I
    .end local v8    # "type":I
    :cond_2
    return-void
.end method

.method private loadProjectFile(Ljava/lang/String;)Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;
    .locals 14
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 2272
    const/4 v7, 0x0

    .line 2274
    .local v7, "project":Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;
    :try_start_0
    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v5

    .local v5, "fis":Ljava/io/FileInputStream;
    const/4 v10, 0x0

    .line 2275
    :try_start_1
    new-instance v6, Ljava/io/ObjectInputStream;

    invoke-direct {v6, v5}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2274
    .local v6, "is":Ljava/io/ObjectInputStream;
    const/4 v11, 0x0

    .line 2276
    if-eqz v5, :cond_0

    .line 2277
    :try_start_2
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    move-object v7, v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 2279
    :cond_0
    if-eqz v6, :cond_1

    if-eqz v9, :cond_7

    :try_start_3
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_1
    :goto_0
    if-eqz v5, :cond_2

    if-eqz v9, :cond_a

    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 2284
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .end local v6    # "is":Ljava/io/ObjectInputStream;
    :cond_2
    :goto_1
    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, p1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 2285
    const-string v8, "VideoCollage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "fail to delete file : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2289
    :cond_3
    if-eqz v7, :cond_5

    .line 2290
    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCLipListAsStringArray()Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2300(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)Ljava/util/ArrayList;

    move-result-object v3

    .line 2291
    .local v3, "fileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v3, :cond_5

    .line 2292
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2293
    .local v4, "filePath":Ljava/lang/String;
    const-string v10, "VideoCollage"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "check validity of file path : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2294
    if-nez v4, :cond_c

    move-object v7, v9

    .line 2306
    .end local v3    # "fileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "filePath":Ljava/lang/String;
    .end local v7    # "project":Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;
    :cond_5
    :goto_2
    return-object v7

    .line 2279
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "is":Ljava/io/ObjectInputStream;
    .restart local v7    # "project":Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;
    :catch_0
    move-exception v8

    :try_start_5
    invoke-virtual {v11, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    .line 2274
    .end local v6    # "is":Ljava/io/ObjectInputStream;
    :catch_1
    move-exception v8

    :try_start_6
    throw v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2279
    :catchall_0
    move-exception v10

    move-object v13, v10

    move-object v10, v8

    move-object v8, v13

    :goto_3
    if-eqz v5, :cond_6

    if-eqz v10, :cond_b

    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_6
    :goto_4
    :try_start_8
    throw v8
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .end local v5    # "fis":Ljava/io/FileInputStream;
    :catch_2
    move-exception v1

    .line 2280
    .local v1, "e":Ljava/io/IOException;
    const-string v8, "VideoCollage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "loadProjectFile : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2279
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "is":Ljava/io/ObjectInputStream;
    :cond_7
    :try_start_9
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_0

    .end local v6    # "is":Ljava/io/ObjectInputStream;
    :catchall_1
    move-exception v8

    move-object v10, v9

    goto :goto_3

    .line 2274
    .restart local v6    # "is":Ljava/io/ObjectInputStream;
    :catch_3
    move-exception v8

    :try_start_a
    throw v8
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 2279
    :catchall_2
    move-exception v10

    move-object v13, v10

    move-object v10, v8

    move-object v8, v13

    :goto_5
    if-eqz v6, :cond_8

    if-eqz v10, :cond_9

    :try_start_b
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :cond_8
    :goto_6
    :try_start_c
    throw v8

    :catch_4
    move-exception v11

    invoke-virtual {v10, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_9
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_6

    :catch_5
    move-exception v8

    :try_start_d
    invoke-virtual {v10, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_a
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    goto/16 :goto_1

    .end local v6    # "is":Ljava/io/ObjectInputStream;
    :catch_6
    move-exception v11

    invoke-virtual {v10, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_b
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2

    goto :goto_4

    .line 2297
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v4    # "filePath":Ljava/lang/String;
    :cond_c
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2299
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_4

    move-object v7, v9

    .line 2300
    goto :goto_2

    .line 2279
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "fileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "filePath":Ljava/lang/String;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "is":Ljava/io/ObjectInputStream;
    :catchall_3
    move-exception v8

    move-object v10, v9

    goto :goto_5
.end method

.method private loadSavedProject(Ljava/lang/String;)V
    .locals 5
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 2310
    const-string v1, "VideoCollage"

    const-string v2, "setStateToSavedProject()"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2313
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    if-nez v1, :cond_0

    .line 2314
    new-instance v1, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;-><init>(Lcom/sec/android/app/camera/shootingmode/VideoCollage$1;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    .line 2317
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->loadProjectFile(Ljava/lang/String;)Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    .line 2320
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    if-eqz v1, :cond_1

    .line 2322
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getProjectType()I
    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCollageType()I
    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$800(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getRatio()I
    invoke-static {v4}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2200(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getCollageTypeSettingFromProject(III)I

    move-result v2

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setVideoCollageType(IZ)V

    .line 2323
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getRecordingTime()I
    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$700(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRecordingTimeSettingFromProject(I)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setVideoCollageRecordingTime(I)V

    .line 2324
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showRecordedLayout()V

    .line 2333
    :goto_0
    return-void

    .line 2326
    :cond_1
    new-instance v1, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;-><init>(Lcom/sec/android/app/camera/shootingmode/VideoCollage$1;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    .line 2327
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showPreviewLayout()V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2330
    :catch_0
    move-exception v0

    .line 2331
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    const-string v1, "VideoCollage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initializeMultiTrackRecording : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2330
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private onBackKeyPressed()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 2337
    const-string v1, "VideoCollage"

    const-string v2, "onBackKeyPressed()"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2338
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingTimeInMs:I

    const/16 v2, 0x3e8

    if-lt v1, v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STOPPING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STARTING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v1, v2, :cond_1

    .line 2339
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isFinish()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2340
    :cond_1
    const-string v1, "VideoCollage"

    const-string v2, "onBackKeyPressed - cannot cacncel recording or back(out camera)"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 2354
    :goto_0
    return v0

    .line 2343
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v1, v2, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STOPPING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v1, v2, :cond_3

    .line 2344
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->cancelRecording()V

    goto :goto_0

    .line 2346
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isClipsAdded()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2347
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSecureCamera()Z

    move-result v1

    if-nez v1, :cond_4

    .line 2348
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v2, 0x1dd

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showCameraDialog(I)V

    goto :goto_0

    .line 2350
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v2, 0x1df

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showCameraDialog(I)V

    goto :goto_0

    .line 2354
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onCAFButtonPressed()Z
    .locals 2

    .prologue
    .line 2358
    const-string v0, "VideoCollage"

    const-string v1, "onCAFButtonPressed()"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2360
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isAutoFocusing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2361
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->resetTouchFocus()V

    .line 2362
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideCAFButton()V

    .line 2363
    const/4 v0, 0x1

    .line 2365
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onPauseButtonPressed()Z
    .locals 4

    .prologue
    const/16 v3, 0x3e8

    const/4 v2, 0x0

    .line 2369
    const-string v0, "VideoCollage"

    const-string v1, "onPauseButtonPressed()"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2371
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v0, v1, :cond_0

    .line 2372
    const-string v0, "VideoCollage"

    const-string v1, "onPauseButtonPressed - not recording state"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 2387
    :goto_0
    return v2

    .line 2377
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingTimeInMs:I

    if-lt v0, v3, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRemainedRecordingTime()I

    move-result v0

    if-gt v0, v3, :cond_2

    .line 2378
    :cond_1
    const-string v0, "VideoCollage"

    const-string v1, "onPauseButtonPressed - cannot pause recording"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2382
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getProjectType()I
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 2383
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->stopRecording()V

    goto :goto_0

    .line 2385
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->pauseRecording()V

    goto :goto_0
.end method

.method private onResumeButtonPressed()Z
    .locals 2

    .prologue
    .line 2391
    const-string v0, "VideoCollage"

    const-string v1, "onResumeButtonPressed()"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2392
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->resumeRecording()V

    .line 2393
    const/4 v0, 0x0

    return v0
.end method

.method private onSwitchCameraButtonPressed()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2397
    const-string v0, "VideoCollage"

    const-string v1, "onSwitchCameraButtonPressed()"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2398
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isCurrentState(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2399
    const-string v0, "VideoCollage"

    const-string v1, "onSwitchCameraButtonPressed() return not Engine previewing state"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2415
    :goto_0
    return v2

    .line 2403
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsCameraSwitching:Z

    if-eqz v0, :cond_1

    .line 2404
    const-string v0, "VideoCollage"

    const-string v1, "onSwitchCameraButtonPressed() return because of switching"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2408
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isEmptyRequestQueue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2409
    const-string v0, "VideoCollage"

    const-string v1, "onSwitchCameraButtonPressed() return because RequestQueue is not empty"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2413
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->switchCameraAsync()V

    goto :goto_0
.end method

.method private onUndoButtonPressed()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2419
    const-string v0, "VideoCollage"

    const-string v1, "onUndoButtonPressed()"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2421
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsCameraSwitching:Z

    if-eqz v0, :cond_0

    .line 2422
    const-string v0, "VideoCollage"

    const-string v1, "return mIsCameraSwitching"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2434
    :goto_0
    return v2

    .line 2426
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->doUndo()V

    .line 2429
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isClipsAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2430
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showRecordedLayout()V

    goto :goto_0

    .line 2432
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showPreviewLayout()V

    goto :goto_0
.end method

.method private pauseRecording()V
    .locals 2

    .prologue
    .line 2438
    const-string v0, "VideoCollage"

    const-string v1, "pauseRecording()"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2439
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_PAUSING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setRecordingState(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;)V

    .line 2440
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->schedulePauseVideoRecording()V

    .line 2441
    return-void
.end method

.method private prepareSwitchCamera()V
    .locals 4

    .prologue
    const/16 v3, 0x7f

    .line 2444
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSingleEffect()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2445
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showEffectLayout(Z)V

    .line 2446
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v1, v3}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    .line 2447
    .local v0, "effectThumbnailListMenu":Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;
    if-eqz v0, :cond_0

    .line 2448
    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->updateSelectedEffect()V

    .line 2451
    .end local v0    # "effectThumbnailListMenu":Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v1, v3}, Lcom/sec/android/app/camera/interfaces/MenuManager;->removeMenu(I)V

    .line 2452
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-static {v1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->instance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->clear()V

    .line 2453
    return-void
.end method

.method private removeLastProgressDivider()V
    .locals 3

    .prologue
    .line 2456
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBarDividerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 2457
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBarDividerList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBarDividerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLImage;

    .line 2458
    .local v0, "divider":Lcom/samsung/android/glview/GLImage;
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 2459
    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->clear()V

    .line 2461
    .end local v0    # "divider":Lcom/samsung/android/glview/GLImage;
    :cond_0
    return-void
.end method

.method private requestFocus(I)V
    .locals 1
    .param p1, "focusButton"    # I

    .prologue
    .line 2464
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2465
    packed-switch p1, :pswitch_data_0

    .line 2483
    :cond_0
    :goto_0
    return-void

    .line 2467
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->isDim()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2468
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->requestFocus()Z

    goto :goto_0

    .line 2472
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->isDim()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2473
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->requestFocus()Z

    goto :goto_0

    .line 2477
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->isDim()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2478
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->requestFocus()Z

    goto :goto_0

    .line 2465
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private reset()V
    .locals 2

    .prologue
    .line 2486
    const-string v0, "VideoCollage"

    const-string v1, "reset()"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2488
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    if-eqz v0, :cond_0

    .line 2489
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->clear()V
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$1600(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)V

    .line 2490
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    .line 2492
    :cond_0
    return-void
.end method

.method private resumeRecording()V
    .locals 2

    .prologue
    .line 2495
    const-string v0, "VideoCollage"

    const-string v1, "resumeRecording"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2496
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_PAUSING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v0, v1, :cond_0

    .line 2497
    const-string v0, "VideoCollage"

    const-string v1, "Return resumeRecording - wrong recording state"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 2502
    :goto_0
    return-void

    .line 2500
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestAudioFocus()V

    .line 2501
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleResumeVideoRecording()V

    goto :goto_0
.end method

.method private rotateCollageTypeIcon()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2505
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCurrentOrientation:I

    packed-switch v0, :pswitch_data_0

    .line 2520
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setOrientation(I)V

    .line 2521
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIconLine:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setOrientation(I)V

    .line 2524
    :goto_0
    return-void

    .line 2507
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLImage;->setOrientation(I)V

    .line 2508
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIconLine:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLImage;->setOrientation(I)V

    goto :goto_0

    .line 2511
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setOrientation(I)V

    .line 2512
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIconLine:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setOrientation(I)V

    goto :goto_0

    .line 2515
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setOrientation(I)V

    .line 2516
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIconLine:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setOrientation(I)V

    goto :goto_0

    .line 2505
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private saveProject()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 2530
    const-string v4, "VideoCollage"

    const-string v5, "saveProject()"

    invoke-static {v4, v5}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2531
    const/4 v1, 0x0

    .line 2533
    .local v1, "fileName":Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSecureCamera()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2534
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getProjectSecureSaveFileName()Ljava/lang/String;

    move-result-object v1

    .line 2539
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    .local v2, "fos":Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    .line 2540
    :try_start_1
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 2539
    .local v3, "os":Ljava/io/ObjectOutputStream;
    const/4 v5, 0x0

    .line 2542
    :try_start_2
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-virtual {v3, v7}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 2543
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSecureCamera()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2544
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "pref_video_collage_is_project_secure_saved_key"

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 2549
    :goto_1
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V

    .line 2550
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 2552
    if-eqz v3, :cond_0

    if-eqz v6, :cond_6

    :try_start_3
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_0
    :goto_2
    if-eqz v2, :cond_1

    if-eqz v6, :cond_8

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    .line 2555
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "os":Ljava/io/ObjectOutputStream;
    :cond_1
    :goto_3
    return-void

    .line 2536
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getProjectSaveFileName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2546
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "os":Ljava/io/ObjectOutputStream;
    :cond_3
    :try_start_5
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "pref_video_collage_is_project_saved_key"

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_1

    .line 2539
    :catch_0
    move-exception v4

    :try_start_6
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2552
    :catchall_0
    move-exception v5

    move-object v10, v5

    move-object v5, v4

    move-object v4, v10

    :goto_4
    if-eqz v3, :cond_4

    if-eqz v5, :cond_7

    :try_start_7
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :cond_4
    :goto_5
    :try_start_8
    throw v4
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 2539
    .end local v3    # "os":Ljava/io/ObjectOutputStream;
    :catch_1
    move-exception v4

    :try_start_9
    throw v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 2552
    :catchall_1
    move-exception v5

    move-object v6, v4

    move-object v4, v5

    :goto_6
    if-eqz v2, :cond_5

    if-eqz v6, :cond_9

    :try_start_a
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_2

    :cond_5
    :goto_7
    :try_start_b
    throw v4
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v0

    .line 2553
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v4, "VideoCollage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saveProject : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2552
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "os":Ljava/io/ObjectOutputStream;
    :catch_3
    move-exception v7

    :try_start_c
    invoke-virtual {v5, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    .end local v3    # "os":Ljava/io/ObjectOutputStream;
    :catchall_2
    move-exception v4

    goto :goto_6

    .restart local v3    # "os":Ljava/io/ObjectOutputStream;
    :cond_6
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V

    goto :goto_2

    :catch_4
    move-exception v7

    invoke-virtual {v5, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_7
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto :goto_5

    :catch_5
    move-exception v5

    :try_start_d
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_8
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    goto :goto_3

    .end local v3    # "os":Ljava/io/ObjectOutputStream;
    :catch_6
    move-exception v5

    invoke-virtual {v6, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_9
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_2

    goto :goto_7

    .restart local v3    # "os":Ljava/io/ObjectOutputStream;
    :catchall_3
    move-exception v4

    move-object v5, v6

    goto :goto_4
.end method

.method private sendShowUIMessageDelayed()V
    .locals 4

    .prologue
    const/4 v1, 0x3

    .line 2558
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mVideoCollageHandler:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

    if-eqz v0, :cond_0

    .line 2559
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mVideoCollageHandler:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;->removeMessages(I)V

    .line 2560
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mVideoCollageHandler:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 2562
    :cond_0
    return-void
.end method

.method private setCollageType(I)V
    .locals 4
    .param p1, "type"    # I

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x5

    const/4 v1, 0x4

    .line 2565
    packed-switch p1, :pswitch_data_0

    .line 2600
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    const/4 v1, 0x0

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setCollageType(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2500(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    .line 2603
    :goto_0
    return-void

    .line 2567
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setCollageType(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2500(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    goto :goto_0

    .line 2570
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setCollageType(I)V
    invoke-static {v0, v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2500(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    goto :goto_0

    .line 2573
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setCollageType(I)V
    invoke-static {v0, v3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2500(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    goto :goto_0

    .line 2576
    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    const/4 v1, 0x1

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setCollageType(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2500(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    goto :goto_0

    .line 2579
    :pswitch_5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    const/4 v1, 0x2

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setCollageType(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2500(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    goto :goto_0

    .line 2582
    :pswitch_6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    const/4 v1, 0x3

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setCollageType(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2500(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    goto :goto_0

    .line 2585
    :pswitch_7
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    const/4 v1, 0x7

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setCollageType(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2500(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    goto :goto_0

    .line 2588
    :pswitch_8
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setCollageType(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2500(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    goto :goto_0

    .line 2591
    :pswitch_9
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setCollageType(I)V
    invoke-static {v0, v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2500(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    goto :goto_0

    .line 2594
    :pswitch_a
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setCollageType(I)V
    invoke-static {v0, v3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2500(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    goto :goto_0

    .line 2597
    :pswitch_b
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    const/16 v1, 0x8

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setCollageType(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2500(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    goto :goto_0

    .line 2565
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method private setCollageTypeIconResources()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 2607
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isClipsAdded()Z

    move-result v3

    if-nez v3, :cond_3

    .line 2608
    const/4 v0, 0x0

    .line 2610
    .local v0, "iconOrder":I
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getViewOrientation()I
    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$900(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getViewOrientation()I
    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$900(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v3

    if-ne v3, v5, :cond_1

    .line 2611
    :cond_0
    const/4 v0, 0x1

    .line 2616
    :goto_0
    const/4 v2, 0x0

    .local v2, "recordingCount":I
    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getMaxRecordingCount()I
    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$1800(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v3

    if-gt v2, v3, :cond_2

    .line 2617
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-direct {p0, v2, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getResourceIconOrder(II)I

    move-result v4

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->updateResourceIcon(II)V
    invoke-static {v3, v2, v4}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2600(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;II)V

    .line 2616
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2613
    .end local v2    # "recordingCount":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2620
    .restart local v2    # "recordingCount":I
    :cond_2
    const/4 v1, 0x0

    .local v1, "recCount":I
    :goto_2
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getMaxRecordingCount()I
    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$1800(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 2621
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getResourceIconLineOrder(II)I

    move-result v4

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->updateResourceIconLine(II)V
    invoke-static {v3, v1, v4}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2700(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;II)V

    .line 2620
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2626
    .end local v0    # "iconOrder":I
    .end local v1    # "recCount":I
    .end local v2    # "recordingCount":I
    :cond_3
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCurrentOrientation:I

    packed-switch v3, :pswitch_data_0

    .line 2635
    :pswitch_0
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v3, v5}, Lcom/samsung/android/glview/GLImage;->setDefaultOrientation(I)V

    .line 2636
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIconLine:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v3, v5}, Lcom/samsung/android/glview/GLImage;->setDefaultOrientation(I)V

    .line 2641
    :goto_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->rotateCollageTypeIcon()V

    .line 2642
    return-void

    .line 2629
    :pswitch_1
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLImage;->setDefaultOrientation(I)V

    .line 2630
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIconLine:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLImage;->setDefaultOrientation(I)V

    goto :goto_3

    .line 2626
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setCollageTypeIconTitle(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 2645
    const-string v0, ""

    .line 2647
    .local v0, "title":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 2675
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLImage;->setTitle(Ljava/lang/String;)V

    .line 2676
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIconLine:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLImage;->setTitle(Ljava/lang/String;)V

    .line 2677
    return-void

    .line 2649
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0142

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2650
    goto :goto_0

    .line 2652
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0144

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2653
    goto :goto_0

    .line 2655
    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0145

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2656
    goto :goto_0

    .line 2658
    :pswitch_3
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0143

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2659
    goto :goto_0

    .line 2661
    :pswitch_4
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0146

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2662
    goto :goto_0

    .line 2664
    :pswitch_5
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0148

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2665
    goto :goto_0

    .line 2667
    :pswitch_6
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0149

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2668
    goto :goto_0

    .line 2670
    :pswitch_7
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0147

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2671
    goto :goto_0

    .line 2647
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_3
        :pswitch_7
    .end packed-switch
.end method

.method private setCropArea()V
    .locals 14

    .prologue
    const/4 v11, 0x1

    const/4 v13, 0x0

    const/high16 v12, 0x40000000    # 2.0f

    .line 2680
    const-string v9, "VideoCollage"

    const-string v10, "setCropArea()"

    invoke-static {v9, v10}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2683
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getVideoSizeDivider()[I

    move-result-object v1

    .line 2684
    .local v1, "div":[I
    const/4 v9, 0x0

    aget v3, v1, v9

    .line 2685
    .local v3, "horizontal_div":I
    aget v7, v1, v11

    .line 2686
    .local v7, "vertical_div":I
    div-int v6, v7, v3

    .line 2688
    .local v6, "ratio":I
    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v5

    .line 2689
    .local v5, "previewRect":Landroid/graphics/Rect;
    const/4 v4, 0x0

    .line 2690
    .local v4, "origin_x":F
    const/4 v8, 0x0

    .line 2691
    .local v8, "width":F
    const/4 v2, 0x0

    .line 2693
    .local v2, "height":F
    if-eqz v5, :cond_1

    .line 2694
    iget v9, v5, Landroid/graphics/Rect;->left:I

    int-to-float v4, v9

    .line 2695
    cmpg-float v9, v4, v13

    if-gez v9, :cond_0

    .line 2696
    const/4 v4, 0x0

    .line 2698
    :cond_0
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v8, v9

    .line 2699
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v2, v9

    .line 2700
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v9

    int-to-float v9, v9

    cmpl-float v9, v8, v9

    if-lez v9, :cond_1

    .line 2701
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v9

    int-to-float v2, v9

    .line 2705
    :cond_1
    int-to-float v9, v6

    div-float v9, v2, v9

    sub-float v0, v2, v9

    .line 2707
    .local v0, "crop_height":F
    if-eq v6, v11, :cond_2

    .line 2708
    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mPortraitCropAreaLeft:Lcom/samsung/android/glview/GLRectangle;

    div-float v10, v0, v12

    sub-float v10, v2, v10

    div-float v11, v0, v12

    invoke-virtual {v9, v4, v10, v8, v11}, Lcom/samsung/android/glview/GLRectangle;->setRect(FFFF)V

    .line 2709
    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mPortraitCropAreaRight:Lcom/samsung/android/glview/GLRectangle;

    div-float v10, v0, v12

    invoke-virtual {v9, v4, v13, v8, v10}, Lcom/samsung/android/glview/GLRectangle;->setRect(FFFF)V

    .line 2711
    :cond_2
    return-void
.end method

.method private setMaxRecordingCount(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    const/4 v1, 0x1

    .line 2714
    packed-switch p1, :pswitch_data_0

    .line 2739
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setMaxRecordingCount(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2800(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    .line 2742
    :goto_0
    return-void

    .line 2718
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setMaxRecordingCount(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2800(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    goto :goto_0

    .line 2723
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    const/4 v1, 0x2

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setMaxRecordingCount(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2800(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    goto :goto_0

    .line 2730
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    const/4 v1, 0x3

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setMaxRecordingCount(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2800(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    goto :goto_0

    .line 2735
    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    const/4 v1, 0x4

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setMaxRecordingCount(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2800(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    goto :goto_0

    .line 2714
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private setProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 1496
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBar:Lcom/samsung/android/glview/GLProgressBar;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLProgressBar;->setProgress(I)V

    .line 1497
    return-void
.end method

.method private setProjectType(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    const/4 v1, 0x2

    .line 2745
    packed-switch p1, :pswitch_data_0

    .line 2768
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setProjectType(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2900(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    .line 2771
    :goto_0
    return-void

    .line 2749
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    const/4 v1, 0x0

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setProjectType(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2900(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    goto :goto_0

    .line 2754
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    const/4 v1, 0x1

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setProjectType(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2900(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    goto :goto_0

    .line 2765
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setProjectType(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2900(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    goto :goto_0

    .line 2745
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private setRatio(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2774
    packed-switch p1, :pswitch_data_0

    .line 2803
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setRatio(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$3000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    .line 2806
    :goto_0
    return-void

    .line 2778
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setRatio(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$3000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    goto :goto_0

    .line 2782
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setRatio(I)V
    invoke-static {v0, v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$3000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    goto :goto_0

    .line 2785
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setRatio(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$3000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    goto :goto_0

    .line 2792
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setRatio(I)V
    invoke-static {v0, v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$3000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    goto :goto_0

    .line 2799
    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setRatio(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$3000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    goto :goto_0

    .line 2774
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private setRecIndicatorIcon(I)V
    .locals 2
    .param p1, "projectType"    # I

    .prologue
    .line 2809
    packed-switch p1, :pswitch_data_0

    .line 2820
    :goto_0
    return-void

    .line 2812
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    const v1, 0x7f0201c8

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    goto :goto_0

    .line 2815
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    const v1, 0x7f0201cc

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    goto :goto_0

    .line 2809
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private setRecordingTime(I)V
    .locals 2
    .param p1, "recordingTime"    # I

    .prologue
    const/16 v1, 0x1770

    .line 2823
    packed-switch p1, :pswitch_data_0

    .line 2838
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setRecordingTime(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$3100(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    .line 2841
    :goto_0
    return-void

    .line 2825
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    const/16 v1, 0xbb8

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setRecordingTime(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$3100(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    goto :goto_0

    .line 2828
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setRecordingTime(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$3100(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    goto :goto_0

    .line 2831
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    const/16 v1, 0x2328

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setRecordingTime(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$3100(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    goto :goto_0

    .line 2834
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    const/16 v1, 0x3a98

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setRecordingTime(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$3100(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    goto :goto_0

    .line 2823
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setRecordingTimeByType()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2844
    const/4 v2, 0x0

    .line 2845
    .local v2, "recordingTime":I
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getProjectType()I
    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v1

    .line 2846
    .local v1, "projectType":I
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoCollageRecordingTime()I

    move-result v0

    .line 2848
    .local v0, "currTime":I
    if-nez v1, :cond_1

    .line 2849
    if-nez v0, :cond_0

    .line 2850
    const/4 v2, 0x1

    .line 2851
    iput-boolean v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsNeedBackupRecordingTime:Z

    .line 2852
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mMaxRecordingTimeBackup:I

    .line 2870
    :goto_0
    if-eq v0, v2, :cond_4

    .line 2871
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setVideoCollageRecordingTime(I)V

    .line 2875
    :goto_1
    return-void

    .line 2854
    :cond_0
    move v2, v0

    goto :goto_0

    .line 2857
    :cond_1
    iget-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsNeedBackupRecordingTime:Z

    if-eqz v3, :cond_3

    .line 2858
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mMaxRecordingTimeChangeCnt:I

    if-le v3, v5, :cond_2

    .line 2859
    move v2, v0

    .line 2863
    :goto_2
    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsNeedBackupRecordingTime:Z

    .line 2867
    :goto_3
    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mMaxRecordingTimeChangeCnt:I

    goto :goto_0

    .line 2861
    :cond_2
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mMaxRecordingTimeBackup:I

    goto :goto_2

    .line 2865
    :cond_3
    move v2, v0

    goto :goto_3

    .line 2873
    :cond_4
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setRecordingTime(I)V

    goto :goto_1
.end method

.method private showCAFButton()V
    .locals 2

    .prologue
    .line 2878
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 2879
    return-void
.end method

.method private showCollageTypeIcon()V
    .locals 2

    .prologue
    .line 2882
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 2883
    return-void
.end method

.method private showCollageTypeIconLine()V
    .locals 2

    .prologue
    .line 2886
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIconLine:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2887
    return-void
.end method

.method private showCropArea()V
    .locals 2

    .prologue
    .line 2890
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCropAreaGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 2891
    return-void
.end method

.method private showFlashButton()V
    .locals 2

    .prologue
    .line 2894
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mFlashButton:Lcom/sec/android/app/camera/widget/gl/Item;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/Item;->setVisibility(I)V

    .line 2895
    return-void
.end method

.method private showIndicatorLayout()V
    .locals 2

    .prologue
    .line 2898
    const-string v0, "VideoCollage"

    const-string v1, "showIndicatorLayout()"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2900
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STOPPING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v0, v1, :cond_2

    .line 2901
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getProjectType()I
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setRecIndicatorIcon(I)V

    .line 2902
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showRecTimeGroup()V

    .line 2904
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isClipsAdded()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v0, v1, :cond_1

    .line 2905
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showProgress()V

    .line 2907
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getProjectType()I
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 2908
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showCollageTypeIcon()V

    .line 2913
    :cond_2
    :goto_0
    return-void

    .line 2910
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideCollageTypeIcon()V

    goto :goto_0
.end method

.method private showLastProgressDivider()V
    .locals 2

    .prologue
    .line 2916
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mLastDivider:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2917
    return-void
.end method

.method private showLowDeviceStorageToast()V
    .locals 3

    .prologue
    .line 2921
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mLowDeviceStorageToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mLowDeviceStorageToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mLowDeviceStorageToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2922
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mLowDeviceStorageToast:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    .line 2923
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mLowDeviceStorageToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 2924
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mLowDeviceStorageToast:Landroid/widget/Toast;

    .line 2926
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v1, 0x7f0a01cd

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mLowDeviceStorageToast:Landroid/widget/Toast;

    .line 2927
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mLowDeviceStorageToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2929
    :cond_2
    return-void
.end method

.method private showPauseButton()V
    .locals 2

    .prologue
    .line 2932
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 2933
    return-void
.end method

.method private showPauseIndicatorIcon()V
    .locals 2

    .prologue
    .line 2936
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2937
    return-void
.end method

.method private showPauseLayout()V
    .locals 2

    .prologue
    .line 2940
    const-string v0, "VideoCollage"

    const-string v1, "showPauseLayout()"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2942
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hidePauseButton()V

    .line 2943
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showResumeButton()V

    .line 2944
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideRecIndicatorIcon()V

    .line 2945
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showPauseIndicatorIcon()V

    .line 2946
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->requestFocus(I)V

    .line 2947
    return-void
.end method

.method private showPreviewLayout()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2950
    const-string v0, "VideoCollage"

    const-string v1, "showPreviewLayout()"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2952
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isFinish()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2994
    :cond_0
    :goto_0
    return-void

    .line 2956
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideRecordingLayout()V

    .line 2957
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideRecordedLayout()V

    .line 2958
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->resetPageNavigatorItem()V

    .line 2959
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getProjectType()I
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v0

    if-nez v0, :cond_2

    .line 2960
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x1d4e

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hidePage(I)V

    .line 2962
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->disableView(I)V

    .line 2963
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x27c

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    .line 2964
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 2966
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraSingleEffect()I

    move-result v0

    if-eqz v0, :cond_3

    .line 2967
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showEffectLayout(Z)V

    .line 2972
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    if-eqz v0, :cond_0

    .line 2973
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCurrentOrientation:I

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setViewOrientation(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$200(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    .line 2975
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->updateCropArea()V

    .line 2976
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setProgress(I)V

    .line 2977
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRecordingTimeText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->updateRecordingTimeText(Ljava/lang/String;)V

    .line 2978
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hidePauseIndicatorIcon()V

    .line 2980
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getProjectType()I
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 2981
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setCollageTypeIconResources()V

    .line 2982
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCollageType()I
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$800(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setCollageTypeIconTitle(I)V

    .line 2983
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCurrentRecordingCount()I
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$100(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->updateCollageTypeIcon(I)V

    .line 2984
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showCollageTypeIconLine()V

    .line 2988
    :goto_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->updateIndicatorLayout()V

    .line 2989
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showIndicatorLayout()V

    .line 2990
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showRecordingButton()V

    .line 2992
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->requestFocus(I)V

    goto/16 :goto_0

    .line 2969
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showEffectLayout(Z)V

    goto :goto_1

    .line 2986
    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideCollageTypeIcon()V

    goto :goto_2
.end method

.method private showProgress()V
    .locals 2

    .prologue
    .line 2997
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 2998
    return-void
.end method

.method private showRecTimeGroup()V
    .locals 2

    .prologue
    .line 3001
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 3002
    return-void
.end method

.method private showRecordedLayout()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3005
    const-string v0, "VideoCollage"

    const-string v1, "showRecordedLayout()"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3007
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isFinish()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3062
    :cond_0
    :goto_0
    return-void

    .line 3011
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    .line 3012
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x1d4c

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hidePage(I)V

    .line 3013
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x3f

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->disableView(I)V

    .line 3015
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x200

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    .line 3016
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x3c0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 3018
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideRecordingLayout()V

    .line 3020
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraSingleEffect()I

    move-result v0

    if-eqz v0, :cond_2

    .line 3021
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showEffectLayout(Z)V

    .line 3026
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    if-eqz v0, :cond_0

    .line 3027
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->updateCropArea()V

    .line 3028
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRecordingTimeText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->updateRecordingTimeText(Ljava/lang/String;)V

    .line 3029
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->updateRecIndicatorIcon()V

    .line 3031
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getProjectType()I
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 3055
    :goto_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showIndicatorLayout()V

    .line 3056
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showUndoButton()V

    .line 3057
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showSwitchCameraButton()V

    .line 3058
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showRecordingButton()V

    .line 3060
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->requestFocus(I)V

    goto :goto_0

    .line 3023
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showEffectLayout(Z)V

    goto :goto_1

    .line 3033
    :pswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getCurrentProgress()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setProgress(I)V

    .line 3034
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->updateDivider()V

    .line 3035
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3036
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showFlashButton()V

    .line 3040
    :goto_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideRecIndicatorIcon()V

    .line 3041
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showPauseIndicatorIcon()V

    goto :goto_2

    .line 3038
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideFlashButton()V

    goto :goto_3

    .line 3044
    :pswitch_1
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setProgress(I)V

    .line 3045
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCurrentRecordingCount()I
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$100(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->updateCollageTypeIcon(I)V

    .line 3046
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3047
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showFlashButton()V

    .line 3051
    :goto_4
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showCollageTypeIconLine()V

    .line 3052
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hidePauseIndicatorIcon()V

    goto :goto_2

    .line 3049
    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideFlashButton()V

    goto :goto_4

    .line 3031
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showRecordingButton()V
    .locals 2

    .prologue
    .line 3065
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 3066
    return-void
.end method

.method private showRecordingLayout()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 3069
    const-string v0, "VideoCollage"

    const-string v1, "showRecordingLayout()"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3071
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isFinish()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3113
    :cond_0
    :goto_0
    return-void

    .line 3075
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, -0x181

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    .line 3076
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x240

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->disableView(I)V

    .line 3078
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraSingleEffect()I

    move-result v0

    if-eqz v0, :cond_2

    .line 3079
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showEffectLayout(Z)V

    .line 3082
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    if-eqz v0, :cond_0

    .line 3083
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideUndoButton()V

    .line 3084
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideFlashButton()V

    .line 3085
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideSwitchCameraButton()V

    .line 3086
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideCollageTypeIconLine()V

    .line 3088
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCurrentRecordingCount()I
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$100(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v0

    if-ge v0, v2, :cond_6

    .line 3089
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->startHideAnimation(Lcom/samsung/android/glview/GLButton;)V

    .line 3090
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->startShowAnimation(Lcom/samsung/android/glview/GLButton;)V

    .line 3095
    :goto_1
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->requestFocus(I)V

    .line 3097
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCurrentRecordingCount()I
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$100(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getProjectType()I
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 3098
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsNeedDrawingProgressDivider:Z

    .line 3099
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getCurrentProgress()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->addProgressDivider(I)V

    .line 3103
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getProjectType()I
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 3104
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCurrentRecordingCount()I
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$100(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v0

    if-nez v0, :cond_4

    .line 3105
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setCollageTypeIconResources()V

    .line 3107
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCurrentRecordingCount()I
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$100(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->updateCollageTypeIcon(I)V

    .line 3110
    :cond_5
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showIndicatorLayout()V

    .line 3111
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hidePauseIndicatorIcon()V

    goto :goto_0

    .line 3092
    :cond_6
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideRecordingButton()V

    .line 3093
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showPauseButton()V

    goto :goto_1
.end method

.method private showResumeButton()V
    .locals 2

    .prologue
    .line 3116
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 3117
    return-void
.end method

.method private showResumeLayout()V
    .locals 2

    .prologue
    .line 3120
    const-string v0, "VideoCollage"

    const-string v1, "showResumeLayout()"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3122
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideResumeButton()V

    .line 3123
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showPauseButton()V

    .line 3124
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hidePauseIndicatorIcon()V

    .line 3125
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->requestFocus(I)V

    .line 3126
    return-void
.end method

.method private showSwitchCameraButton()V
    .locals 3

    .prologue
    .line 3129
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3130
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SWITCH_BUTTON_POS_X:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SWITCH_BUTTON_POS_Y_FRONT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLButton;->moveBaseLayoutAbsolute(FF)V

    .line 3134
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 3135
    return-void

    .line 3132
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SWITCH_BUTTON_POS_X:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SWITCH_BUTTON_POS_Y_REAR:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLButton;->moveBaseLayoutAbsolute(FF)V

    goto :goto_0
.end method

.method private showUndoButton()V
    .locals 2

    .prologue
    .line 3138
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mUndoButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 3139
    return-void
.end method

.method private showView()V
    .locals 2

    .prologue
    .line 3142
    const-string v0, "VideoCollage"

    const-string v1, "showView()"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3144
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isFinish()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3158
    :goto_0
    return-void

    .line 3148
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3149
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/16 v1, 0x12

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->hideMenu(I)V

    .line 3152
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isClipsAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3153
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showRecordedLayout()V

    .line 3157
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsLayoutUpdateNeeded:Z

    goto :goto_0

    .line 3155
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showPreviewLayout()V

    goto :goto_1
.end method

.method private startHideAnimation(Lcom/samsung/android/glview/GLButton;)V
    .locals 12
    .param p1, "button"    # Lcom/samsung/android/glview/GLButton;

    .prologue
    const/high16 v11, 0x3f800000    # 1.0f

    const/16 v8, 0x23a

    const/4 v9, 0x0

    const/4 v0, 0x0

    .line 3161
    new-instance v10, Landroid/view/animation/AnimationSet;

    invoke-direct {v10, v9}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 3163
    .local v10, "hideAnimation":Landroid/view/animation/AnimationSet;
    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_WIDTH:I

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_HEIGHT:I

    new-instance v7, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;

    invoke-direct {v7}, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;-><init>()V

    move v1, v0

    move v2, v0

    move v3, v0

    move-object v4, p1

    invoke-static/range {v0 .. v8}, Lcom/sec/android/app/camera/util/AnimationUtil;->getTranslationAnimation(FFFFLcom/samsung/android/glview/GLView;IILandroid/view/animation/Interpolator;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 3164
    new-instance v1, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;

    invoke-direct {v1}, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;-><init>()V

    invoke-static {v8, v1}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 3165
    new-instance v7, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;

    invoke-direct {v7}, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;-><init>()V

    move v2, v11

    move v3, v0

    move v4, v11

    move v5, v0

    move-object v6, p1

    invoke-static/range {v2 .. v9}, Lcom/sec/android/app/camera/util/AnimationUtil;->getScaleAnimation(FFFFLcom/samsung/android/glview/GLView;Landroid/view/animation/Interpolator;II)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 3166
    invoke-virtual {v10, v9}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 3167
    const/4 v0, 0x1

    invoke-virtual {p1, v10, v0}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;Z)V

    .line 3168
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLButton;->startAnimation()V

    .line 3169
    return-void
.end method

.method private startShowAnimation(Lcom/samsung/android/glview/GLButton;)V
    .locals 13
    .param p1, "button"    # Lcom/samsung/android/glview/GLButton;

    .prologue
    const/high16 v12, 0x3f800000    # 1.0f

    const v11, 0x3f35c28f    # 0.71f

    const/16 v8, 0x23a

    const/4 v9, 0x0

    const/4 v0, 0x0

    .line 3172
    new-instance v10, Landroid/view/animation/AnimationSet;

    invoke-direct {v10, v9}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 3174
    .local v10, "showAnimation":Landroid/view/animation/AnimationSet;
    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_WIDTH:I

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_HEIGHT:I

    new-instance v7, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;

    invoke-direct {v7}, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;-><init>()V

    move v1, v0

    move v2, v0

    move v3, v0

    move-object v4, p1

    invoke-static/range {v0 .. v8}, Lcom/sec/android/app/camera/util/AnimationUtil;->getTranslationAnimation(FFFFLcom/samsung/android/glview/GLView;IILandroid/view/animation/Interpolator;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 3175
    new-instance v0, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;

    invoke-direct {v0}, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;-><init>()V

    invoke-static {v8, v0}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 3176
    new-instance v7, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;

    invoke-direct {v7}, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;-><init>()V

    move v2, v11

    move v3, v12

    move v4, v11

    move v5, v12

    move-object v6, p1

    invoke-static/range {v2 .. v9}, Lcom/sec/android/app/camera/util/AnimationUtil;->getScaleAnimation(FFFFLcom/samsung/android/glview/GLView;Landroid/view/animation/Interpolator;II)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 3177
    invoke-virtual {v10, v9}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 3178
    invoke-virtual {p1, v10}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;)V

    .line 3179
    invoke-virtual {p1, v9}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 3180
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLButton;->startAnimation()V

    .line 3181
    return-void
.end method

.method private startTimer()V
    .locals 2

    .prologue
    .line 3184
    const-string v0, "VideoCollage"

    const-string v1, "startTimer()"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3185
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->updateRecIndicatorIcon()V

    .line 3186
    return-void
.end method

.method private stopTimer()V
    .locals 3

    .prologue
    const/16 v2, 0x3e8

    .line 3189
    const-string v0, "VideoCollage"

    const-string v1, "stopTimer()"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3191
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mVideoCollageHandler:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

    if-eqz v0, :cond_0

    .line 3192
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mVideoCollageHandler:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;->removeMessages(I)V

    .line 3196
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingTimeInMs:I

    .line 3197
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isPausing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3198
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRemainedRecordingTime()I

    move-result v0

    if-gt v0, v2, :cond_2

    .line 3199
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setProgress(I)V

    .line 3200
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRecordingTimeText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->updateRecordingTimeText(Ljava/lang/String;)V

    .line 3205
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideRecIndicatorIcon()V

    .line 3206
    return-void

    .line 3202
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRecordingTimeText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->updateRecordingTimeText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private switchCamera()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 3209
    const-string v5, "VideoCollage"

    const-string v6, "switchCamera()"

    invoke-static {v5, v6}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3211
    const/4 v1, 0x0

    .local v1, "cameraResolution":Ljava/lang/String;
    const/4 v0, 0x0

    .line 3212
    .local v0, "camcorderResolution":Ljava/lang/String;
    const/4 v2, 0x0

    .line 3213
    .local v2, "collage_ratio":I
    const/4 v3, 0x0

    .line 3214
    .local v3, "currentTimerValue":I
    const/4 v4, 0x0

    .line 3216
    .local v4, "currentVoiceCommandValue":I
    iput-boolean v10, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsCameraSwitching:Z

    .line 3217
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideRecordedLayout()V

    .line 3218
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelAutoFocus()V

    .line 3220
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isCameraSwitched()Z

    move-result v5

    if-nez v5, :cond_6

    .line 3222
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getRatio()I
    invoke-static {v5}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2200(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v2

    .line 3223
    if-nez v2, :cond_4

    .line 3224
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_1BY1_LARGE:Ljava/lang/String;

    .line 3225
    :goto_0
    const-string v0, "960x960"

    .line 3231
    :cond_0
    :goto_1
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getTimer()I

    move-result v3

    .line 3232
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraVoiceCommand()I

    move-result v4

    .line 3234
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->toggleSwitchCameraIdSetting()V

    .line 3235
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraResolution()I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedCameraResolution:I

    .line 3236
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedCamcorderResolution:I

    .line 3237
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getTimer()I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedTimerValue:I

    .line 3238
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getZoomValue()I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedZoomValue:I

    .line 3239
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraVoiceCommand()I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedVoiceCommandValue:I

    .line 3240
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoCollageType()I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedVideoCollageType:I

    .line 3241
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSelfFlip()I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedFlipValue:I

    .line 3243
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraResolution(I)Z

    .line 3244
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCamcorderResolution(I)Z

    .line 3245
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setTimer(I)V

    .line 3246
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5, v9}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setZoomValue(I)V

    .line 3247
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraVoiceCommand(I)V

    .line 3248
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getProjectType()I
    invoke-static {v6}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCollageType()I
    invoke-static {v7}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$800(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v7

    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getRatio()I
    invoke-static {v8}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2200(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v8

    invoke-direct {p0, v6, v7, v8}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getCollageTypeSettingFromProject(III)I

    move-result v6

    invoke-interface {v5, v6, v9}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setVideoCollageType(IZ)V

    .line 3249
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3250
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5, v10}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setSelfFlip(I)V

    .line 3252
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->toggleSwitchCameraIdSetting()V

    .line 3277
    :cond_2
    :goto_2
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/Engine;->switchVideoCollageCamera()V

    .line 3279
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraVoiceCommand()I

    move-result v5

    if-ne v5, v10, :cond_c

    .line 3280
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->startVoiceRecognizer()V

    .line 3285
    :goto_3
    iput-boolean v9, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsCameraSwitching:Z

    .line 3287
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isClipsAdded()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 3288
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showRecordedLayout()V

    .line 3292
    :goto_4
    return-void

    .line 3224
    :cond_3
    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_RESOLUTION_1BY1_LARGE:Ljava/lang/String;

    goto/16 :goto_0

    .line 3226
    :cond_4
    if-ne v2, v10, :cond_0

    .line 3227
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v5

    if-eqz v5, :cond_5

    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_4BY3_LARGE:Ljava/lang/String;

    .line 3228
    :goto_5
    const-string v0, "960x720"

    goto/16 :goto_1

    .line 3227
    :cond_5
    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_RESOLUTION_4BY3_LARGE:Ljava/lang/String;

    goto :goto_5

    .line 3256
    :cond_6
    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedCameraResolution:I

    if-ltz v5, :cond_7

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedCamcorderResolution:I

    if-ltz v5, :cond_7

    .line 3257
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedCameraResolution:I

    invoke-interface {v5, v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraResolution(I)Z

    .line 3258
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedCamcorderResolution:I

    invoke-interface {v5, v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCamcorderResolution(I)Z

    .line 3260
    :cond_7
    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedTimerValue:I

    if-ltz v5, :cond_8

    .line 3261
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedTimerValue:I

    invoke-interface {v5, v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setTimer(I)V

    .line 3263
    :cond_8
    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedZoomValue:I

    if-ltz v5, :cond_9

    .line 3264
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedZoomValue:I

    invoke-interface {v5, v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setZoomValue(I)V

    .line 3266
    :cond_9
    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedVoiceCommandValue:I

    if-ltz v5, :cond_a

    .line 3267
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedVoiceCommandValue:I

    invoke-interface {v5, v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraVoiceCommand(I)V

    .line 3269
    :cond_a
    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedVideoCollageType:I

    if-ltz v5, :cond_b

    .line 3270
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedVideoCollageType:I

    invoke-interface {v5, v6, v9}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setVideoCollageType(IZ)V

    .line 3272
    :cond_b
    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedFlipValue:I

    if-ltz v5, :cond_2

    .line 3273
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedFlipValue:I

    invoke-interface {v5, v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setSelfFlip(I)V

    goto/16 :goto_2

    .line 3282
    :cond_c
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->stopVoiceRecognizer()V

    goto :goto_3

    .line 3290
    :cond_d
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showPreviewLayout()V

    goto :goto_4
.end method

.method private switchCameraAsync()V
    .locals 2

    .prologue
    .line 3295
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mVideoCollageHandler:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

    if-eqz v0, :cond_0

    .line 3296
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mVideoCollageHandler:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;->sendEmptyMessage(I)Z

    .line 3298
    :cond_0
    return-void
.end method

.method private switchCameraSync()V
    .locals 0

    .prologue
    .line 3301
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->prepareSwitchCamera()V

    .line 3302
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->switchCamera()V

    .line 3303
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->handleSwitchCameraCompleted()V

    .line 3304
    return-void
.end method

.method private toggleSwitchCameraIdSetting()V
    .locals 2

    .prologue
    .line 3307
    const-string v0, "VideoCollage"

    const-string v1, "toggleSwitchCameraIdSetting()"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3308
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3309
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getBackCameraId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraId(I)V

    .line 3313
    :cond_0
    :goto_0
    return-void

    .line 3310
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3311
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getFrontCameraId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraId(I)V

    goto :goto_0
.end method

.method private updateCollageTypeIcon(I)V
    .locals 2
    .param p1, "count"    # I

    .prologue
    .line 3316
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIcon:Lcom/samsung/android/glview/GLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getResourceIcon(I)I
    invoke-static {v1, p1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$3200(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 3317
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIconLine:Lcom/samsung/android/glview/GLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getResourceIconLine(I)I
    invoke-static {v1, p1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$3300(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 3318
    return-void
.end method

.method private updateCropArea()V
    .locals 1

    .prologue
    .line 3321
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isCropAreaEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3322
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setCropArea()V

    .line 3323
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showCropArea()V

    .line 3327
    :goto_0
    return-void

    .line 3325
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideCropArea()V

    goto :goto_0
.end method

.method private updateDivider()V
    .locals 5

    .prologue
    .line 3330
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isClipsAdded()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getProjectType()I
    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 3331
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getClipListAsDurationInMs()Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$3400(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)Ljava/util/ArrayList;

    move-result-object v0

    .line 3332
    .local v0, "durationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 3333
    .local v1, "durationSum":I
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->clearProgressDivider()V

    .line 3334
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_0

    .line 3335
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v1, v3

    .line 3336
    int-to-float v3, v1

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getRecordingTime()I
    invoke-static {v4}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$700(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    const/high16 v4, 0x447a0000    # 1000.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->addProgressDivider(I)V

    .line 3337
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showLastProgressDivider()V

    .line 3334
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3341
    .end local v0    # "durationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v1    # "durationSum":I
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method private updateIndicatorLayout()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3344
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->updateIndicatorRecTimePosition()V

    .line 3346
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCurrentOrientation:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCurrentOrientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 3347
    :cond_0
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_WIDTH:I

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    div-int/lit8 v0, v1, 0x2

    .line 3348
    .local v0, "offset":I
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    neg-int v2, v0

    int-to-float v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->translateAbsolute(FF)V

    .line 3349
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeGroup:Lcom/samsung/android/glview/GLViewGroup;

    neg-int v2, v0

    int-to-float v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->translateAbsolute(FF)V

    .line 3350
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    neg-int v2, v0

    int-to-float v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->translateAbsolute(FF)V

    .line 3356
    .end local v0    # "offset":I
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v4}, Lcom/samsung/android/glview/GLViewGroup;->updateLayout(Z)V

    .line 3357
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v4}, Lcom/samsung/android/glview/GLViewGroup;->updateLayout(Z)V

    .line 3358
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v4}, Lcom/samsung/android/glview/GLViewGroup;->updateLayout(Z)V

    .line 3359
    return-void

    .line 3352
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLViewGroup;->resetTranslate()V

    .line 3353
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLViewGroup;->resetTranslate()V

    .line 3354
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLViewGroup;->resetTranslate()V

    goto :goto_0
.end method

.method private updateIndicatorRecTimePosition()V
    .locals 9

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    .line 3364
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRecordingTimeText()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_TEXT_SIZE:F

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v5

    mul-float/2addr v4, v5

    invoke-static {v3, v4}, Lcom/sec/android/app/camera/util/Util;->getStringWidth(Ljava/lang/String;F)F

    move-result v3

    div-float v2, v3, v8

    .line 3365
    .local v2, "strlen":F
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_TEXT_POS_X:I

    int-to-float v3, v3

    add-float v1, v3, v2

    .line 3366
    .local v1, "margin":F
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_GROUP_WIDTH:I

    int-to-float v3, v3

    div-float/2addr v3, v8

    sub-float v0, v1, v3

    .line 3368
    .local v0, "diff":F
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v4, 0x0

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_WIDTH:I

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_GROUP_WIDTH:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v5, v8

    sub-float/2addr v5, v0

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_HEIGHT:I

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_GROUP_MARGIN_Y:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_GROUP_HEIGHT:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 3370
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v4, 0x2

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_WIDTH:I

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_GROUP_WIDTH:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v5, v8

    add-float/2addr v5, v0

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_HEIGHT:I

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_GROUP_MARGIN_Y:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 3371
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v4, 0x1

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_WIDTH:I

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_GROUP_MARGIN_Y_270:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_HEIGHT:I

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_GROUP_WIDTH:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v6, v8

    sub-float/2addr v6, v0

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 3373
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v4, 0x3

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_WIDTH:I

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_GROUP_MARGIN_Y_270:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_GROUP_HEIGHT:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_HEIGHT:I

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_GROUP_WIDTH:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v6, v8

    add-float/2addr v6, v0

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 3375
    return-void
.end method

.method private updateProgress()V
    .locals 4

    .prologue
    .line 3378
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getCurrentProgress()I

    move-result v0

    .line 3379
    .local v0, "progress":I
    const-string v1, "VideoCollage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateProgress() - progress:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3381
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v1, v2, :cond_1

    .line 3382
    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsNeedDrawingProgressDivider:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getProgress()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 3383
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsNeedDrawingProgressDivider:Z

    .line 3384
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showLastProgressDivider()V

    .line 3386
    :cond_0
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setProgress(I)V

    .line 3388
    :cond_1
    return-void
.end method

.method private updateRecIndicatorIcon()V
    .locals 2

    .prologue
    .line 3391
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mVideoCollageHandler:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

    if-eqz v0, :cond_0

    .line 3392
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mVideoCollageHandler:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;->removeMessages(I)V

    .line 3395
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v1, :cond_1

    .line 3396
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 3397
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 3402
    :cond_1
    :goto_0
    return-void

    .line 3399
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateRecordingTime(J)V
    .locals 7
    .param p1, "currentTimeMs"    # J

    .prologue
    .line 3405
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getCurrentRecordingTime()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCurrentRecordedTimeInMs()I
    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$600(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v2, p1

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 3417
    :goto_0
    return-void

    .line 3408
    :cond_0
    long-to-int v0, p1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingTimeInMs:I

    .line 3410
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRecordingTimeText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->updateRecordingTimeText(Ljava/lang/String;)V

    .line 3411
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->updateRecIndicatorIcon()V

    .line 3413
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mVideoCollageHandler:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

    if-eqz v0, :cond_1

    .line 3414
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mVideoCollageHandler:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 3416
    :cond_1
    const-string v0, "VideoCollage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateRecordingTime() - getCurrentRecordingTime():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getCurrentRecordingTime()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateRecordingTimeText(Ljava/lang/String;)V
    .locals 1
    .param p1, "timeText"    # Ljava/lang/String;

    .prologue
    .line 3420
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_0

    .line 3421
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 3423
    :cond_0
    return-void
.end method


# virtual methods
.method protected cancelRecording()V
    .locals 2

    .prologue
    .line 1130
    const-string v0, "VideoCollage"

    const-string v1, "cancelRecording()"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STOPPING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v1, :cond_0

    .line 1132
    const-string v0, "VideoCollage"

    const-string v1, "return cancelRecording - record is already stopping"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    :goto_0
    return-void

    .line 1136
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelAutoFocus()V

    .line 1138
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STOPPING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setRecordingState(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;)V

    .line 1139
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelVideoRecordingSync()V

    goto :goto_0
.end method

.method public isCapturing()Z
    .locals 1

    .prologue
    .line 338
    const/4 v0, 0x0

    return v0
.end method

.method public isChangingShootingModeDisabled()Z
    .locals 1

    .prologue
    .line 343
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isClipsAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    const/4 v0, 0x1

    .line 347
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlayRecordingStartSound()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 351
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getProjectType()I
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 352
    const-string v1, "VideoCollage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isClipStartSoundEnable getCurrentRecordingCount - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCurrentRecordingCount()I
    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$100(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isClipsAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 354
    const/4 v0, 0x0

    .line 357
    :cond_0
    return v0
.end method

.method public isPlayRecordingStopSound()Z
    .locals 1

    .prologue
    .line 361
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRemainedRecordingTime()I

    move-result v0

    if-lez v0, :cond_0

    .line 362
    const/4 v0, 0x0

    .line 364
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected isRecordingTimeRestricted()Z
    .locals 1

    .prologue
    .line 1144
    const/4 v0, 0x1

    return v0
.end method

.method protected isSnapShotAvailable()Z
    .locals 1

    .prologue
    .line 1149
    const/4 v0, 0x0

    return v0
.end method

.method public isZoomDisabled()Z
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getProjectType()I
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v0

    if-nez v0, :cond_0

    .line 370
    const/4 v0, 0x1

    .line 372
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivate(Lcom/sec/android/app/camera/interfaces/Engine;)V
    .locals 6
    .param p1, "engine"    # Lcom/sec/android/app/camera/interfaces/Engine;

    .prologue
    const/16 v5, 0x83

    const/16 v4, 0x12

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 377
    const-string v0, "VideoCollage"

    const-string v1, "onActivate()"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->registerRecordingController(Lcom/sec/android/app/camera/interfaces/Engine;)V

    .line 379
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCurrentOrientation:I

    .line 382
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isClipsAdded()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 384
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSecureCamera()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isSecureSavedProjectExist()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 385
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getProjectSecureSaveFileName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->loadSavedProject(Ljava/lang/String;)V

    .line 386
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_video_collage_is_project_secure_saved_key"

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 408
    :goto_0
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;-><init>(Lcom/sec/android/app/camera/shootingmode/VideoCollage;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mVideoCollageHandler:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

    .line 410
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_GPU_EFFECT:Z

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/16 v1, 0x7f

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEffectThumbnailListMenu:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    .line 412
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEffectThumbnailListMenu:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, v5, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 417
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/16 v1, 0x84

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 420
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setVideoCollageResolution()V

    .line 422
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setCollageTypeIconResources()V

    .line 425
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setCameraDialogListener(Lcom/sec/android/app/camera/interfaces/CameraContext$CameraDialogListener;)V

    .line 428
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0, v4}, Lcom/sec/android/app/camera/interfaces/MenuManager;->removeMenu(I)V

    .line 429
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0, v4}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    .line 430
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->setOnShowListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;)V

    .line 431
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V

    .line 433
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/16 v1, 0x232f

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEffectLevelSliderMenu:Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;

    .line 434
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEffectLevelSliderMenu:Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->setOnShowListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;)V

    .line 435
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEffectLevelSliderMenu:Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V

    .line 437
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setEffectProcessorListener(Lcom/sec/android/app/camera/interfaces/Engine$EffectProcessorListener;)V

    .line 438
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setEngineStateListener(Lcom/sec/android/app/camera/interfaces/Engine$EngineStateListener;)V

    .line 439
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setVideoContentsLoggingListener(Lcom/sec/android/app/camera/interfaces/Engine$VideoContentsLoggingListener;)V

    .line 441
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isClipsAdded()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v1, :cond_1

    .line 442
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraId()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mFirstCameraId:I

    .line 445
    :cond_1
    const/16 v0, 0x64

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mTickInterval:I

    .line 447
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFlashMode()I

    move-result v0

    if-ne v0, v3, :cond_9

    .line 448
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFlashAutoCallback(Z)V

    .line 453
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraHDR()I

    move-result v0

    if-ne v0, v3, :cond_a

    .line 454
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->enableHdrAutoCallback(Z)V

    .line 460
    :goto_2
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mFirstCameraId:I

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getFrontCameraId()I

    move-result v1

    if-ne v0, v1, :cond_b

    .line 461
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setSideQuickSettingItems([I)V

    .line 467
    :goto_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoCollageType()I

    move-result v1

    invoke-interface {v0, v5, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 470
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getStorageStatus(I)I

    move-result v0

    if-ne v0, v3, :cond_c

    .line 471
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    .line 472
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x191

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCameraDialogVisible(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 473
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showLowDeviceStorageToast()V

    .line 481
    :cond_2
    :goto_4
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsLayoutUpdateNeeded:Z

    .line 483
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showView()V

    .line 484
    return-void

    .line 387
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSecureCamera()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 388
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoCollageType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->initializeProject(I)V

    goto/16 :goto_0

    .line 389
    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isSavedProjectExist()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 390
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getProjectSaveFileName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->loadSavedProject(Ljava/lang/String;)V

    .line 391
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_video_collage_is_project_saved_key"

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 393
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoCollageType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->initializeProject(I)V

    goto/16 :goto_0

    .line 397
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoCollageType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->initializeProject(I)V

    .line 399
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSecureCamera()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 400
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->discardSaved()V

    goto/16 :goto_0

    .line 401
    :cond_7
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isSavedProjectExist()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 402
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x1de

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showCameraDialog(I)V

    goto/16 :goto_0

    .line 404
    :cond_8
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->discardSaved()V

    goto/16 :goto_0

    .line 450
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFlashAutoCallback(Z)V

    goto/16 :goto_1

    .line 456
    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->enableHdrAutoCallback(Z)V

    goto/16 :goto_2

    .line 463
    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setSideQuickSettingItems([I)V

    goto/16 :goto_3

    .line 475
    :cond_c
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isRecordingRestricted()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 476
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    goto/16 :goto_4

    .line 478
    :cond_d
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    goto/16 :goto_4

    .line 461
    :array_0
    .array-data 4
        0x84
        0x83
        0xc
    .end array-data

    .line 463
    :array_1
    .array-data 4
        0x84
        0x83
        0x3
        0xc
    .end array-data
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 488
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 524
    :cond_0
    :goto_0
    return v3

    .line 490
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isPreviewStarted()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecording()Z

    move-result v0

    if-nez v0, :cond_1

    .line 491
    const-string v0, "VideoCollage"

    const-string v1, "Wrong state for touchAF"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 495
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isStopPreviewPending()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 496
    const-string v0, "VideoCollage"

    const-string v1, "Preview is not started"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 500
    :cond_2
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_RECORDING_TOUCH_AF:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecording()Z

    move-result v0

    if-nez v0, :cond_0

    .line 504
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFocusMode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getProjectType()I
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 511
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/16 v1, 0x12

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isTouchAutoFocusArea(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 517
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showCAFButton()V

    goto :goto_0

    .line 488
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onAnimationEnd(Lcom/samsung/android/glview/GLView;Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 529
    return-void
.end method

.method public onAnimationStart(Lcom/samsung/android/glview/GLView;Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 533
    return-void
.end method

.method public onCameraSettingChanged(II)V
    .locals 6
    .param p1, "menuId"    # I
    .param p2, "modeId"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 537
    const-string v1, "VideoCollage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCameraSettingsChanged: menuid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", modeid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    packed-switch p1, :pswitch_data_0

    .line 604
    :cond_0
    :goto_0
    return-void

    .line 542
    :pswitch_0
    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsCameraSwitching:Z

    if-nez v1, :cond_0

    .line 546
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getProjectType()I
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v0

    .line 548
    .local v0, "prevProjcetType":I
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setProjectType(I)V

    .line 549
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setRecordingTimeByType()V

    .line 550
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setCollageType(I)V

    .line 551
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setRatio(I)V

    .line 552
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setMaxRecordingCount(I)V

    .line 554
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFlashMode()I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 555
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFlashAutoCallback(Z)V

    .line 560
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraHDR()I

    move-result v1

    if-ne v1, v4, :cond_2

    .line 561
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->enableHdrAutoCallback(Z)V

    .line 567
    :goto_2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v2, 0x83

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoCollageType()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 570
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setVideoCollageResolution()V

    .line 572
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraResolutionChanged()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->needToResizeForCameraPreviewAspectRatio()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 573
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/shootingmode/VideoCollage$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$1;-><init>(Lcom/sec/android/app/camera/shootingmode/VideoCollage;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 580
    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsLayoutUpdateNeeded:Z

    goto :goto_0

    .line 557
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v5}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFlashAutoCallback(Z)V

    goto :goto_1

    .line 563
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v5}, Lcom/sec/android/app/camera/interfaces/Engine;->enableHdrAutoCallback(Z)V

    goto :goto_2

    .line 581
    :cond_3
    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getProjectType()I
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    if-nez v0, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    .line 582
    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getProjectType()I
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v1

    if-eqz v1, :cond_6

    .line 583
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStopPreview()V

    .line 584
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStartPreview()V

    .line 585
    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsLayoutUpdateNeeded:Z

    goto/16 :goto_0

    .line 587
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mVideoCollageHandler:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

    if-eqz v1, :cond_0

    .line 588
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mVideoCollageHandler:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 593
    .end local v0    # "prevProjcetType":I
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getProjectType()I
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v1

    if-nez v1, :cond_7

    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsNeedBackupRecordingTime:Z

    if-eqz v1, :cond_7

    .line 594
    const-string v1, "VideoCollage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCameraSettingsChanged: mMaxRecordingTimeChangeCnt="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mMaxRecordingTimeChangeCnt:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mMaxRecordingTimeChangeCnt:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mMaxRecordingTimeChangeCnt:I

    .line 598
    :cond_7
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setRecordingTime(I)V

    .line 599
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRecordingTimeText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->updateRecordingTimeText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 539
    :pswitch_data_0
    .packed-switch 0x83
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCancelDialog(I)V
    .locals 3
    .param p1, "keyId"    # I

    .prologue
    .line 608
    const-string v0, "VideoCollage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCancelDialog keyId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    const/16 v0, 0x1e3

    if-ne p1, v0, :cond_0

    .line 610
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->discardRecording()V

    .line 613
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->dismissCameraDialog(I)V

    .line 614
    return-void
.end method

.method public onChangeShootingModeParameters(Lcom/samsung/android/camera/core/SemCamera$Parameters;)V
    .locals 11
    .param p1, "parameters"    # Lcom/samsung/android/camera/core/SemCamera$Parameters;

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/16 v8, 0xc

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 618
    const-string v3, "VideoCollage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onChangeShootingModeParameters : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v2

    sget-object v5, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STARTING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v2, v5, :cond_3

    const-string v2, "RECORDING"

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", VideoCollageType="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 619
    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoCollageType()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 618
    invoke-static {v3, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STARTING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v2, v3, :cond_6

    .line 622
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoCollageType()I

    move-result v2

    if-eq v2, v7, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 623
    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoCollageType()I

    move-result v2

    if-eq v2, v9, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 624
    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoCollageType()I

    move-result v2

    if-ne v2, v10, :cond_4

    .line 626
    :cond_0
    const v2, 0x1d4c0

    const v3, 0x1d4c0

    invoke-virtual {p1, v2, v3}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->setPreviewFpsRange(II)V

    .line 627
    const/16 v2, 0x170e

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraParameters;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x78

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraParameters;->getRecordingMotionFPS(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_COMPANION_CHIP:Z

    if-eqz v2, :cond_1

    .line 630
    invoke-static {v8}, Lcom/sec/android/app/camera/util/CameraParameters;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6}, Lcom/sec/android/app/camera/util/CameraParameters;->getCameraHDRString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    :cond_1
    invoke-virtual {p1, v7}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->setRecordingHint(Z)V

    .line 633
    const-string v2, "effectrecording-hint"

    invoke-virtual {p1, v2, v6}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 634
    const-string v2, "phase-af"

    const-string v3, "off"

    invoke-virtual {p1, v2, v3}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    :cond_2
    :goto_1
    return-void

    .line 618
    :cond_3
    const-string v2, "PREVIEW"

    goto :goto_0

    .line 636
    :cond_4
    const/16 v2, 0x5dc0

    const/16 v3, 0x5dc0

    invoke-virtual {p1, v2, v3}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->setPreviewFpsRange(II)V

    .line 638
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_COMPANION_CHIP:Z

    if-eqz v2, :cond_5

    .line 639
    invoke-static {v8}, Lcom/sec/android/app/camera/util/CameraParameters;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraHDR()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraParameters;->getCameraHDRString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    :cond_5
    invoke-virtual {p1, v6}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->setRecordingHint(Z)V

    .line 642
    const-string v2, "effectrecording-hint"

    invoke-virtual {p1, v2, v7}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 643
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_PHASE_AF:Z

    if-eqz v2, :cond_2

    .line 644
    const-string v2, "phase-af"

    const-string v3, "on"

    invoke-virtual {p1, v2, v3}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 647
    :cond_6
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoCollageType()I

    move-result v2

    if-eq v2, v7, :cond_7

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 648
    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoCollageType()I

    move-result v2

    if-eq v2, v9, :cond_7

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 649
    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoCollageType()I

    move-result v2

    if-ne v2, v10, :cond_9

    .line 651
    :cond_7
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_COMPANION_CHIP:Z

    if-eqz v2, :cond_8

    .line 652
    invoke-static {v8}, Lcom/sec/android/app/camera/util/CameraParameters;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6}, Lcom/sec/android/app/camera/util/CameraParameters;->getCameraHDRString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    :cond_8
    const/16 v2, 0x3a98

    const/16 v3, 0x7530

    invoke-virtual {p1, v2, v3}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->setPreviewFpsRange(II)V

    .line 655
    const-string v2, "effect_hint"

    invoke-virtual {p1, v2, v6}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 668
    :goto_2
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 669
    const/16 v2, 0xb

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraParameters;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    .line 670
    invoke-static {v9}, Lcom/sec/android/app/camera/util/CameraParameters;->getExposuremeterString(I)Ljava/lang/String;

    move-result-object v3

    .line 669
    invoke-virtual {p1, v2, v3}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 658
    :cond_9
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_COMPANION_CHIP:Z

    if-eqz v2, :cond_a

    .line 659
    invoke-static {v8}, Lcom/sec/android/app/camera/util/CameraParameters;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraHDR()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraParameters;->getCameraHDRString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    :cond_a
    const-string v2, "effect-available-fps-values"

    invoke-virtual {p1, v2}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 662
    .local v1, "str":Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraParameters;->getEffectFpsRange(Ljava/lang/String;)[I

    move-result-object v0

    .line 663
    .local v0, "effectPreviewFPSRange":[I
    aget v2, v0, v6

    aget v3, v0, v7

    invoke-virtual {p1, v2, v3}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->setPreviewFpsRange(II)V

    .line 664
    const-string v2, "effect_hint"

    invoke-virtual {p1, v2, v7}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;I)V

    goto :goto_2
.end method

.method public onClick(Lcom/samsung/android/glview/GLView;)Z
    .locals 3
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 677
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/16 v1, 0x12

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/16 v1, 0x83

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/16 v1, 0x84

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 678
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->collapseMenu()V

    .line 681
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 682
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x82

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 694
    :goto_0
    return v0

    .line 683
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 684
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->onPauseButtonPressed()Z

    move-result v0

    goto :goto_0

    .line 685
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 686
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->onResumeButtonPressed()Z

    move-result v0

    goto :goto_0

    .line 687
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mUndoButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 688
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->onUndoButtonPressed()Z

    move-result v0

    goto :goto_0

    .line 689
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 690
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->onCAFButtonPressed()Z

    move-result v0

    goto :goto_0

    .line 691
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 692
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->onSwitchCameraButtonPressed()Z

    move-result v0

    goto :goto_0

    .line 694
    :cond_7
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateView(Lcom/samsung/android/glview/GLContext;Lcom/samsung/android/glview/GLViewGroup;Lcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/interfaces/BaseMenuController;Lcom/sec/android/app/camera/interfaces/MenuManager;)V
    .locals 0
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "viewLayout"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p3, "controllerLayout"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p4, "baseMenuController"    # Lcom/sec/android/app/camera/interfaces/BaseMenuController;
    .param p5, "menuManager"    # Lcom/sec/android/app/camera/interfaces/MenuManager;

    .prologue
    .line 699
    iput-object p4, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    .line 700
    iput-object p5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    .line 702
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->initializeView(Lcom/samsung/android/glview/GLContext;Lcom/samsung/android/glview/GLViewGroup;Lcom/samsung/android/glview/GLViewGroup;)V

    .line 703
    return-void
.end method

.method public onEffectProcessorPrepared()V
    .locals 2

    .prologue
    .line 707
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v0, v1, :cond_0

    .line 708
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getEffectProcessorParameter()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setProcessorParameter(Ljava/lang/String;)V

    .line 710
    :cond_0
    return-void
.end method

.method public onEngineStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    const/4 v1, 0x3

    .line 714
    if-eq p1, v1, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 715
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mVideoCollageHandler:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsLayoutUpdateNeeded:Z

    if-eqz v0, :cond_1

    .line 716
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mVideoCollageHandler:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;->sendEmptyMessage(I)Z

    .line 719
    :cond_1
    return-void
.end method

.method public onHide(Lcom/sec/android/app/camera/interfaces/MenuBase;)V
    .locals 2
    .param p1, "menu"    # Lcom/sec/android/app/camera/interfaces/MenuBase;

    .prologue
    .line 723
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_GPU_EFFECT:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEffectThumbnailListMenu:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 724
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->stopThumbnailPreviewCallback()V

    .line 726
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 727
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showIndicatorLayout()V

    .line 728
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraSingleEffect()I

    move-result v0

    if-eqz v0, :cond_1

    .line 729
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showEffectLayout(Z)V

    .line 737
    :cond_1
    :goto_0
    return-void

    .line 731
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEffectLevelSliderMenu:Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 732
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showIndicatorLayout()V

    .line 733
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isCropAreaEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 734
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showCropArea()V

    goto :goto_0
.end method

.method public onImageStoringCompleted()Z
    .locals 1

    .prologue
    .line 741
    const/4 v0, 0x0

    return v0
.end method

.method public onInactivate()V
    .locals 8

    .prologue
    const/16 v7, 0x83

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 746
    const-string v1, "VideoCollage"

    const-string v2, "onInactivate()"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STOPPING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v1, v2, :cond_0

    .line 748
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->cancelRecording()V

    .line 751
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isNeedSaveProjcet()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 753
    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->saveProject()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 759
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isNeedReset()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 761
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isCameraSwitched()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 762
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->switchCameraSync()V

    .line 764
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->reset()V

    .line 767
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->unregisterRecordingController()V

    .line 768
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideView()V

    .line 770
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->resetOverriddenCamcorderResolution()V

    .line 773
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1, v7, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 774
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/16 v2, 0x84

    invoke-interface {v1, v2, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 777
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1, v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCamcorderAudioRecording(I)V

    .line 780
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isPausing()Z

    move-result v1

    if-nez v1, :cond_4

    .line 781
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1, v7, v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 784
    :cond_4
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_GPU_EFFECT:Z

    if-eqz v1, :cond_5

    .line 785
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEffectThumbnailListMenu:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V

    .line 789
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setCameraDialogListener(Lcom/sec/android/app/camera/interfaces/CameraContext$CameraDialogListener;)V

    .line 792
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/16 v2, 0x12

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/MenuManager;->removeMenu(I)V

    .line 793
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->setOnShowListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;)V

    .line 794
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V

    .line 795
    iput-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    .line 797
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEffectLevelSliderMenu:Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->setOnShowListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;)V

    .line 798
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEffectLevelSliderMenu:Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V

    .line 799
    iput-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEffectLevelSliderMenu:Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;

    .line 801
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->setEffectProcessorListener(Lcom/sec/android/app/camera/interfaces/Engine$EffectProcessorListener;)V

    .line 802
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->setEngineStateListener(Lcom/sec/android/app/camera/interfaces/Engine$EngineStateListener;)V

    .line 803
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->setVideoContentsLoggingListener(Lcom/sec/android/app/camera/interfaces/Engine$VideoContentsLoggingListener;)V

    .line 806
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v5}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFlashAutoCallback(Z)V

    .line 807
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v5}, Lcom/sec/android/app/camera/interfaces/Engine;->enableHdrAutoCallback(Z)V

    .line 810
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->removeSideQuickSettingItems()V

    .line 813
    iput-boolean v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsNeedDrawingProgressDivider:Z

    .line 814
    iput-boolean v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsLayoutUpdateNeeded:Z

    .line 815
    iput-boolean v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsTimerCounting:Z

    .line 817
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mVideoCollageHandler:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;->removeMessages(I)V

    .line 818
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mVideoCollageHandler:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;->removeMessages(I)V

    .line 819
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mVideoCollageHandler:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;->removeMessages(I)V

    .line 820
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mVideoCollageHandler:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;->removeMessages(I)V

    .line 822
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->clear()V

    .line 823
    return-void

    .line 754
    :catch_0
    move-exception v0

    .line 755
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "VideoCollage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onInactivate : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 827
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isRecordingControlAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 828
    const-string v1, "VideoCollage"

    const-string v2, "Recording control is not available at this moment, ignore key down event"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    :goto_0
    :sswitch_0
    return v0

    .line 831
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 837
    const/4 v0, 0x0

    goto :goto_0

    .line 831
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x1b -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 842
    sparse-switch p1, :sswitch_data_0

    .line 853
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 844
    :sswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->onBackKeyPressed()Z

    move-result v0

    goto :goto_0

    .line 846
    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v1, :cond_1

    .line 847
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->onPauseButtonPressed()Z

    move-result v0

    goto :goto_0

    .line 848
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_PAUSING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v1, :cond_0

    .line 849
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->onResumeButtonPressed()Z

    move-result v0

    goto :goto_0

    .line 842
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method public onMediaRecorderPreparedEvent(Landroid/media/MediaRecorder;)V
    .locals 7
    .param p1, "mediaRecorder"    # Landroid/media/MediaRecorder;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 858
    const-string v2, "VideoCollage"

    const-string v3, "onMediaRecorderPrepared()"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getMaxRecordingTimeInMs()I

    move-result v2

    add-int/lit8 v2, v2, 0x46

    invoke-virtual {p1, v2}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 861
    const-wide/32 v2, 0x7d000

    invoke-virtual {p1, v2, v3}, Landroid/media/MediaRecorder;->semSetFileSizeInterval(J)V

    .line 863
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getProjectType()I
    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v2

    if-nez v2, :cond_0

    .line 865
    invoke-virtual {p1, v6}, Landroid/media/MediaRecorder;->semSetRecordingMode(I)V

    .line 866
    const v2, 0x2dc6c0

    invoke-virtual {p1, v2}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 875
    :goto_0
    return-void

    .line 868
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getVideoSizeDivider()[I

    move-result-object v0

    .line 869
    .local v0, "div":[I
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v1

    .line 871
    .local v1, "resolutionId":I
    invoke-virtual {p1, v5}, Landroid/media/MediaRecorder;->semSetRecordingMode(I)V

    .line 872
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->getVideoBitRateFromProfile()I

    move-result v2

    aget v3, v0, v5

    aget v4, v0, v6

    mul-int/2addr v3, v4

    div-int/2addr v2, v3

    invoke-virtual {p1, v2}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 873
    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntWidth(I)I

    move-result v2

    aget v3, v0, v5

    div-int/2addr v2, v3

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntHeight(I)I

    move-result v3

    aget v4, v0, v6

    div-int/2addr v3, v4

    invoke-virtual {p1, v2, v3}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    goto :goto_0
.end method

.method public onMenuSelected(II)Z
    .locals 1
    .param p1, "menuId"    # I
    .param p2, "modeId"    # I

    .prologue
    .line 879
    const/4 v0, 0x0

    return v0
.end method

.method public onNegativeButtonClicked(I)V
    .locals 3
    .param p1, "keyId"    # I

    .prologue
    .line 884
    const-string v0, "VideoCollage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNegativeButtonClicked keyId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    const/16 v0, 0x1dd

    if-ne p1, v0, :cond_1

    .line 886
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->discardRecording()V

    .line 891
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->dismissCameraDialog(I)V

    .line 892
    return-void

    .line 887
    :cond_1
    const/16 v0, 0x1de

    if-ne p1, v0, :cond_0

    .line 888
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->discardSaved()V

    goto :goto_0
.end method

.method public onNewVideoLoggingPrepared(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 896
    .local p1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 897
    const-string v0, "Z101"

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShootingModeNameForLogging()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getTotalRecordingTime()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;J)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 898
    const-string v0, "Z029"

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraSingleEffect()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEffectNameForLogging(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 903
    :goto_0
    return-void

    .line 900
    :cond_0
    const-string v0, "Z100"

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShootingModeNameForLogging()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getTotalRecordingTime()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;J)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 901
    const-string v0, "Z028"

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraSingleEffect()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEffectNameForLogging(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onOrientationChanged(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    .line 908
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    if-nez v0, :cond_1

    .line 935
    :cond_0
    :goto_0
    return-void

    .line 912
    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCurrentOrientation:I

    if-eq v0, p1, :cond_2

    .line 913
    const-string v0, "VideoCollage"

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

    .line 914
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCurrentOrientation:I

    .line 917
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->updateIndicatorLayout()V

    .line 918
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->updateCropArea()V

    .line 920
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getProjectType()I
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v1, :cond_4

    .line 921
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCurrentOrientation:I

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setViewOrientation(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$200(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    .line 922
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setCollageTypeIconResources()V

    .line 923
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCurrentRecordingCount()I
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$100(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->updateCollageTypeIcon(I)V

    .line 928
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/16 v1, 0x12

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 929
    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-ne p1, v0, :cond_5

    .line 930
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideIndicatorLayout()V

    goto :goto_0

    .line 925
    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->rotateCollageTypeIcon()V

    goto :goto_1

    .line 932
    :cond_5
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showIndicatorLayout()V

    goto :goto_0
.end method

.method public onPositiveButtonClicked(I)V
    .locals 3
    .param p1, "keyId"    # I

    .prologue
    .line 939
    const-string v0, "VideoCollage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPositiveButtonClicked keyId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    const/16 v0, 0x1df

    if-ne p1, v0, :cond_1

    .line 941
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->discardRecording()V

    .line 959
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->dismissCameraDialog(I)V

    .line 960
    return-void

    .line 942
    :cond_1
    const/16 v0, 0x1dd

    if-ne p1, v0, :cond_3

    .line 945
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isCameraSwitched()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 946
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->switchCameraSync()V

    .line 948
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getDefaultShootingModeByCurrentCameraId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->handleShootingModeChanged(I)V

    goto :goto_0

    .line 950
    :cond_3
    const/16 v0, 0x1de

    if-ne p1, v0, :cond_4

    .line 951
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getProjectSaveFileName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->loadSavedProject(Ljava/lang/String;)V

    .line 952
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_video_collage_is_project_saved_key"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    .line 953
    :cond_4
    const/16 v0, 0x1e3

    if-ne p1, v0, :cond_0

    .line 954
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mVideoCollageHandler:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

    if-eqz v0, :cond_0

    .line 955
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mVideoCollageHandler:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onRecordKeyReleased()Z
    .locals 5

    .prologue
    const/16 v4, 0x84

    const/16 v3, 0x83

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 964
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLButton;->isDim()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1002
    :goto_0
    return v0

    .line 968
    :cond_0
    iget-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsCameraSwitching:Z

    if-eqz v2, :cond_1

    .line 969
    const-string v0, "VideoCollage"

    const-string v2, "return mIsCameraSwitching"

    invoke-static {v0, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 970
    goto :goto_0

    .line 973
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2, v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getStorageStatus(I)I

    move-result v2

    if-ne v2, v1, :cond_3

    .line 974
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_2

    .line 975
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    .line 977
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showLowDeviceStorageToast()V

    move v0, v1

    .line 978
    goto :goto_0

    .line 981
    :cond_3
    iget-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsLayoutUpdateNeeded:Z

    if-eqz v2, :cond_4

    .line 982
    const-string v1, "VideoCollage"

    const-string v2, "return mIsLayoutUpdateNeeded"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 986
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v2, 0x1dd

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCameraDialogVisible(I)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v2, 0x1de

    .line 987
    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCameraDialogVisible(I)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v2, 0x1df

    .line 988
    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCameraDialogVisible(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 989
    :cond_5
    const-string v0, "VideoCollage"

    const-string v2, "return isCameraDialogVisible.."

    invoke-static {v0, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 990
    goto :goto_0

    .line 993
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->startRecording()V

    .line 996
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCurrentRecordingCount()I
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$100(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v0

    if-nez v0, :cond_7

    .line 997
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 998
    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoCollageRecordingTime()I

    move-result v2

    .line 997
    invoke-static {v4, v2}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v2

    invoke-interface {v0, v4, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->sendBroadcastChangeSettings(II)V

    .line 999
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 1000
    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoCollageType()I

    move-result v2

    .line 999
    invoke-static {v3, v2}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v2

    invoke-interface {v0, v3, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->sendBroadcastChangeSettings(II)V

    :cond_7
    move v0, v1

    .line 1002
    goto/16 :goto_0
.end method

.method public onRecordingEvent(I)V
    .locals 1
    .param p1, "event"    # I

    .prologue
    .line 1007
    packed-switch p1, :pswitch_data_0

    .line 1029
    :cond_0
    :goto_0
    return-void

    .line 1009
    :pswitch_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsTimerCounting:Z

    if-eqz v0, :cond_0

    .line 1010
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showRecordingLayout()V

    .line 1011
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsTimerCounting:Z

    goto :goto_0

    .line 1015
    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showResumeLayout()V

    goto :goto_0

    .line 1018
    :pswitch_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showPauseLayout()V

    goto :goto_0

    .line 1021
    :pswitch_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->handleRecordingStopped()V

    goto :goto_0

    .line 1024
    :pswitch_4
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->handleRecordingCancelled()V

    goto :goto_0

    .line 1007
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onRecordingMaxDurationReached()V
    .locals 2

    .prologue
    .line 1033
    const-string v0, "VideoCollage"

    const-string v1, "onRecordingMaxReachedDuration()"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getMaxRecordingTimeInMs()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->updateRecordingTime(J)V

    .line 1036
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRecordingTimeText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->updateRecordingTimeText(Ljava/lang/String;)V

    .line 1037
    const/16 v0, 0x3e8

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setProgress(I)V

    .line 1039
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->stopRecording()V

    .line 1040
    return-void
.end method

.method public onRecordingMaxFileSizeReached()V
    .locals 3

    .prologue
    .line 1044
    const-string v0, "VideoCollage"

    const-string v1, "onRecordingMaxReachedFileSize()"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v1, 0x7f0a0264

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1046
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->stopRecording()V

    .line 1047
    return-void
.end method

.method protected onRecordingRestricted(ZZ)V
    .locals 3
    .param p1, "isRestricted"    # Z
    .param p2, "stopForced"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1155
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    .line 1156
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getStorageStatus(I)I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 1157
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    .line 1165
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v0, v1, :cond_1

    .line 1166
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->cancelRecording()V

    .line 1168
    :cond_1
    return-void

    .line 1158
    :cond_2
    if-eqz p1, :cond_3

    .line 1159
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    goto :goto_0

    .line 1161
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    goto :goto_0
.end method

.method public onRecordingTick(JJ)V
    .locals 3
    .param p1, "elapsedTime"    # J
    .param p3, "fileSize"    # J

    .prologue
    .line 1051
    const-string v0, "VideoCollage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTick - elapsedTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", fileSize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 1054
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->startTimer()V

    .line 1058
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->updateProgress()V

    .line 1059
    return-void

    .line 1056
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->updateRecordingTime(J)V

    goto :goto_0
.end method

.method public onShow(Lcom/sec/android/app/camera/interfaces/MenuBase;)V
    .locals 2
    .param p1, "menu"    # Lcom/sec/android/app/camera/interfaces/MenuBase;

    .prologue
    .line 1063
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1064
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCurrentOrientation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCurrentOrientation:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1065
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideIndicatorLayout()V

    .line 1068
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraSingleEffect()I

    move-result v0

    if-eqz v0, :cond_2

    .line 1069
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showEffectLayout(Z)V

    .line 1077
    :cond_2
    :goto_0
    return-void

    .line 1071
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEffectLevelSliderMenu:Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1072
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideIndicatorLayout()V

    .line 1073
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isCropAreaEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1074
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideCropArea()V

    goto :goto_0
.end method

.method public onShutterKeyLongPressed()Z
    .locals 1

    .prologue
    .line 1081
    const/4 v0, 0x0

    return v0
.end method

.method public onShutterKeyPressed()Z
    .locals 1

    .prologue
    .line 1086
    const/4 v0, 0x0

    return v0
.end method

.method public onShutterKeyReleased(I)Z
    .locals 1
    .param p1, "captureMethod"    # I

    .prologue
    .line 1091
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleCaptureEvent(I)V
    .locals 0
    .param p1, "event"    # I

    .prologue
    .line 1097
    return-void
.end method

.method protected onStopProgress(I)V
    .locals 0
    .param p1, "progress"    # I

    .prologue
    .line 1172
    return-void
.end method

.method protected onStopRecordingRequested(Z)V
    .locals 2
    .param p1, "forced"    # Z

    .prologue
    .line 1176
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v1, :cond_0

    .line 1180
    :goto_0
    return-void

    .line 1179
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->cancelRecording()V

    goto :goto_0
.end method

.method public onTimerEvent(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    const/16 v3, 0x3d

    .line 1101
    const-string v0, "VideoCollage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTimerEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1103
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/MenuManager;->showMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    .line 1105
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    if-eqz v0, :cond_1

    .line 1106
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->updateTime(I)V

    .line 1108
    :cond_1
    if-nez p1, :cond_2

    .line 1109
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x180

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 1110
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0xc0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    .line 1112
    :cond_2
    return-void
.end method

.method public onTouch(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1116
    const/4 v0, 0x0

    return v0
.end method

.method public onVideoDBUpdatePreparedEvent(Landroid/content/ContentValues;)Z
    .locals 1
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 1121
    const/4 v0, 0x1

    return v0
.end method

.method public onVideoStoringCompleted()Z
    .locals 1

    .prologue
    .line 1126
    const/4 v0, 0x1

    return v0
.end method

.method protected startRecording()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1183
    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STARTING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setRecordingState(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;)V

    .line 1186
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestAudioFocus()V

    .line 1187
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->setShutterSound(I)V

    .line 1188
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isPlayRecordingStartSound()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1189
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v2, 0x8

    invoke-interface {v1, v2, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->playCameraSound(II)V

    .line 1192
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->checkAvailableRecordingStorage()V

    .line 1194
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFlashMode()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 1195
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFlashAutoCallback(Z)V

    .line 1198
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getProjectType()I
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v1

    if-nez v1, :cond_3

    .line 1199
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Camera_recording_over_60fps"

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/util/Util;->notifyCameraInfo(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1204
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->createVideoCollageFilePath()Ljava/lang/String;

    move-result-object v0

    .line 1205
    .local v0, "videoFilePath":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/Engine;->setVideoFilePath(Ljava/lang/String;)V

    .line 1206
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setMaxVideoFileSize()V

    .line 1207
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleSwitchToCamcorderPreview()V

    .line 1208
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->schedulePrepareVideoRecording()V

    .line 1209
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getProjectType()I
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v1

    if-nez v1, :cond_2

    .line 1210
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->overrideFocusMode(I)V

    .line 1211
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->setFocusMode(I)V

    .line 1213
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStartVideoRecording()V

    .line 1216
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isTimerCounting()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1217
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsTimerCounting:Z

    .line 1221
    :goto_1
    return-void

    .line 1201
    .end local v0    # "videoFilePath":Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Camera_recording"

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/util/Util;->notifyCameraInfo(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1219
    .restart local v0    # "videoFilePath":Ljava/lang/String;
    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showRecordingLayout()V

    goto :goto_1
.end method

.method protected stopRecording()V
    .locals 2

    .prologue
    .line 1224
    const-string v0, "VideoCollage"

    const-string v1, "stopRecording()"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelAutoFocus()V

    .line 1228
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STOPPING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setRecordingState(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;)V

    .line 1229
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStopVideoRecordingAsync()V

    .line 1231
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getTotalRecordingTime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->updateRecordingTime(J)V

    .line 1232
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->resetOverriddenFocusMode()V

    .line 1233
    return-void
.end method

.method protected stopRecordingForced()V
    .locals 0

    .prologue
    .line 1236
    return-void
.end method
