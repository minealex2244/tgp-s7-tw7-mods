.class public Lcom/sec/android/app/camera/shootingmode/VideoCollage;
.super Ljava/lang/Object;
.source "VideoCollage.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/ShootingMode;
.implements Lcom/sec/android/app/camera/interfaces/RecordingMode;
.implements Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;
.implements Lcom/samsung/android/glview/GLView$OrientationChangeListener;
.implements Lcom/samsung/android/glview/GLView$ClickListener;
.implements Lcom/samsung/android/glview/GLView$AnimationEventListener;
.implements Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;
.implements Lcom/sec/android/app/camera/interfaces/CameraContext$CameraDialogListener;
.implements Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;
.implements Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$EffectProcessorListener;
.implements Lcom/sec/android/app/camera/interfaces/AeAfManager$AutoFocusListener;
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

.field private static final SWITCH_CAMERA:I = 0x4

.field private static final TAG:Ljava/lang/String; = "VideoCollage"

.field private static final UPDATE_REC_INDICATOR_MSG:I = 0x2

.field private static final VIDEO_COLLAGE_EDITOR_CLASS_NAME:Ljava/lang/String; = "com.sec.android.app.clipvideo.activity.ClipVideoEditorActivity"

.field private static final VIDEO_COLLAGE_EDITOR_PACKAGE:Ljava/lang/String; = "com.sec.android.app.clipvideo"

.field private static final VIDEO_COLLAGE_PROJECT_SAVE_FILE:Ljava/lang/String; = "VideoCollageProjectSave"

.field private static final VIDEO_COLLAGE_PROJECT_SECURE_SAVE_FILE:Ljava/lang/String; = "VideoCollageProjectSecureSave"

.field private static final VIDEO_COLLAGE_SAVE_DIRECTORY:Ljava/lang/String; = "/.VideoCollage"

.field private static final VIDEO_COLLAGE_SLOWMOTION_FRAME_RATE:I = 0x78


# instance fields
.field private final BASEMENU_GROUP_ICON_GAP:F

.field private final BASEMENU_GROUP_WIDTH:F

.field private final CAF_BUTTON_DIAMETER:I

.field private final CAF_BUTTON_POS_X:I

.field private final CAF_BUTTON_POS_Y:I

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

.field private final PAGE_NAVIGATOR_GROUP_HEIGHT:F

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

.field private final SHUTTER_BUTTON_GAP_WITH_NAVIGATOR:F

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

.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mCollageTypeGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mCollageTypeIcon:Lcom/samsung/android/glview/GLImage;

.field private mCollageTypeIconLine:Lcom/samsung/android/glview/GLImage;

.field private mCropAreaGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mCurrentOrientation:I

.field private mEffectThumbnailListMenu:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

.field private mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

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

.field private mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

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

    .line 150
    new-array v0, v2, [[I

    new-array v1, v5, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v3

    new-array v1, v5, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE1BY1_01_ICON_ARRAY:[[I

    .line 153
    new-array v0, v2, [[I

    new-array v1, v6, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v3

    new-array v1, v6, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE1BY1_02_ICON_ARRAY:[[I

    .line 156
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

    .line 159
    new-array v0, v2, [[I

    new-array v1, v6, [I

    fill-array-data v1, :array_6

    aput-object v1, v0, v3

    new-array v1, v6, [I

    fill-array-data v1, :array_7

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE1BY1_04_ICON_ARRAY:[[I

    .line 162
    new-array v0, v2, [[I

    new-array v1, v5, [I

    fill-array-data v1, :array_8

    aput-object v1, v0, v3

    new-array v1, v5, [I

    fill-array-data v1, :array_9

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE4BY3_01_ICON_ARRAY:[[I

    .line 165
    new-array v0, v2, [[I

    new-array v1, v6, [I

    fill-array-data v1, :array_a

    aput-object v1, v0, v3

    new-array v1, v6, [I

    fill-array-data v1, :array_b

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE4BY3_02_ICON_ARRAY:[[I

    .line 168
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

    .line 171
    new-array v0, v2, [[I

    new-array v1, v6, [I

    fill-array-data v1, :array_e

    aput-object v1, v0, v3

    new-array v1, v6, [I

    fill-array-data v1, :array_f

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE4BY3_04_ICON_ARRAY:[[I

    .line 175
    new-array v0, v2, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_10

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_11

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE1BY1_01_ICONLINE_ARRAY:[[I

    .line 178
    new-array v0, v2, [[I

    new-array v1, v5, [I

    fill-array-data v1, :array_12

    aput-object v1, v0, v3

    new-array v1, v5, [I

    fill-array-data v1, :array_13

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE1BY1_02_ICONLINE_ARRAY:[[I

    .line 181
    new-array v0, v2, [[I

    new-array v1, v6, [I

    fill-array-data v1, :array_14

    aput-object v1, v0, v3

    new-array v1, v6, [I

    fill-array-data v1, :array_15

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE1BY1_03_ICONLINE_ARRAY:[[I

    .line 184
    new-array v0, v2, [[I

    new-array v1, v5, [I

    fill-array-data v1, :array_16

    aput-object v1, v0, v3

    new-array v1, v5, [I

    fill-array-data v1, :array_17

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE1BY1_04_ICONLINE_ARRAY:[[I

    .line 187
    new-array v0, v2, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_18

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_19

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE4BY3_01_ICONLINE_ARRAY:[[I

    .line 190
    new-array v0, v2, [[I

    new-array v1, v5, [I

    fill-array-data v1, :array_1a

    aput-object v1, v0, v3

    new-array v1, v5, [I

    fill-array-data v1, :array_1b

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE4BY3_02_ICONLINE_ARRAY:[[I

    .line 193
    new-array v0, v2, [[I

    new-array v1, v6, [I

    fill-array-data v1, :array_1c

    aput-object v1, v0, v3

    new-array v1, v6, [I

    fill-array-data v1, :array_1d

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE4BY3_03_ICONLINE_ARRAY:[[I

    .line 196
    new-array v0, v2, [[I

    new-array v1, v5, [I

    fill-array-data v1, :array_1e

    aput-object v1, v0, v3

    new-array v1, v5, [I

    fill-array-data v1, :array_1f

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE4BY3_04_ICONLINE_ARRAY:[[I

    return-void

    .line 150
    :array_0
    .array-data 4
        0x7f020037
        0x7f020038
        0x7f020039
    .end array-data

    :array_1
    .array-data 4
        0x7f020037
        0x7f02003a
        0x7f020039
    .end array-data

    .line 153
    :array_2
    .array-data 4
        0x7f020044
        0x7f020045
        0x7f020046
        0x7f020047
    .end array-data

    :array_3
    .array-data 4
        0x7f020044
        0x7f020048
        0x7f020049
        0x7f020047
    .end array-data

    .line 156
    :array_4
    .array-data 4
        0x7f02004e
        0x7f02004f
        0x7f020050
        0x7f020051
        0x7f020052
    .end array-data

    :array_5
    .array-data 4
        0x7f02004e
        0x7f020053
        0x7f020054
        0x7f020055
        0x7f020052
    .end array-data

    .line 159
    :array_6
    .array-data 4
        0x7f02003b
        0x7f02003c
        0x7f02003e
        0x7f020040
    .end array-data

    :array_7
    .array-data 4
        0x7f02003b
        0x7f02003d
        0x7f02003f
        0x7f020040
    .end array-data

    .line 162
    :array_8
    .array-data 4
        0x7f020059
        0x7f02005a
        0x7f02005b
    .end array-data

    :array_9
    .array-data 4
        0x7f020059
        0x7f020056
        0x7f02005b
    .end array-data

    .line 165
    :array_a
    .array-data 4
        0x7f020067
        0x7f020068
        0x7f020069
        0x7f02006a
    .end array-data

    :array_b
    .array-data 4
        0x7f020067
        0x7f020062
        0x7f020063
        0x7f02006a
    .end array-data

    .line 168
    :array_c
    .array-data 4
        0x7f02006f
        0x7f020070
        0x7f020071
        0x7f020072
        0x7f020073
    .end array-data

    :array_d
    .array-data 4
        0x7f02006f
        0x7f020074
        0x7f020075
        0x7f020076
        0x7f020073
    .end array-data

    .line 171
    :array_e
    .array-data 4
        0x7f02005c
        0x7f02005d
        0x7f02005f
        0x7f020061
    .end array-data

    :array_f
    .array-data 4
        0x7f02005c
        0x7f02005e
        0x7f020060
        0x7f020061
    .end array-data

    .line 175
    :array_10
    .array-data 4
        0x7f020035
        0x7f020036
    .end array-data

    :array_11
    .array-data 4
        0x7f020036
        0x7f020035
    .end array-data

    .line 178
    :array_12
    .array-data 4
        0x7f020041
        0x7f020042
        0x7f020043
    .end array-data

    :array_13
    .array-data 4
        0x7f020043
        0x7f020042
        0x7f020041
    .end array-data

    .line 181
    :array_14
    .array-data 4
        0x7f02004a
        0x7f02004b
        0x7f02004c
        0x7f02004d
    .end array-data

    :array_15
    .array-data 4
        0x7f02004b
        0x7f02004d
        0x7f02004a
        0x7f02004c
    .end array-data

    .line 184
    :array_16
    .array-data 4
        0x7f020035
        0x7f02004b
        0x7f02004d
    .end array-data

    :array_17
    .array-data 4
        0x7f02004b
        0x7f02004d
        0x7f020035
    .end array-data

    .line 187
    :array_18
    .array-data 4
        0x7f020057
        0x7f020058
    .end array-data

    :array_19
    .array-data 4
        0x7f020058
        0x7f020057
    .end array-data

    .line 190
    :array_1a
    .array-data 4
        0x7f020064
        0x7f020065
        0x7f020066
    .end array-data

    :array_1b
    .array-data 4
        0x7f020066
        0x7f020065
        0x7f020064
    .end array-data

    .line 193
    :array_1c
    .array-data 4
        0x7f02006b
        0x7f02006c
        0x7f02006d
        0x7f02006e
    .end array-data

    :array_1d
    .array-data 4
        0x7f02006c
        0x7f02006e
        0x7f02006b
        0x7f02006d
    .end array-data

    .line 196
    :array_1e
    .array-data 4
        0x7f020057
        0x7f02006c
        0x7f02006e
    .end array-data

    :array_1f
    .array-data 4
        0x7f02006c
        0x7f02006e
        0x7f020057
    .end array-data
.end method

.method protected constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;Lcom/sec/android/app/camera/shootingmode/RecordingController;)V
    .locals 7
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "cameraSettings"    # Lcom/sec/android/app/camera/interfaces/CameraSettings;
    .param p3, "recordingController"    # Lcom/sec/android/app/camera/shootingmode/RecordingController;

    .prologue
    const v6, 0x7f0a029e

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_WIDTH:I

    .line 209
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_HEIGHT:I

    .line 212
    const v0, 0x7f0a01b2

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SIDE_MENU_WIDTH:I

    .line 213
    const v0, 0x7f0a01b1

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SIDE_MENU_HEIGHT:I

    .line 214
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_WIDTH:I

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SIDE_MENU_WIDTH:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RIGHT_SIDE_MENU_POS_X:I

    .line 217
    const v0, 0x7f0a0012

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->BASEMENU_GROUP_WIDTH:F

    .line 218
    const v0, 0x7f0a0054

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SHUTTER_BUTTON_GAP_WITH_NAVIGATOR:F

    .line 219
    const v0, 0x7f0a0375

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->PAGE_NAVIGATOR_GROUP_HEIGHT:F

    .line 220
    const v0, 0x7f0a02a4

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SHUTTER_BUTTON_WIDTH:F

    .line 221
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_HEIGHT:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SHUTTER_BUTTON_WIDTH:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v5

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SHUTTER_BUTTON_POS_Y:I

    .line 222
    const v0, 0x7f0a02ab

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->BASEMENU_GROUP_ICON_GAP:F

    .line 225
    const v0, 0x7f0a02d0

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->UNDO_BUTTON_WIDTH:I

    .line 226
    const v0, 0x7f0a039b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->UNDO_BUTTON_DIAMETER:I

    .line 229
    const v0, 0x7f0a0388

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->CAF_BUTTON_POS_X:I

    .line 230
    const v0, 0x7f0a0387

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->CAF_BUTTON_DIAMETER:I

    .line 231
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_HEIGHT:I

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->CAF_BUTTON_DIAMETER:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v5

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->CAF_BUTTON_POS_Y:I

    .line 234
    const v0, 0x7f0a029f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SWITCH_BUTTON_WIDTH:I

    .line 235
    invoke-static {v6}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SWITCH_BUTTON_HEIGHT:I

    .line 236
    const v0, 0x7f0a02a0

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SWITCH_BUTTON_POS_X:I

    .line 237
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_HEIGHT:I

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SWITCH_BUTTON_HEIGHT:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SWITCH_BUTTON_POS_Y:I

    .line 238
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_HEIGHT:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SWITCH_BUTTON_HEIGHT:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SWITCH_BUTTON_POS_Y_FRONT:I

    .line 239
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SWITCH_BUTTON_POS_Y:I

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SWITCH_BUTTON_POS_Y_REAR:I

    .line 242
    const v0, 0x7f0a029f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->FLASH_BUTTON_WIDTH:I

    .line 243
    invoke-static {v6}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->FLASH_BUTTON_HEIGHT:I

    .line 244
    const v0, 0x7f0a02a0

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->FLASH_BUTTON_POS_X:I

    .line 245
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_HEIGHT:I

    div-int/lit8 v0, v0, 0x3

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->FLASH_BUTTON_HEIGHT:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->FLASH_BUTTON_POS_Y:I

    .line 248
    const v0, 0x7f0a00c9

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE_TYPE_WIDTH:I

    .line 249
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE_TYPE_WIDTH:I

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE_TYPE_HEIGHT:I

    .line 250
    const v0, 0x7f0a00c7

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE_TYPE_MARGIN_Y:I

    .line 251
    const v0, 0x7f0a00c8

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE_TYPE_MARGIN_Y_270:I

    .line 254
    const v0, 0x7f0a00d1

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_GROUP_MARGIN_Y:I

    .line 255
    const v0, 0x7f0a00d2

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_GROUP_MARGIN_Y_270:I

    .line 256
    const v0, 0x7f0a00d0

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_GROUP_HEIGHT:I

    .line 257
    const v0, 0x7f0a00cf

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_ICON_WIDTH:I

    .line 258
    const v0, 0x7f0a00d4

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_TEXT_WIDTH:I

    .line 259
    const v0, 0x7f0a00d3

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_TEXT_LEFT_PADDING:I

    .line 260
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_ICON_WIDTH:I

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_TEXT_LEFT_PADDING:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_TEXT_WIDTH:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_GROUP_WIDTH:I

    .line 261
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_ICON_WIDTH:I

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_TEXT_LEFT_PADDING:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_TEXT_POS_X:I

    .line 262
    const v0, 0x7f0b0053

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_TEXT_STROKE_WIDTH:I

    .line 263
    const v0, 0x7f0d0045

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_TEXT_STROKE_COLOR:I

    .line 264
    const v0, 0x7f0a02cf

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_TEXT_SIZE:F

    .line 267
    const v0, 0x7f0a00ce

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->PROGRESS_GROUP_WIDTH:I

    .line 268
    const v0, 0x7f0a00cd

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->PROGRESS_GROUP_HEIGHT:I

    .line 269
    const v0, 0x7f0a00cb

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->PROGRESS_GROUP_MARGIN_Y:I

    .line 270
    const v0, 0x7f0a00cc

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->PROGRESS_GROUP_MARGIN_Y_270:I

    .line 271
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->PROGRESS_GROUP_WIDTH:I

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->PROGRESSBAR_WIDTH:I

    .line 272
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->PROGRESS_GROUP_HEIGHT:I

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->PROGRESSBAR_HEIGHT:I

    .line 273
    const v0, 0x7f0a00ca

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->PROGRESSBAR_DIVIDER_WIDTH:I

    .line 276
    const v0, 0x7f0a0188

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_NORMAL_WIDTH:I

    .line 277
    const v0, 0x7f0a000c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->NORMAL_RATIO_PREVIEW_LEFT:I

    .line 278
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_NORMAL_WIDTH:I

    int-to-float v0, v0

    div-float/2addr v0, v5

    div-float/2addr v0, v5

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->NORMAL_RATIO_LANDSCAPE_CROP_WIDTH_DIVIDE_2:F

    .line 281
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    .line 282
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    .line 284
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEffectThumbnailListMenu:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    .line 287
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mLowDeviceStorageToast:Landroid/widget/Toast;

    .line 308
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBarDividerList:Ljava/util/ArrayList;

    .line 314
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mFirstCameraId:I

    .line 316
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    .line 318
    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingTimeInMs:I

    .line 319
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedCameraResolution:I

    .line 320
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedCamcorderResolution:I

    .line 321
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedTimerValue:I

    .line 322
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedZoomValue:I

    .line 323
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedVideoCollageType:I

    .line 324
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedVoiceCommandValue:I

    .line 325
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedFlipValue:I

    .line 327
    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mMaxRecordingTimeChangeCnt:I

    .line 329
    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsNeedBackupRecordingTime:Z

    .line 330
    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsLayoutUpdateNeeded:Z

    .line 331
    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsNeedDrawingProgressDivider:Z

    .line 332
    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsTimerCounting:Z

    .line 333
    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsCameraSwitching:Z

    .line 335
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 336
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 337
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 339
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    .line 342
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 343
    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 344
    iput-object p3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    .line 345
    return-void
.end method

.method static synthetic access$1500(Lcom/sec/android/app/camera/shootingmode/VideoCollage;)Lcom/sec/android/app/camera/interfaces/MenuManager;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/VideoCollage;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/android/app/camera/shootingmode/VideoCollage;)Lcom/sec/android/app/camera/menu/ZoomSliderMenu;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/VideoCollage;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/sec/android/app/camera/shootingmode/VideoCollage;Lcom/sec/android/app/camera/menu/ZoomSliderMenu;)Lcom/sec/android/app/camera/menu/ZoomSliderMenu;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/VideoCollage;
    .param p1, "x1"    # Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/sec/android/app/camera/shootingmode/VideoCollage;)Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/VideoCollage;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEffectThumbnailListMenu:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/sec/android/app/camera/shootingmode/VideoCollage;Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/VideoCollage;
    .param p1, "x1"    # Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEffectThumbnailListMenu:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/shootingmode/VideoCollage;)Lcom/sec/android/app/camera/interfaces/CameraSettings;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/VideoCollage;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/shootingmode/VideoCollage;)Lcom/sec/android/app/camera/interfaces/CameraContext;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/VideoCollage;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/sec/android/app/camera/shootingmode/VideoCollage;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/VideoCollage;

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->updateRecIndicatorIcon()V

    return-void
.end method

.method static synthetic access$3800(Lcom/sec/android/app/camera/shootingmode/VideoCollage;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/VideoCollage;

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->launchEditor()V

    return-void
.end method

.method static synthetic access$3900(Lcom/sec/android/app/camera/shootingmode/VideoCollage;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/VideoCollage;

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isCameraSwitchingAnimationRunning()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4000(Lcom/sec/android/app/camera/shootingmode/VideoCollage;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/VideoCollage;

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->sendShowUIMessageDelayed()V

    return-void
.end method

.method static synthetic access$4100(Lcom/sec/android/app/camera/shootingmode/VideoCollage;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/VideoCollage;

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showView()V

    return-void
.end method

.method static synthetic access$4200(Lcom/sec/android/app/camera/shootingmode/VideoCollage;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/VideoCollage;

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->prepareSwitchCamera()V

    return-void
.end method

.method static synthetic access$4300(Lcom/sec/android/app/camera/shootingmode/VideoCollage;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/VideoCollage;

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->switchCamera()V

    return-void
.end method

.method static synthetic access$4400(Lcom/sec/android/app/camera/shootingmode/VideoCollage;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/VideoCollage;

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->handleSwitchCameraCompleted()V

    return-void
.end method

.method private addClip()V
    .locals 8

    .prologue
    .line 1199
    const/4 v0, 0x0

    .line 1200
    .local v0, "duration":I
    const-string v3, ""

    .line 1201
    .local v3, "recordedTime":Ljava/lang/String;
    const-string v2, ""

    .line 1203
    .local v2, "recordedFileName":Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentFilePath()Ljava/lang/String;

    move-result-object v2

    .line 1205
    new-instance v4, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v4}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 1207
    .local v4, "retriever":Landroid/media/MediaMetadataRetriever;
    :try_start_0
    invoke-virtual {v4, v2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 1208
    const/16 v5, 0x9

    invoke-virtual {v4, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 1212
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 1215
    :goto_0
    if-eqz v3, :cond_1

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1216
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1217
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

    .line 1223
    :goto_1
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    if-eqz v5, :cond_0

    .line 1224
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isNeedRotate()Z

    move-result v6

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->addClip(Ljava/lang/String;IZ)V
    invoke-static {v5, v2, v0, v6}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$500(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;Ljava/lang/String;IZ)V

    .line 1226
    :cond_0
    return-void

    .line 1209
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 1210
    .local v1, "e":Ljava/lang/RuntimeException;
    :goto_2
    :try_start_1
    const-string v5, "VideoCollage"

    const-string v6, "setDataSource failed"

    invoke-static {v5, v6}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1212
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v5

    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V

    throw v5

    .line 1219
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRecordedTimeInMs()I

    move-result v0

    .line 1220
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

    .line 1209
    :catch_1
    move-exception v5

    move-object v1, v5

    goto :goto_2
.end method

.method private addProgressDivider(I)V
    .locals 8
    .param p1, "progress"    # I

    .prologue
    .line 1229
    int-to-float v0, p1

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->PROGRESSBAR_WIDTH:I

    int-to-float v1, v1

    mul-float v2, v0, v1

    .line 1230
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

    const v7, 0x7f020034

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFFFZI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mLastDivider:Lcom/samsung/android/glview/GLImage;

    .line 1231
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mLastDivider:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1232
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBarDividerList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mLastDivider:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1233
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mLastDivider:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1234
    return-void
.end method

.method private clear()V
    .locals 2

    .prologue
    .line 1237
    const-string v0, "VideoCollage"

    const-string v1, "clear"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mVideoCollageHandler:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;->clear()V
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;->access$600(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;)V

    .line 1239
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mVideoCollageHandler:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

    .line 1240
    return-void
.end method

.method private clearProgressDivider()V
    .locals 3

    .prologue
    .line 1243
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

    .line 1244
    .local v0, "divider":Lcom/samsung/android/glview/GLImage;
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 1245
    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->clear()V

    goto :goto_0

    .line 1247
    .end local v0    # "divider":Lcom/samsung/android/glview/GLImage;
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBarDividerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1248
    return-void
.end method

.method private discardRecording()V
    .locals 4

    .prologue
    .line 1251
    const-string v2, "VideoCollage"

    const-string v3, "discardRecording()"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v2, v3, :cond_0

    .line 1254
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleCancelVideoRecording()V

    .line 1257
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    if-eqz v2, :cond_1

    .line 1258
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCurrentRecordingCount()I
    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$100(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v0

    .line 1260
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1261
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->doUndo()V

    .line 1260
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1264
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showPreviewLayout()V

    .line 1265
    return-void
.end method

.method private discardSaved()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1268
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getVideoCollageFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->deleteDirectory(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1269
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

    .line 1271
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getProjectSaveFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1272
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

    .line 1274
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getProjectSecureSaveFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1275
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

    .line 1277
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_video_collage_is_project_saved_key"

    invoke-static {v0, v1, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1278
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_video_collage_is_project_secure_saved_key"

    invoke-static {v0, v1, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1279
    return-void
.end method

.method private doUndo()V
    .locals 2

    .prologue
    .line 1282
    const-string v0, "VideoCollage"

    const-string v1, "doUndo()"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isClipsAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1285
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->removeLastClip()V
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$700(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)V

    .line 1287
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getProjectType()I
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1288
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->removeLastProgressDivider()V

    .line 1292
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCurrentRecordingCount()I
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$100(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v0

    if-nez v0, :cond_1

    .line 1293
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isCameraSwitched()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1294
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->switchCameraAsync()V

    .line 1297
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

    .line 1301
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    move v0, v3

    .line 1335
    :goto_0
    :pswitch_1
    return v0

    .line 1303
    :pswitch_2
    packed-switch p2, :pswitch_data_1

    move v0, v3

    .line 1311
    goto :goto_0

    :pswitch_3
    move v0, v1

    .line 1307
    goto :goto_0

    :pswitch_4
    move v0, v2

    .line 1309
    goto :goto_0

    .line 1314
    :pswitch_5
    packed-switch p2, :pswitch_data_2

    move v0, v3

    .line 1332
    goto :goto_0

    .line 1316
    :pswitch_6
    const/4 v0, 0x1

    goto :goto_0

    .line 1318
    :pswitch_7
    const/4 v0, 0x2

    goto :goto_0

    .line 1320
    :pswitch_8
    const/4 v0, 0x3

    goto :goto_0

    .line 1322
    :pswitch_9
    const/4 v0, 0x7

    goto :goto_0

    :pswitch_a
    move v0, v1

    .line 1326
    goto :goto_0

    :pswitch_b
    move v0, v2

    .line 1328
    goto :goto_0

    .line 1330
    :pswitch_c
    const/16 v0, 0x8

    goto :goto_0

    .line 1301
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_5
    .end packed-switch

    .line 1303
    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 1314
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

    .line 1340
    packed-switch p1, :pswitch_data_0

    move v0, v4

    .line 1377
    :cond_0
    :goto_0
    return v0

    .line 1342
    :pswitch_0
    if-ne p2, v1, :cond_1

    .line 1343
    const/4 v0, 0x1

    goto :goto_0

    .line 1344
    :cond_1
    if-ne p2, v2, :cond_2

    .line 1345
    const/4 v0, 0x2

    goto :goto_0

    .line 1346
    :cond_2
    if-ne p2, v3, :cond_0

    goto :goto_0

    .line 1351
    :pswitch_1
    if-nez p3, :cond_3

    move v0, v1

    .line 1352
    goto :goto_0

    :cond_3
    move v0, v2

    .line 1354
    goto :goto_0

    .line 1357
    :pswitch_2
    const/4 v5, 0x1

    if-ne p2, v5, :cond_4

    move v0, v3

    .line 1358
    goto :goto_0

    .line 1359
    :cond_4
    const/4 v5, 0x2

    if-ne p2, v5, :cond_5

    .line 1360
    const/4 v0, 0x7

    goto :goto_0

    .line 1361
    :cond_5
    if-ne p2, v0, :cond_6

    .line 1362
    const/16 v0, 0x8

    goto :goto_0

    .line 1363
    :cond_6
    const/4 v0, 0x7

    if-ne p2, v0, :cond_7

    .line 1364
    const/16 v0, 0x9

    goto :goto_0

    .line 1365
    :cond_7
    if-ne p2, v1, :cond_8

    .line 1366
    const/16 v0, 0xa

    goto :goto_0

    .line 1367
    :cond_8
    if-ne p2, v2, :cond_9

    .line 1368
    const/16 v0, 0xb

    goto :goto_0

    .line 1369
    :cond_9
    if-ne p2, v3, :cond_a

    .line 1370
    const/16 v0, 0xc

    goto :goto_0

    .line 1371
    :cond_a
    const/16 v0, 0x8

    if-ne p2, v0, :cond_b

    .line 1372
    const/16 v0, 0xd

    goto :goto_0

    :cond_b
    move v0, v4

    .line 1374
    goto :goto_0

    .line 1340
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
    .line 1383
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getProjectType()I
    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 1384
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v2, v3, :cond_0

    .line 1385
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRecordedTimeInMs()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCurrentRecordedTimeInMs()I
    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$800(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v3

    add-int v1, v2, v3

    .line 1392
    .local v1, "recordedTimeInMs":I
    :goto_0
    int-to-float v2, v1

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getRecordingTime()I
    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$900(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float/2addr v2, v3

    float-to-int v0, v2

    .line 1393
    .local v0, "progress":I
    return v0

    .line 1387
    .end local v0    # "progress":I
    .end local v1    # "recordedTimeInMs":I
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCurrentRecordedTimeInMs()I
    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$800(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v1

    .restart local v1    # "recordedTimeInMs":I
    goto :goto_0

    .line 1390
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
    .line 1398
    const/4 v0, 0x0

    .line 1400
    .local v0, "currentTime":I
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    if-eqz v1, :cond_0

    .line 1401
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getProjectType()I
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1402
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCurrentRecordedTimeInMs()I
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$800(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingTimeInMs:I

    add-int v0, v1, v2

    .line 1407
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

    .line 1408
    return v0

    .line 1404
    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingTimeInMs:I

    goto :goto_0
.end method

.method private getEffectProcessorParameter()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1412
    const/4 v0, 0x0

    .line 1414
    .local v0, "clipping":I
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isCropAreaEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1415
    const/4 v0, 0x1

    .line 1420
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

    .line 1421
    .local v1, "str":Ljava/lang/String;
    return-object v1

    .line 1417
    .end local v1    # "str":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getMaxRecordingTimeInMs()I
    .locals 4

    .prologue
    .line 1426
    const/4 v0, 0x0

    .line 1428
    .local v0, "duration":I
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    if-eqz v1, :cond_0

    .line 1429
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getRecordingTime()I
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$900(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v0

    .line 1431
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getProjectType()I
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1432
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
    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$800(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCurrentRecordedTimeInMs()I
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$800(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 1436
    :cond_0
    return v0
.end method

.method private getProgress()I
    .locals 1

    .prologue
    .line 1440
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBar:Lcom/samsung/android/glview/GLProgressBar;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLProgressBar;->getProgress()I

    move-result v0

    return v0
.end method

.method private getProjectSaveFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1448
    const-string v0, "VideoCollageProjectSave"

    return-object v0
.end method

.method private getProjectSecureSaveFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1452
    const-string v0, "VideoCollageProjectSecureSave"

    return-object v0
.end method

.method private getRecordedTimeInMs()I
    .locals 2

    .prologue
    .line 1456
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getTotalRecordingTime()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method private getRecordingTimeSettingFromProject(I)I
    .locals 1
    .param p1, "recordingTime"    # I

    .prologue
    const/4 v0, 0x1

    .line 1461
    sparse-switch p1, :sswitch_data_0

    .line 1471
    :goto_0
    :sswitch_0
    return v0

    .line 1463
    :sswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1467
    :sswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 1469
    :sswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 1461
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
    .locals 9

    .prologue
    const v8, 0x7f09022e

    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1477
    const-string v0, ""

    .line 1478
    .local v0, "time":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    if-eqz v1, :cond_0

    .line 1479
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1480
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "%d/%d"

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getRecordingTime()I
    invoke-static {v5}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$900(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v5

    div-int/lit16 v5, v5, 0x3e8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getCurrentRecordingTime()I

    move-result v5

    div-int/lit16 v5, v5, 0x3e8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1485
    :cond_0
    :goto_0
    return-object v0

    .line 1482
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "%d/%d"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getCurrentRecordingTime()I

    move-result v5

    div-int/lit16 v5, v5, 0x3e8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getRecordingTime()I
    invoke-static {v5}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$900(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v5

    div-int/lit16 v5, v5, 0x3e8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

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
    .line 1490
    const/4 v0, 0x0

    .line 1492
    .local v0, "remainedTime":I
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    if-eqz v1, :cond_0

    .line 1493
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getProjectType()I
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1494
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getRecordingTime()I
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$900(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCurrentRecordedTimeInMs()I
    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$800(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingTimeInMs:I

    add-int/2addr v2, v3

    sub-int v0, v1, v2

    .line 1499
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

    .line 1500
    return v0

    .line 1496
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getRecordingTime()I
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$900(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

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

    .line 1504
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getProjectType()I
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1527
    :goto_0
    return v0

    .line 1506
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCollageType()I
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$1000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v1

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 1508
    :pswitch_1
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE1BY1_01_ICONLINE_ARRAY:[[I

    aget-object v0, v0, p2

    aget v0, v0, p1

    goto :goto_0

    .line 1510
    :pswitch_2
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE1BY1_02_ICONLINE_ARRAY:[[I

    aget-object v0, v0, p2

    aget v0, v0, p1

    goto :goto_0

    .line 1512
    :pswitch_3
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE1BY1_03_ICONLINE_ARRAY:[[I

    aget-object v0, v0, p2

    aget v0, v0, p1

    goto :goto_0

    .line 1514
    :pswitch_4
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE1BY1_04_ICONLINE_ARRAY:[[I

    aget-object v0, v0, p2

    aget v0, v0, p1

    goto :goto_0

    .line 1516
    :pswitch_5
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE4BY3_01_ICONLINE_ARRAY:[[I

    aget-object v0, v0, p2

    aget v0, v0, p1

    goto :goto_0

    .line 1518
    :pswitch_6
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE4BY3_02_ICONLINE_ARRAY:[[I

    aget-object v0, v0, p2

    aget v0, v0, p1

    goto :goto_0

    .line 1520
    :pswitch_7
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE4BY3_03_ICONLINE_ARRAY:[[I

    aget-object v0, v0, p2

    aget v0, v0, p1

    goto :goto_0

    .line 1522
    :pswitch_8
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE4BY3_04_ICONLINE_ARRAY:[[I

    aget-object v0, v0, p2

    aget v0, v0, p1

    goto :goto_0

    .line 1504
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch

    .line 1506
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

    .line 1532
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getProjectType()I
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1555
    :goto_0
    return v0

    .line 1534
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCollageType()I
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$1000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v1

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 1536
    :pswitch_1
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE1BY1_01_ICON_ARRAY:[[I

    aget-object v0, v0, p2

    aget v0, v0, p1

    goto :goto_0

    .line 1538
    :pswitch_2
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE1BY1_02_ICON_ARRAY:[[I

    aget-object v0, v0, p2

    aget v0, v0, p1

    goto :goto_0

    .line 1540
    :pswitch_3
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE1BY1_03_ICON_ARRAY:[[I

    aget-object v0, v0, p2

    aget v0, v0, p1

    goto :goto_0

    .line 1542
    :pswitch_4
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE1BY1_04_ICON_ARRAY:[[I

    aget-object v0, v0, p2

    aget v0, v0, p1

    goto :goto_0

    .line 1544
    :pswitch_5
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE4BY3_01_ICON_ARRAY:[[I

    aget-object v0, v0, p2

    aget v0, v0, p1

    goto :goto_0

    .line 1546
    :pswitch_6
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE4BY3_02_ICON_ARRAY:[[I

    aget-object v0, v0, p2

    aget v0, v0, p1

    goto :goto_0

    .line 1548
    :pswitch_7
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE4BY3_03_ICON_ARRAY:[[I

    aget-object v0, v0, p2

    aget v0, v0, p1

    goto :goto_0

    .line 1550
    :pswitch_8
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE4BY3_04_ICON_ARRAY:[[I

    aget-object v0, v0, p2

    aget v0, v0, p1

    goto :goto_0

    .line 1532
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch

    .line 1534
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
    .line 1560
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

    .line 1564
    const/4 v2, 0x1

    .local v2, "verticalDivider":I
    const/4 v0, 0x1

    .line 1565
    .local v0, "horizontalDivider":I
    new-array v1, v4, [I

    .line 1567
    .local v1, "ret":[I
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getProjectType()I
    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 1634
    :pswitch_0
    const/4 v0, 0x1

    .line 1635
    const/4 v2, 0x1

    .line 1639
    :cond_0
    :goto_0
    const/4 v3, 0x0

    aput v0, v1, v3

    .line 1640
    aput v2, v1, v5

    .line 1641
    return-object v1

    .line 1569
    :pswitch_1
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCollageType()I
    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$1000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v3

    packed-switch v3, :pswitch_data_1

    .line 1583
    const/4 v0, 0x1

    .line 1584
    const/4 v2, 0x1

    .line 1585
    goto :goto_0

    .line 1571
    :pswitch_2
    const/4 v0, 0x1

    .line 1572
    const/4 v2, 0x2

    .line 1573
    goto :goto_0

    .line 1575
    :pswitch_3
    const/4 v0, 0x1

    .line 1576
    const/4 v2, 0x3

    .line 1577
    goto :goto_0

    .line 1579
    :pswitch_4
    const/4 v0, 0x1

    .line 1580
    const/4 v2, 0x1

    .line 1581
    goto :goto_0

    .line 1590
    :pswitch_5
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCollageType()I
    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$1000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v3

    packed-switch v3, :pswitch_data_2

    .line 1628
    const/4 v0, 0x1

    .line 1629
    const/4 v2, 0x1

    .line 1630
    goto :goto_0

    .line 1593
    :pswitch_6
    const/4 v0, 0x1

    .line 1594
    const/4 v2, 0x2

    .line 1595
    goto :goto_0

    .line 1598
    :pswitch_7
    const/4 v0, 0x1

    .line 1599
    const/4 v2, 0x3

    .line 1600
    goto :goto_0

    .line 1603
    :pswitch_8
    const/4 v0, 0x2

    .line 1604
    const/4 v2, 0x2

    .line 1605
    goto :goto_0

    .line 1609
    :pswitch_9
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getViewOrientation()I
    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$1100(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getViewOrientation()I
    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$1100(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v3

    if-ne v3, v4, :cond_4

    .line 1610
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

    .line 1611
    :cond_2
    const/4 v0, 0x2

    .line 1612
    const/4 v2, 0x2

    goto :goto_0

    .line 1613
    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCurrentRecordingCount()I
    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$100(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v3

    if-ne v3, v4, :cond_0

    .line 1614
    const/4 v0, 0x1

    .line 1615
    const/4 v2, 0x2

    goto :goto_0

    .line 1618
    :cond_4
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCurrentRecordingCount()I
    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$100(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v3

    if-nez v3, :cond_5

    .line 1619
    const/4 v0, 0x1

    .line 1620
    const/4 v2, 0x2

    goto :goto_0

    .line 1621
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

    .line 1622
    :cond_6
    const/4 v0, 0x2

    .line 1623
    const/4 v2, 0x2

    goto :goto_0

    .line 1567
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_5
    .end packed-switch

    .line 1569
    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 1590
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
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1645
    const-string v0, "VideoCollage"

    const-string v1, "handleRecordingCancelled()"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1647
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraShutterSound()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setShutterSound(I)V

    .line 1648
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->abandonAudioFocus()V

    .line 1650
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFlashMode()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 1651
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFlashAutoCallback(Z)V

    .line 1654
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->stopTimer()V

    .line 1656
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsLayoutUpdateNeeded:Z

    .line 1657
    return-void
.end method

.method private handleRecordingStopped()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1660
    const-string v1, "VideoCollage"

    const-string v2, "handleRecordingStopped()"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1662
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isPlayRecordingStopSound()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1663
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->RECORDING_STOP:Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    invoke-interface {v1, v2, v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->playCameraSound(Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;I)V

    .line 1665
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraShutterSound()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setShutterSound(I)V

    .line 1666
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->abandonAudioFocus()V

    .line 1668
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFlashMode()I

    move-result v1

    if-ne v1, v5, :cond_1

    .line 1669
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v5}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFlashAutoCallback(Z)V

    .line 1672
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/16 v2, 0x12

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1673
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->collapseMenu()V

    .line 1677
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isClipsAdded()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1678
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->getOrientationOnTake()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->calculateOrientationForPicture(I)I

    move-result v0

    .line 1679
    .local v0, "orientation":I
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setOrientation(I)V
    invoke-static {v1, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$1200(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    .line 1680
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSelfFlip()I

    move-result v2

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setFirstFlip(I)V
    invoke-static {v1, v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$1300(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    .line 1681
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraId()I

    move-result v2

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setFirstCameraIdTaken(I)V
    invoke-static {v1, v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$1400(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    .line 1684
    .end local v0    # "orientation":I
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->addClip()V

    .line 1686
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->stopTimer()V

    .line 1688
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isFinish()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1689
    const-string v1, "VideoCollage"

    const-string v2, "Finishing.."

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1691
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideIndicatorLayout()V

    .line 1693
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mVideoCollageHandler:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

    if-eqz v1, :cond_4

    .line 1694
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSecureCamera()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.sec.android.app.clipvideo"

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/util/PermissionUtils;->hasPermissions(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1696
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->RUNTIME_PERMISSIONS_ON_SECURE_LOCK_IN_VIDEO_COLLAGE:Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 1697
    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x1040014

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f090212

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1696
    invoke-interface {v1, v2, v3, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showCameraDialog(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;Ljava/lang/String;Ljava/lang/String;)V

    .line 1705
    :cond_4
    :goto_0
    return-void

    .line 1700
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mVideoCollageHandler:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1703
    :cond_6
    iput-boolean v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsLayoutUpdateNeeded:Z

    goto :goto_0
.end method

.method private handleSwitchCameraCompleted()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1709
    move-object v0, p0

    .line 1710
    .local v0, "pInstance":Lcom/sec/android/app/camera/shootingmode/VideoCollage;
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/shootingmode/VideoCollage$2;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$2;-><init>(Lcom/sec/android/app/camera/shootingmode/VideoCollage;Lcom/sec/android/app/camera/shootingmode/VideoCollage;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1727
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraHDR()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 1728
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->enableHdrAutoCallback(Z)V

    .line 1733
    :goto_0
    return-void

    .line 1730
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->enableHdrAutoCallback(Z)V

    goto :goto_0
.end method

.method private hideCAFButton()V
    .locals 2

    .prologue
    .line 1736
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1737
    return-void
.end method

.method private hideCollageTypeIcon()V
    .locals 2

    .prologue
    .line 1740
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1741
    return-void
.end method

.method private hideCollageTypeIconLine()V
    .locals 2

    .prologue
    .line 1744
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIconLine:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1745
    return-void
.end method

.method private hideCropArea()V
    .locals 2

    .prologue
    .line 1748
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCropAreaGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1749
    return-void
.end method

.method private hideFlashButton()V
    .locals 2

    .prologue
    .line 1752
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mFlashButton:Lcom/sec/android/app/camera/widget/gl/Item;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/Item;->setVisibility(I)V

    .line 1753
    return-void
.end method

.method private hideIndicatorLayout()V
    .locals 2

    .prologue
    .line 1756
    const-string v0, "VideoCollage"

    const-string v1, "hideIndicatorLayout()"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1758
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideRecTimeGroup()V

    .line 1759
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideProgress()V

    .line 1760
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideCollageTypeIcon()V

    .line 1761
    return-void
.end method

.method private hidePauseButton()V
    .locals 2

    .prologue
    .line 1764
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1765
    return-void
.end method

.method private hidePauseIndicatorIcon()V
    .locals 2

    .prologue
    .line 1768
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1769
    return-void
.end method

.method private hideProgress()V
    .locals 2

    .prologue
    .line 1772
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1773
    return-void
.end method

.method private hideRecIndicatorIcon()V
    .locals 2

    .prologue
    .line 1776
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1777
    return-void
.end method

.method private hideRecTimeGroup()V
    .locals 2

    .prologue
    .line 1780
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1781
    return-void
.end method

.method private hideRecordedLayout()V
    .locals 0

    .prologue
    .line 1784
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideRecordingButton()V

    .line 1785
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideUndoButton()V

    .line 1786
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideFlashButton()V

    .line 1787
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideSwitchCameraButton()V

    .line 1788
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hidePauseButton()V

    .line 1789
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideResumeButton()V

    .line 1791
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideProgress()V

    .line 1792
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->clearProgressDivider()V

    .line 1793
    return-void
.end method

.method private hideRecordingButton()V
    .locals 2

    .prologue
    .line 1796
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1797
    return-void
.end method

.method private hideRecordingLayout()V
    .locals 0

    .prologue
    .line 1800
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hidePauseButton()V

    .line 1801
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideResumeButton()V

    .line 1802
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideCAFButton()V

    .line 1803
    return-void
.end method

.method private hideResumeButton()V
    .locals 2

    .prologue
    .line 1806
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1807
    return-void
.end method

.method private hideSwitchCameraButton()V
    .locals 2

    .prologue
    .line 1810
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1811
    return-void
.end method

.method private hideUndoButton()V
    .locals 2

    .prologue
    .line 1814
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mUndoButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1815
    return-void
.end method

.method private hideView()V
    .locals 2

    .prologue
    .line 1818
    const-string v0, "VideoCollage"

    const-string v1, "hideView()"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1820
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideIndicatorLayout()V

    .line 1821
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideRecordingLayout()V

    .line 1822
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideRecordedLayout()V

    .line 1823
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideCropArea()V

    .line 1824
    return-void
.end method

.method private initializeProject(I)V
    .locals 4
    .param p1, "type"    # I

    .prologue
    const/4 v3, 0x0

    .line 1827
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

    .line 1829
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    if-eqz v0, :cond_0

    .line 1830
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->clear()V
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$1800(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)V

    .line 1831
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    .line 1834
    :cond_0
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-direct {v0, v3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;-><init>(Lcom/sec/android/app/camera/shootingmode/VideoCollage$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    .line 1836
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setProjectType(I)V

    .line 1837
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setRecordingTimeByType()V

    .line 1838
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setCollageType(I)V

    .line 1839
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setRatio(I)V

    .line 1840
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setMaxRecordingCount(I)V

    .line 1841
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCurrentOrientation:I

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setViewOrientation(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$400(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    .line 1842
    return-void
.end method

.method private initializeView(Lcom/samsung/android/glview/GLContext;Lcom/samsung/android/glview/GLViewGroup;Lcom/samsung/android/glview/GLViewGroup;)V
    .locals 28
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "viewLayout"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p3, "controllerLayout"    # Lcom/samsung/android/glview/GLViewGroup;

    .prologue
    .line 1845
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCurrentOrientation:I

    .line 1847
    const/16 v18, 0x0

    .line 1848
    .local v18, "baseMenuWeightValue":F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->BASEMENU_GROUP_WIDTH:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->PAGE_NAVIGATOR_GROUP_HEIGHT:F

    sub-float/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SHUTTER_BUTTON_GAP_WITH_NAVIGATOR:F

    sub-float/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SHUTTER_BUTTON_WIDTH:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float v18, v1, v2

    .line 1850
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_WIDTH:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->BASEMENU_GROUP_WIDTH:F

    sub-float/2addr v1, v2

    add-float v1, v1, v18

    float-to-int v0, v1

    move/from16 v20, v0

    .line 1851
    .local v20, "controllerButtonBaseX":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SHUTTER_BUTTON_POS_Y:I

    move/from16 v21, v0

    .line 1852
    .local v21, "controllerButtonBaseY":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SHUTTER_BUTTON_WIDTH:F

    float-to-int v0, v1

    move/from16 v19, v0

    .line 1853
    .local v19, "controllerButtonBaseWidth":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->BASEMENU_GROUP_ICON_GAP:F

    float-to-int v0, v1

    move/from16 v22, v0

    .line 1855
    .local v22, "controllerButtonGap":I
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

    .line 1856
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingSideMenu:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setClipping(Z)V

    .line 1858
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RIGHT_SIDE_MENU_POS_X:I

    sub-int v23, v20, v1

    .line 1859
    .local v23, "recButtonX":I
    move/from16 v24, v21

    .line 1861
    .local v24, "recButtonY":I
    new-instance v1, Lcom/samsung/android/glview/GLButton;

    move/from16 v0, v23

    int-to-float v3, v0

    move/from16 v0, v24

    int-to-float v4, v0

    const v5, 0x7f0200fb

    const v6, 0x7f0200fc

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    .line 1863
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    const/16 v2, 0x41

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setTag(I)V

    .line 1864
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    .line 1865
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 1866
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 1867
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 1868
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->updateLayout(Z)V

    .line 1869
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 1870
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setDraggable(Z)V

    .line 1871
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1872
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    .line 1873
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0901f9

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 1874
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingSideMenu:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1876
    new-instance v1, Lcom/samsung/android/glview/GLButton;

    move/from16 v0, v23

    int-to-float v3, v0

    move/from16 v0, v24

    int-to-float v4, v0

    const v5, 0x7f0200f9

    const v6, 0x7f0200fa

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    .line 1877
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    .line 1878
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 1879
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 1880
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 1881
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 1882
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->updateLayout(Z)V

    .line 1883
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1884
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    .line 1885
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0901e5

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 1886
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingSideMenu:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1888
    new-instance v1, Lcom/samsung/android/glview/GLButton;

    move/from16 v0, v23

    int-to-float v3, v0

    move/from16 v0, v24

    int-to-float v4, v0

    const v5, 0x7f0200fb

    const v6, 0x7f0200fc

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    .line 1890
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    .line 1891
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 1892
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 1893
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 1894
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 1895
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->updateLayout(Z)V

    .line 1896
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1897
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    .line 1898
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f09020b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 1899
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingSideMenu:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1901
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RIGHT_SIDE_MENU_POS_X:I

    sub-int v1, v20, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->UNDO_BUTTON_WIDTH:I

    sub-int v2, v19, v2

    div-int/lit8 v2, v2, 0x2

    add-int v26, v1, v2

    .line 1902
    .local v26, "undoButtonX":I
    sub-int v1, v21, v22

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->UNDO_BUTTON_WIDTH:I

    sub-int v27, v1, v2

    .line 1904
    .local v27, "undoButtonY":I
    new-instance v1, Lcom/samsung/android/glview/GLButton;

    move/from16 v0, v26

    int-to-float v3, v0

    move/from16 v0, v27

    int-to-float v4, v0

    const v5, 0x7f02010f

    const v6, 0x7f02010f

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mUndoButton:Lcom/samsung/android/glview/GLButton;

    .line 1905
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mUndoButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 1906
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mUndoButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 1907
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mUndoButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 1908
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mUndoButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 1909
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mUndoButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->updateLayout(Z)V

    .line 1910
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mUndoButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1911
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mUndoButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->UNDO_BUTTON_DIAMETER:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setRippleDiameter(F)V

    .line 1912
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mUndoButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f090155

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 1913
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingSideMenu:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mUndoButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1915
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_RECORDING_CONTINUOUS_AF:Z

    if-eqz v1, :cond_0

    .line 1916
    new-instance v1, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->CAF_BUTTON_POS_X:I

    int-to-float v3, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->CAF_BUTTON_POS_Y:I

    int-to-float v4, v2

    const v5, 0x7f020021

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    .line 1917
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    .line 1918
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 1919
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 1920
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 1921
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 1922
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->CAF_BUTTON_DIAMETER:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setRippleDiameter(F)V

    .line 1923
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f09003f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 1924
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1927
    :cond_0
    const/4 v1, 0x3

    invoke-static {v1}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v25

    .line 1928
    .local v25, "resFlashID":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    new-instance v7, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v1, 0x6

    new-array v1, v1, [I

    const/4 v2, 0x0

    move-object/from16 v0, v25

    iget v3, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    aput v3, v1, v2

    const/4 v2, 0x1

    move-object/from16 v0, v25

    iget v3, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    aput v3, v1, v2

    const/4 v2, 0x2

    move-object/from16 v0, v25

    iget v3, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    aput v3, v1, v2

    const/4 v2, 0x3

    const/4 v3, 0x3

    aput v3, v1, v2

    const/4 v2, 0x4

    move-object/from16 v0, v25

    iget v3, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    aput v3, v1, v2

    const/4 v2, 0x5

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-direct {v7, v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;-><init>([I)V

    .line 1929
    .local v7, "bundleFlash":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    invoke-virtual {v7}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCommandReceiver()Lcom/sec/android/app/camera/interfaces/CommandInterface;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/interfaces/CommandInterface;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v8

    .line 1930
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

    .line 1931
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mFlashButton:Lcom/sec/android/app/camera/widget/gl/Item;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/Item;->setRotatable(Z)V

    .line 1932
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mFlashButton:Lcom/sec/android/app/camera/widget/gl/Item;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/Item;->setCenterPivot(Z)V

    .line 1933
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mFlashButton:Lcom/sec/android/app/camera/widget/gl/Item;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/Item;->setRotateAnimation(Z)V

    .line 1934
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mFlashButton:Lcom/sec/android/app/camera/widget/gl/Item;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/Item;->setVisibility(I)V

    .line 1936
    new-instance v9, Lcom/samsung/android/glview/GLButton;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const v13, 0x7f0201cd

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v10, p1

    invoke-direct/range {v9 .. v16}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    .line 1937
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 1938
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 1939
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 1940
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 1941
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1942
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f09023c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 1944
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

    .line 1945
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    .line 1946
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1947
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLViewGroup;->setOrientationChangeListener(Lcom/samsung/android/glview/GLView$OrientationChangeListener;)V

    .line 1948
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

    .line 1950
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

    .line 1951
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

    .line 1952
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

    .line 1955
    new-instance v1, Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f0201d9

    move-object/from16 v0, p1

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    .line 1956
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1958
    new-instance v1, Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f0201d8

    move-object/from16 v0, p1

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    .line 1959
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1961
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

    .line 1962
    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v2

    mul-float v16, v1, v2

    move-object/from16 v10, p1

    invoke-direct/range {v9 .. v16}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;F)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    .line 1963
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 1964
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_TEXT_STROKE_WIDTH:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_TEXT_STROKE_COLOR:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 1965
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setShadowVisibility(Z)V

    .line 1967
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1968
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1969
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1972
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

    .line 1973
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    .line 1974
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

    .line 1975
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

    .line 1976
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

    .line 1977
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

    .line 1980
    new-instance v9, Lcom/samsung/android/glview/GLProgressBar;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->PROGRESSBAR_WIDTH:I

    int-to-float v13, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->PROGRESSBAR_HEIGHT:I

    int-to-float v14, v1

    const v15, 0x7f02019b

    const v16, 0x7f02019c

    move-object/from16 v10, p1

    invoke-direct/range {v9 .. v16}, Lcom/samsung/android/glview/GLProgressBar;-><init>(Lcom/samsung/android/glview/GLContext;FFFFII)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBar:Lcom/samsung/android/glview/GLProgressBar;

    .line 1981
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBar:Lcom/samsung/android/glview/GLProgressBar;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLProgressBar;->setMax(I)V

    .line 1983
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBar:Lcom/samsung/android/glview/GLProgressBar;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1984
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1985
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLViewGroup;->setOrientationChangeListener(Lcom/samsung/android/glview/GLView$OrientationChangeListener;)V

    .line 1988
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

    .line 1989
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    .line 1990
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

    .line 1991
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

    .line 1992
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

    .line 1993
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

    .line 1996
    new-instance v1, Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f02006f

    move-object/from16 v0, p1

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIcon:Lcom/samsung/android/glview/GLImage;

    .line 1997
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIcon:Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setRotatable(Z)V

    .line 1998
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIcon:Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setCenterPivot(Z)V

    .line 1999
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIcon:Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f09014a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setTitle(Ljava/lang/String;)V

    .line 2001
    new-instance v1, Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f02006b

    move-object/from16 v0, p1

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIconLine:Lcom/samsung/android/glview/GLImage;

    .line 2002
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIconLine:Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setRotatable(Z)V

    .line 2003
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIconLine:Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setCenterPivot(Z)V

    .line 2004
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIconLine:Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setFocusable(Z)V

    .line 2005
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIconLine:Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f09014a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setTitle(Ljava/lang/String;)V

    .line 2007
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 2008
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIconLine:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 2009
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 2010
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLViewGroup;->setOrientationChangeListener(Lcom/samsung/android/glview/GLView$OrientationChangeListener;)V

    .line 2013
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

    .line 2014
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCropAreaGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    .line 2015
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCropAreaGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 2016
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCropAreaGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 2017
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCropAreaGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 2018
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCropAreaGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 2020
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

    .line 2021
    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v15

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v17, 0x1

    move-object/from16 v10, p1

    invoke-direct/range {v9 .. v17}, Lcom/samsung/android/glview/GLRectangle;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIFI)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mPortraitCropAreaLeft:Lcom/samsung/android/glview/GLRectangle;

    .line 2022
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mPortraitCropAreaLeft:Lcom/samsung/android/glview/GLRectangle;

    const v2, 0x3ee66666    # 0.45f

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLRectangle;->setAlpha(F)V

    .line 2023
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mPortraitCropAreaLeft:Lcom/samsung/android/glview/GLRectangle;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLRectangle;->setBypassTouch(Z)V

    .line 2025
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

    .line 2026
    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v15

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v17, 0x1

    move-object/from16 v10, p1

    invoke-direct/range {v9 .. v17}, Lcom/samsung/android/glview/GLRectangle;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIFI)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mPortraitCropAreaRight:Lcom/samsung/android/glview/GLRectangle;

    .line 2027
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mPortraitCropAreaRight:Lcom/samsung/android/glview/GLRectangle;

    const v2, 0x3ee66666    # 0.45f

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLRectangle;->setAlpha(F)V

    .line 2028
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mPortraitCropAreaRight:Lcom/samsung/android/glview/GLRectangle;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLRectangle;->setBypassTouch(Z)V

    .line 2030
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCropAreaGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mPortraitCropAreaLeft:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 2031
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCropAreaGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mPortraitCropAreaRight:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 2032
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCropAreaGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 2034
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingSideMenu:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 2036
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCropAreaGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 2037
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 2038
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 2039
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 2040
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 2041
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mFlashButton:Lcom/sec/android/app/camera/widget/gl/Item;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 2042
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 2043
    return-void
.end method

.method private isCameraSwitched()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2046
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mFirstCameraId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 2049
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
    .line 2054
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
    .line 2059
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCurrentRecordingCount()I
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$100(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

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

    .line 2064
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getVideoSizeDivider()[I

    move-result-object v0

    .line 2065
    .local v0, "div":[I
    aget v1, v0, v5

    .line 2066
    .local v1, "horizontal_div":I
    aget v3, v0, v4

    .line 2067
    .local v3, "vertical_div":I
    div-int v2, v3, v1

    .line 2069
    .local v2, "ratio":I
    if-eq v2, v4, :cond_0

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

    .line 2073
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    if-eqz v2, :cond_3

    .line 2074
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getProjectType()I
    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v2

    if-ne v2, v0, :cond_2

    .line 2075
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRemainedRecordingTime()I

    move-result v2

    if-gtz v2, :cond_1

    .line 2080
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 2075
    goto :goto_0

    .line 2077
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCurrentRecordingCount()I
    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$100(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getMaxRecordingCount()I
    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v3

    if-ge v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 2080
    goto :goto_0
.end method

.method private isNeedReset()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2085
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isPausing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2087
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isFinish()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2090
    :cond_0
    :goto_0
    return v0

    .line 2087
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNeedRotate()Z
    .locals 6

    .prologue
    const/16 v5, 0x10e

    const/16 v4, 0x5a

    .line 2094
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/Engine;->getOrientationOnTake()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->calculateOrientationForPicture(I)I

    move-result v1

    .line 2095
    .local v1, "orientation":I
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSelfFlip()I

    move-result v0

    .line 2096
    .local v0, "flip":I
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getFirstCameraIdTaken()I
    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2100(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraId()I

    move-result v3

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getOrientation()I
    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2200(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v2

    if-eq v2, v1, :cond_4

    .line 2097
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getOrientation()I
    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2200(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v2

    if-eq v2, v4, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getOrientation()I
    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2200(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v2

    if-ne v2, v5, :cond_4

    .line 2098
    :cond_0
    if-eq v1, v4, :cond_1

    if-ne v1, v5, :cond_4

    .line 2099
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
    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2300(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 2100
    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraId()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/Engine;->getFrontCameraId()I

    move-result v3

    if-ne v2, v3, :cond_4

    if-nez v0, :cond_4

    .line 2102
    :cond_3
    const/4 v2, 0x1

    .line 2107
    :goto_0
    return v2

    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isNeedSaveProjcet()Z
    .locals 1

    .prologue
    .line 2111
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isFinish()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2112
    const/4 v0, 0x0

    .line 2114
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isClipsAdded()Z

    move-result v0

    goto :goto_0
.end method

.method private isSavedProjectExist()Z
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 2118
    const/4 v2, 0x0

    .line 2119
    .local v2, "matched":Z
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "pref_video_collage_is_project_saved_key"

    invoke-static {v4, v5, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    .line 2121
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

    .line 2122
    .local v0, "file":Ljava/lang/String;
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getProjectSaveFileName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_0

    .line 2123
    const/4 v2, 0x1

    .line 2121
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2127
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

    .line 2131
    const/4 v2, 0x0

    .line 2132
    .local v2, "matched":Z
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "pref_video_collage_is_project_secure_saved_key"

    invoke-static {v4, v5, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    .line 2134
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

    .line 2135
    .local v0, "file":Ljava/lang/String;
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getProjectSecureSaveFileName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_0

    .line 2136
    const/4 v2, 0x1

    .line 2134
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2140
    .end local v0    # "file":Ljava/lang/String;
    :cond_1
    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    const/4 v3, 0x1

    :cond_2
    return v3
.end method

.method private launchEditor()V
    .locals 14

    .prologue
    .line 2144
    const-string v10, "VideoCollage"

    const-string v11, "launchEditor()"

    invoke-static {v10, v11}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2146
    iget-object v10, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v10}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "com.sec.android.app.clipvideo"

    invoke-static {v10, v11}, Lcom/sec/android/app/camera/util/Util;->isPkgEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 2147
    const/4 v0, 0x0

    .local v0, "duration":I
    const/4 v9, 0x0

    .local v9, "type":I
    const/4 v5, 0x0

    .local v5, "ratio":I
    const/4 v8, 0x0

    .line 2148
    .local v8, "start_orientation":I
    const/4 v2, 0x0

    .line 2149
    .local v2, "fileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 2150
    .local v7, "rotationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    const/4 v6, 0x0

    .line 2152
    .local v6, "resultPath":Ljava/lang/String;
    iget-object v10, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getOrientation()I
    invoke-static {v10}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2200(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v8

    .line 2153
    iget-object v10, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getRecordingTime()I
    invoke-static {v10}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$900(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v10

    div-int/lit16 v0, v10, 0x3e8

    .line 2154
    iget-object v10, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getProjectType()I
    invoke-static {v10}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v9

    .line 2155
    iget-object v10, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getRatio()I
    invoke-static {v10}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2400(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v5

    .line 2156
    iget-object v10, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCLipListAsStringArray()Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2500(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)Ljava/util/ArrayList;

    move-result-object v2

    .line 2157
    iget-object v10, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCLipListAsRotationInfo()Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2600(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)Ljava/util/ArrayList;

    move-result-object v7

    .line 2158
    iget-object v10, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v10}, Lcom/sec/android/app/camera/interfaces/Engine;->createVideoDirectory()Ljava/lang/String;

    move-result-object v6

    .line 2160
    iget-object v10, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getProjectType()I
    invoke-static {v10}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_0

    .line 2161
    iget-object v10, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getMaxRecordingCount()I
    invoke-static {v10}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v10

    mul-int/2addr v0, v10

    .line 2164
    :cond_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 2165
    .local v3, "intent":Landroid/content/Intent;
    const-string v10, "com.sec.android.app.clipvideo"

    const-string v11, "com.sec.android.app.clipvideo.activity.ClipVideoEditorActivity"

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2167
    const-string v10, "android.intent.action.EDIT"

    invoke-virtual {v3, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2169
    const-string v10, "orientation"

    invoke-virtual {v3, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2170
    const-string v10, "type"

    invoke-virtual {v3, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2171
    const-string v10, "collageType"

    iget-object v11, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getProjectType()I
    invoke-static {v11}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v11

    iget-object v12, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCollageType()I
    invoke-static {v12}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$1000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v12

    invoke-direct {p0, v11, v12}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getCollageTypeForEditor(II)I

    move-result v11

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2172
    const-string v10, "duration"

    invoke-virtual {v3, v10, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2173
    const-string v10, "aspectRatio"

    invoke-virtual {v3, v10, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2174
    const-string v10, "fileList"

    invoke-virtual {v3, v10, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 2175
    const-string v10, "rotationList"

    invoke-virtual {v3, v10, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2176
    const-string v10, "resultPath"

    invoke-virtual {v3, v10, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2178
    iget-object v10, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-static {v10}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->getInstance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/provider/CameraLocationManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v4

    .line 2179
    .local v4, "location":Landroid/location/Location;
    if-eqz v4, :cond_1

    .line 2180
    const-string v10, "latitude"

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v12

    invoke-virtual {v3, v10, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 2181
    const-string v10, "longitude"

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v12

    invoke-virtual {v3, v10, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 2183
    :cond_1
    const-string v10, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v3, v10, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2186
    :try_start_0
    iget-object v10, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v10}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const/16 v11, 0x7e9

    invoke-virtual {v10, v3, v11}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2187
    iget-object v10, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v10}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const v11, 0x7f050002

    const v12, 0x7f050003

    invoke-virtual {v10, v11, v12}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2194
    .end local v0    # "duration":I
    .end local v2    # "fileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "location":Landroid/location/Location;
    .end local v5    # "ratio":I
    .end local v6    # "resultPath":Ljava/lang/String;
    .end local v7    # "rotationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .end local v8    # "start_orientation":I
    .end local v9    # "type":I
    :cond_2
    :goto_0
    return-void

    .line 2188
    .restart local v0    # "duration":I
    .restart local v2    # "fileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v4    # "location":Landroid/location/Location;
    .restart local v5    # "ratio":I
    .restart local v6    # "resultPath":Ljava/lang/String;
    .restart local v7    # "rotationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .restart local v8    # "start_orientation":I
    .restart local v9    # "type":I
    :catch_0
    move-exception v1

    .line 2189
    .local v1, "ex":Landroid/content/ActivityNotFoundException;
    const-string v10, "VideoCollage"

    const-string v11, "Activity is not found"

    invoke-static {v10, v11}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
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

    .line 2197
    const/4 v7, 0x0

    .line 2199
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

    .line 2200
    :try_start_1
    new-instance v6, Ljava/io/ObjectInputStream;

    invoke-direct {v6, v5}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2199
    .local v6, "is":Ljava/io/ObjectInputStream;
    const/4 v11, 0x0

    .line 2201
    if-eqz v5, :cond_0

    .line 2202
    :try_start_2
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    move-object v7, v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 2204
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

    .line 2209
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

    .line 2210
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

    .line 2214
    :cond_3
    if-eqz v7, :cond_5

    .line 2215
    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCLipListAsStringArray()Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2500(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)Ljava/util/ArrayList;

    move-result-object v3

    .line 2216
    .local v3, "fileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v3, :cond_5

    .line 2217
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2218
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

    .line 2219
    if-nez v4, :cond_c

    move-object v7, v9

    .line 2231
    .end local v3    # "fileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "filePath":Ljava/lang/String;
    .end local v7    # "project":Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;
    :cond_5
    :goto_2
    return-object v7

    .line 2204
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

    .line 2199
    .end local v6    # "is":Ljava/io/ObjectInputStream;
    :catch_1
    move-exception v8

    :try_start_6
    throw v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2204
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

    .line 2205
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

    .line 2204
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

    .line 2199
    .restart local v6    # "is":Ljava/io/ObjectInputStream;
    :catch_3
    move-exception v8

    :try_start_a
    throw v8
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 2204
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

    .line 2222
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v4    # "filePath":Ljava/lang/String;
    :cond_c
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2224
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_4

    move-object v7, v9

    .line 2225
    goto :goto_2

    .line 2204
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
    .line 2235
    const-string v1, "VideoCollage"

    const-string v2, "setStateToSavedProject()"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2238
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    if-nez v1, :cond_0

    .line 2239
    new-instance v1, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;-><init>(Lcom/sec/android/app/camera/shootingmode/VideoCollage$1;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    .line 2242
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->loadProjectFile(Ljava/lang/String;)Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    .line 2245
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    if-eqz v1, :cond_1

    .line 2247
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getProjectType()I
    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCollageType()I
    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$1000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getRatio()I
    invoke-static {v4}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2400(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getCollageTypeSettingFromProject(III)I

    move-result v2

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setVideoCollageType(IZ)V

    .line 2248
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getRecordingTime()I
    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$900(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRecordingTimeSettingFromProject(I)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setVideoCollageRecordingTime(I)V

    .line 2249
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showRecordedLayout()V

    .line 2258
    :goto_0
    return-void

    .line 2251
    :cond_1
    new-instance v1, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;-><init>(Lcom/sec/android/app/camera/shootingmode/VideoCollage$1;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    .line 2252
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showPreviewLayout()V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2255
    :catch_0
    move-exception v0

    .line 2256
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

    .line 2255
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private onBackKeyPressed()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 2262
    const-string v1, "VideoCollage"

    const-string v2, "onBackKeyPressed()"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2263
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingTimeInMs:I

    const/16 v2, 0x3e8

    if-lt v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STOPPING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STARTING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v1, v2, :cond_1

    .line 2264
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isFinish()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2265
    :cond_1
    const-string v1, "VideoCollage"

    const-string v2, "onBackKeyPressed - cannot cacncel recording or back(out camera)"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 2279
    :goto_0
    return v0

    .line 2268
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STOPPING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v1, v2, :cond_3

    .line 2269
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->cancelRecording()V

    goto :goto_0

    .line 2271
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isClipsAdded()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2272
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSecureCamera()Z

    move-result v1

    if-nez v1, :cond_4

    .line 2273
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->VIDEO_COLLAGE_DISCARD_OR_SAVE_RECORDING:Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showCameraDialog(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;)V

    goto :goto_0

    .line 2275
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->VIDEO_COLLAGE_CANCEL_OR_DISCARD_RECORDING:Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showCameraDialog(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;)V

    goto :goto_0

    .line 2279
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onCAFButtonPressed()Z
    .locals 2

    .prologue
    .line 2283
    const-string v0, "VideoCollage"

    const-string v1, "onCAFButtonPressed()"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2285
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isAutoFocusing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2286
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->resetTouchAF()V

    .line 2287
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideCAFButton()V

    .line 2288
    const/4 v0, 0x1

    .line 2290
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

    .line 2294
    const-string v0, "VideoCollage"

    const-string v1, "onPauseButtonPressed()"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2296
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v0, v1, :cond_0

    .line 2297
    const-string v0, "VideoCollage"

    const-string v1, "onPauseButtonPressed - not recording state"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 2312
    :goto_0
    return v2

    .line 2302
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingTimeInMs:I

    if-lt v0, v3, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRemainedRecordingTime()I

    move-result v0

    if-gt v0, v3, :cond_2

    .line 2303
    :cond_1
    const-string v0, "VideoCollage"

    const-string v1, "onPauseButtonPressed - cannot pause recording"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2307
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getProjectType()I
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 2308
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->stopRecording()V

    goto :goto_0

    .line 2310
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->pauseRecording()V

    goto :goto_0
.end method

.method private onResumeButtonPressed()Z
    .locals 2

    .prologue
    .line 2316
    const-string v0, "VideoCollage"

    const-string v1, "onResumeButtonPressed()"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2317
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->resumeRecording()V

    .line 2318
    const/4 v0, 0x0

    return v0
.end method

.method private onSwitchCameraButtonPressed()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2322
    const-string v0, "VideoCollage"

    const-string v1, "onSwitchCameraButtonPressed()"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2323
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/Engine$CeState;->PREVIEWING:Lcom/sec/android/app/camera/interfaces/Engine$CeState;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isCurrentState(Lcom/sec/android/app/camera/interfaces/Engine$CeState;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2324
    const-string v0, "VideoCollage"

    const-string v1, "onSwitchCameraButtonPressed() return not Engine previewing state"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2340
    :goto_0
    return v2

    .line 2328
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsCameraSwitching:Z

    if-eqz v0, :cond_1

    .line 2329
    const-string v0, "VideoCollage"

    const-string v1, "onSwitchCameraButtonPressed() return because of switching"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2333
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isEmptyRequestQueue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2334
    const-string v0, "VideoCollage"

    const-string v1, "onSwitchCameraButtonPressed() return because RequestQueue is not empty"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2338
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->switchCameraAsync()V

    goto :goto_0
.end method

.method private onUndoButtonPressed()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2344
    const-string v0, "VideoCollage"

    const-string v1, "onUndoButtonPressed()"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2346
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsCameraSwitching:Z

    if-eqz v0, :cond_0

    .line 2347
    const-string v0, "VideoCollage"

    const-string v1, "return mIsCameraSwitching"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2359
    :goto_0
    return v2

    .line 2351
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->doUndo()V

    .line 2354
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isClipsAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2355
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showRecordedLayout()V

    goto :goto_0

    .line 2357
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showPreviewLayout()V

    goto :goto_0
.end method

.method private pauseRecording()V
    .locals 2

    .prologue
    .line 2363
    const-string v0, "VideoCollage"

    const-string v1, "pauseRecording()"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2364
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_PAUSING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->setRecordingState(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;)V

    .line 2365
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->schedulePauseVideoRecording()V

    .line 2366
    return-void
.end method

.method private prepareSwitchCamera()V
    .locals 2

    .prologue
    .line 2369
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSingleEffect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2370
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showEffectLayout(Z)V

    .line 2372
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/16 v1, 0x7f

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->removeMenu(I)V

    .line 2373
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-static {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->instance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->clear()V

    .line 2374
    return-void
.end method

.method private removeLastProgressDivider()V
    .locals 3

    .prologue
    .line 2377
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBarDividerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2378
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBarDividerList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBarDividerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLImage;

    .line 2379
    .local v0, "divider":Lcom/samsung/android/glview/GLImage;
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 2380
    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->clear()V

    .line 2382
    .end local v0    # "divider":Lcom/samsung/android/glview/GLImage;
    :cond_0
    return-void
.end method

.method private requestFocus(I)V
    .locals 1
    .param p1, "focusButton"    # I

    .prologue
    .line 2385
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

    .line 2386
    packed-switch p1, :pswitch_data_0

    .line 2404
    :cond_0
    :goto_0
    return-void

    .line 2388
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->isDim()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2389
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->requestFocus()Z

    goto :goto_0

    .line 2393
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->isDim()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2394
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->requestFocus()Z

    goto :goto_0

    .line 2398
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->isDim()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2399
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->requestFocus()Z

    goto :goto_0

    .line 2386
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
    .line 2407
    const-string v0, "VideoCollage"

    const-string v1, "reset()"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2409
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    if-eqz v0, :cond_0

    .line 2410
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->clear()V
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$1800(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)V

    .line 2411
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    .line 2413
    :cond_0
    return-void
.end method

.method private resumeRecording()V
    .locals 2

    .prologue
    .line 2416
    const-string v0, "VideoCollage"

    const-string v1, "resumeRecording"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2417
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_PAUSING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v0, v1, :cond_0

    .line 2418
    const-string v0, "VideoCollage"

    const-string v1, "Return resumeRecording - wrong recording state"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 2423
    :goto_0
    return-void

    .line 2421
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestAudioFocus()V

    .line 2422
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

    .line 2426
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCurrentOrientation:I

    packed-switch v0, :pswitch_data_0

    .line 2441
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setOrientation(I)V

    .line 2442
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIconLine:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setOrientation(I)V

    .line 2445
    :goto_0
    return-void

    .line 2428
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLImage;->setOrientation(I)V

    .line 2429
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIconLine:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLImage;->setOrientation(I)V

    goto :goto_0

    .line 2432
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setOrientation(I)V

    .line 2433
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIconLine:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setOrientation(I)V

    goto :goto_0

    .line 2436
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setOrientation(I)V

    .line 2437
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIconLine:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setOrientation(I)V

    goto :goto_0

    .line 2426
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

    .line 2451
    const-string v4, "VideoCollage"

    const-string v5, "saveProject()"

    invoke-static {v4, v5}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2452
    const/4 v1, 0x0

    .line 2454
    .local v1, "fileName":Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSecureCamera()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2455
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getProjectSecureSaveFileName()Ljava/lang/String;

    move-result-object v1

    .line 2460
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

    .line 2461
    :try_start_1
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 2460
    .local v3, "os":Ljava/io/ObjectOutputStream;
    const/4 v5, 0x0

    .line 2463
    :try_start_2
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-virtual {v3, v7}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 2464
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSecureCamera()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2465
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "pref_video_collage_is_project_secure_saved_key"

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 2470
    :goto_1
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V

    .line 2471
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 2473
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

    .line 2476
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "os":Ljava/io/ObjectOutputStream;
    :cond_1
    :goto_3
    return-void

    .line 2457
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getProjectSaveFileName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2467
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

    .line 2460
    :catch_0
    move-exception v4

    :try_start_6
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2473
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

    .line 2460
    .end local v3    # "os":Ljava/io/ObjectOutputStream;
    :catch_1
    move-exception v4

    :try_start_9
    throw v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 2473
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

    .line 2474
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

    .line 2473
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

    .line 2479
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mVideoCollageHandler:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

    if-eqz v0, :cond_0

    .line 2480
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mVideoCollageHandler:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;->removeMessages(I)V

    .line 2481
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mVideoCollageHandler:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 2483
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

    .line 2486
    packed-switch p1, :pswitch_data_0

    .line 2521
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    const/4 v1, 0x0

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setCollageType(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2700(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    .line 2524
    :goto_0
    return-void

    .line 2488
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setCollageType(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2700(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    goto :goto_0

    .line 2491
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setCollageType(I)V
    invoke-static {v0, v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2700(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    goto :goto_0

    .line 2494
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setCollageType(I)V
    invoke-static {v0, v3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2700(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    goto :goto_0

    .line 2497
    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    const/4 v1, 0x1

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setCollageType(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2700(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    goto :goto_0

    .line 2500
    :pswitch_5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    const/4 v1, 0x2

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setCollageType(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2700(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    goto :goto_0

    .line 2503
    :pswitch_6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    const/4 v1, 0x3

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setCollageType(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2700(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    goto :goto_0

    .line 2506
    :pswitch_7
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    const/4 v1, 0x7

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setCollageType(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2700(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    goto :goto_0

    .line 2509
    :pswitch_8
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setCollageType(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2700(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    goto :goto_0

    .line 2512
    :pswitch_9
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setCollageType(I)V
    invoke-static {v0, v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2700(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    goto :goto_0

    .line 2515
    :pswitch_a
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setCollageType(I)V
    invoke-static {v0, v3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2700(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    goto :goto_0

    .line 2518
    :pswitch_b
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    const/16 v1, 0x8

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setCollageType(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2700(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    goto :goto_0

    .line 2486
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

    .line 2528
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isClipsAdded()Z

    move-result v3

    if-nez v3, :cond_3

    .line 2529
    const/4 v0, 0x0

    .line 2531
    .local v0, "iconOrder":I
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getViewOrientation()I
    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$1100(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getViewOrientation()I
    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$1100(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v3

    if-ne v3, v5, :cond_1

    .line 2532
    :cond_0
    const/4 v0, 0x1

    .line 2537
    :goto_0
    const/4 v2, 0x0

    .local v2, "recordingCount":I
    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getMaxRecordingCount()I
    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v3

    if-gt v2, v3, :cond_2

    .line 2538
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-direct {p0, v2, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getResourceIconOrder(II)I

    move-result v4

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->updateResourceIcon(II)V
    invoke-static {v3, v2, v4}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2800(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;II)V

    .line 2537
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2534
    .end local v2    # "recordingCount":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2541
    .restart local v2    # "recordingCount":I
    :cond_2
    const/4 v1, 0x0

    .local v1, "recCount":I
    :goto_2
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getMaxRecordingCount()I
    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 2542
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getResourceIconLineOrder(II)I

    move-result v4

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->updateResourceIconLine(II)V
    invoke-static {v3, v1, v4}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2900(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;II)V

    .line 2541
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2547
    .end local v0    # "iconOrder":I
    .end local v1    # "recCount":I
    .end local v2    # "recordingCount":I
    :cond_3
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCurrentOrientation:I

    packed-switch v3, :pswitch_data_0

    .line 2556
    :pswitch_0
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v3, v5}, Lcom/samsung/android/glview/GLImage;->setDefaultOrientation(I)V

    .line 2557
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIconLine:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v3, v5}, Lcom/samsung/android/glview/GLImage;->setDefaultOrientation(I)V

    .line 2562
    :goto_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->rotateCollageTypeIcon()V

    .line 2563
    return-void

    .line 2550
    :pswitch_1
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLImage;->setDefaultOrientation(I)V

    .line 2551
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIconLine:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLImage;->setDefaultOrientation(I)V

    goto :goto_3

    .line 2547
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
    .line 2566
    const-string v0, ""

    .line 2568
    .local v0, "title":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 2596
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLImage;->setTitle(Ljava/lang/String;)V

    .line 2597
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIconLine:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLImage;->setTitle(Ljava/lang/String;)V

    .line 2598
    return-void

    .line 2570
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090143

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2571
    goto :goto_0

    .line 2573
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090145

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2574
    goto :goto_0

    .line 2576
    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090146

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2577
    goto :goto_0

    .line 2579
    :pswitch_3
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090144

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2580
    goto :goto_0

    .line 2582
    :pswitch_4
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090147

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2583
    goto :goto_0

    .line 2585
    :pswitch_5
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090149

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2586
    goto :goto_0

    .line 2588
    :pswitch_6
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f09014a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2589
    goto :goto_0

    .line 2591
    :pswitch_7
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090148

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2592
    goto :goto_0

    .line 2568
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

    .line 2601
    const-string v9, "VideoCollage"

    const-string v10, "setCropArea()"

    invoke-static {v9, v10}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2604
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getVideoSizeDivider()[I

    move-result-object v1

    .line 2605
    .local v1, "div":[I
    const/4 v9, 0x0

    aget v3, v1, v9

    .line 2606
    .local v3, "horizontal_div":I
    aget v7, v1, v11

    .line 2607
    .local v7, "vertical_div":I
    div-int v6, v7, v3

    .line 2609
    .local v6, "ratio":I
    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v5

    .line 2610
    .local v5, "previewRect":Landroid/graphics/Rect;
    const/4 v4, 0x0

    .line 2611
    .local v4, "origin_x":F
    const/4 v8, 0x0

    .line 2612
    .local v8, "width":F
    const/4 v2, 0x0

    .line 2614
    .local v2, "height":F
    if-eqz v5, :cond_1

    .line 2615
    iget v9, v5, Landroid/graphics/Rect;->left:I

    int-to-float v4, v9

    .line 2616
    cmpg-float v9, v4, v13

    if-gez v9, :cond_0

    .line 2617
    const/4 v4, 0x0

    .line 2619
    :cond_0
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v8, v9

    .line 2620
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v2, v9

    .line 2621
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v9

    int-to-float v9, v9

    cmpl-float v9, v8, v9

    if-lez v9, :cond_1

    .line 2622
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v9

    int-to-float v2, v9

    .line 2626
    :cond_1
    int-to-float v9, v6

    div-float v9, v2, v9

    sub-float v0, v2, v9

    .line 2628
    .local v0, "crop_height":F
    if-eq v6, v11, :cond_2

    .line 2629
    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mPortraitCropAreaLeft:Lcom/samsung/android/glview/GLRectangle;

    div-float v10, v0, v12

    sub-float v10, v2, v10

    div-float v11, v0, v12

    invoke-virtual {v9, v4, v10, v8, v11}, Lcom/samsung/android/glview/GLRectangle;->setRect(FFFF)V

    .line 2630
    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mPortraitCropAreaRight:Lcom/samsung/android/glview/GLRectangle;

    div-float v10, v0, v12

    invoke-virtual {v9, v4, v13, v8, v10}, Lcom/samsung/android/glview/GLRectangle;->setRect(FFFF)V

    .line 2632
    :cond_2
    return-void
.end method

.method private setMaxRecordingCount(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    const/4 v1, 0x1

    .line 2635
    packed-switch p1, :pswitch_data_0

    .line 2660
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setMaxRecordingCount(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$3000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    .line 2663
    :goto_0
    return-void

    .line 2639
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setMaxRecordingCount(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$3000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    goto :goto_0

    .line 2644
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    const/4 v1, 0x2

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setMaxRecordingCount(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$3000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    goto :goto_0

    .line 2651
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    const/4 v1, 0x3

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setMaxRecordingCount(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$3000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    goto :goto_0

    .line 2656
    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    const/4 v1, 0x4

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setMaxRecordingCount(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$3000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    goto :goto_0

    .line 2635
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
    .line 1444
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBar:Lcom/samsung/android/glview/GLProgressBar;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLProgressBar;->setProgress(I)V

    .line 1445
    return-void
.end method

.method private setProjectType(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 2666
    packed-switch p1, :pswitch_data_0

    .line 2692
    :goto_0
    return-void

    .line 2670
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    const/4 v1, 0x0

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setProjectType(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$3100(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    goto :goto_0

    .line 2675
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    const/4 v1, 0x1

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setProjectType(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$3100(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    goto :goto_0

    .line 2686
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    const/4 v1, 0x2

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setProjectType(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$3100(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    goto :goto_0

    .line 2666
    nop

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

    .line 2695
    packed-switch p1, :pswitch_data_0

    .line 2724
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setRatio(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$3200(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    .line 2727
    :goto_0
    return-void

    .line 2699
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setRatio(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$3200(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    goto :goto_0

    .line 2703
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setRatio(I)V
    invoke-static {v0, v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$3200(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    goto :goto_0

    .line 2706
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setRatio(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$3200(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    goto :goto_0

    .line 2713
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setRatio(I)V
    invoke-static {v0, v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$3200(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    goto :goto_0

    .line 2720
    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setRatio(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$3200(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    goto :goto_0

    .line 2695
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
    .line 2730
    packed-switch p1, :pswitch_data_0

    .line 2741
    :goto_0
    return-void

    .line 2733
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    const v1, 0x7f0201d9

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    goto :goto_0

    .line 2736
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    const v1, 0x7f0201dc

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    goto :goto_0

    .line 2730
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

    .line 2744
    packed-switch p1, :pswitch_data_0

    .line 2759
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setRecordingTime(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$3300(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    .line 2762
    :goto_0
    return-void

    .line 2746
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    const/16 v1, 0xbb8

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setRecordingTime(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$3300(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    goto :goto_0

    .line 2749
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setRecordingTime(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$3300(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    goto :goto_0

    .line 2752
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    const/16 v1, 0x2328

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setRecordingTime(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$3300(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    goto :goto_0

    .line 2755
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    const/16 v1, 0x3a98

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setRecordingTime(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$3300(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    goto :goto_0

    .line 2744
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

    .line 2765
    const/4 v2, 0x0

    .line 2766
    .local v2, "recordingTime":I
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getProjectType()I
    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v1

    .line 2767
    .local v1, "projectType":I
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoCollageRecordingTime()I

    move-result v0

    .line 2769
    .local v0, "currTime":I
    if-nez v1, :cond_1

    .line 2770
    if-nez v0, :cond_0

    .line 2771
    const/4 v2, 0x1

    .line 2772
    iput-boolean v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsNeedBackupRecordingTime:Z

    .line 2773
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mMaxRecordingTimeBackup:I

    .line 2791
    :goto_0
    if-eq v0, v2, :cond_4

    .line 2792
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setVideoCollageRecordingTime(I)V

    .line 2796
    :goto_1
    return-void

    .line 2775
    :cond_0
    move v2, v0

    goto :goto_0

    .line 2778
    :cond_1
    iget-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsNeedBackupRecordingTime:Z

    if-eqz v3, :cond_3

    .line 2779
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mMaxRecordingTimeChangeCnt:I

    if-le v3, v5, :cond_2

    .line 2780
    move v2, v0

    .line 2784
    :goto_2
    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsNeedBackupRecordingTime:Z

    .line 2788
    :goto_3
    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mMaxRecordingTimeChangeCnt:I

    goto :goto_0

    .line 2782
    :cond_2
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mMaxRecordingTimeBackup:I

    goto :goto_2

    .line 2786
    :cond_3
    move v2, v0

    goto :goto_3

    .line 2794
    :cond_4
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setRecordingTime(I)V

    goto :goto_1
.end method

.method private showCAFButton()V
    .locals 2

    .prologue
    .line 2799
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 2800
    return-void
.end method

.method private showCollageTypeIcon()V
    .locals 2

    .prologue
    .line 2803
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 2804
    return-void
.end method

.method private showCollageTypeIconLine()V
    .locals 2

    .prologue
    .line 2807
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIconLine:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2808
    return-void
.end method

.method private showCropArea()V
    .locals 2

    .prologue
    .line 2811
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCropAreaGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 2812
    return-void
.end method

.method private showFlashButton()V
    .locals 2

    .prologue
    .line 2815
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mFlashButton:Lcom/sec/android/app/camera/widget/gl/Item;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/Item;->setVisibility(I)V

    .line 2816
    return-void
.end method

.method private showIndicatorLayout()V
    .locals 2

    .prologue
    .line 2819
    const-string v0, "VideoCollage"

    const-string v1, "showIndicatorLayout()"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2821
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STOPPING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v0, v1, :cond_2

    .line 2822
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getProjectType()I
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setRecIndicatorIcon(I)V

    .line 2823
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showRecTimeGroup()V

    .line 2825
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isClipsAdded()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v0, v1, :cond_1

    .line 2826
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showProgress()V

    .line 2828
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getProjectType()I
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 2829
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showCollageTypeIcon()V

    .line 2834
    :cond_2
    :goto_0
    return-void

    .line 2831
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideCollageTypeIcon()V

    goto :goto_0
.end method

.method private showLastProgressDivider()V
    .locals 2

    .prologue
    .line 2837
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mLastDivider:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2838
    return-void
.end method

.method private showLowDeviceStorageToast()V
    .locals 3

    .prologue
    .line 2842
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

    .line 2843
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mLowDeviceStorageToast:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    .line 2844
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mLowDeviceStorageToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 2845
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mLowDeviceStorageToast:Landroid/widget/Toast;

    .line 2847
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v1, 0x7f0901dc

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mLowDeviceStorageToast:Landroid/widget/Toast;

    .line 2848
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mLowDeviceStorageToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2850
    :cond_2
    return-void
.end method

.method private showPauseButton()V
    .locals 2

    .prologue
    .line 2853
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 2854
    return-void
.end method

.method private showPauseIndicatorIcon()V
    .locals 2

    .prologue
    .line 2857
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2858
    return-void
.end method

.method private showPauseLayout()V
    .locals 2

    .prologue
    .line 2861
    const-string v0, "VideoCollage"

    const-string v1, "showPauseLayout()"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2863
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hidePauseButton()V

    .line 2864
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showResumeButton()V

    .line 2865
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideRecIndicatorIcon()V

    .line 2866
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showPauseIndicatorIcon()V

    .line 2867
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->requestFocus(I)V

    .line 2868
    return-void
.end method

.method private showPreviewLayout()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2871
    const-string v0, "VideoCollage"

    const-string v1, "showPreviewLayout()"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2873
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isFinish()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2915
    :cond_0
    :goto_0
    return-void

    .line 2877
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideRecordingLayout()V

    .line 2878
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideRecordedLayout()V

    .line 2879
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->resetPageNavigatorItem()V

    .line 2880
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getProjectType()I
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v0

    if-nez v0, :cond_2

    .line 2881
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x1d4e

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hidePage(I)V

    .line 2883
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->disableView(I)V

    .line 2884
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x27c

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    .line 2885
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 2887
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraSingleEffect()I

    move-result v0

    if-eqz v0, :cond_3

    .line 2888
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showEffectLayout(Z)V

    .line 2893
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    if-eqz v0, :cond_0

    .line 2894
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCurrentOrientation:I

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setViewOrientation(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$400(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    .line 2896
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->updateCropArea()V

    .line 2897
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setProgress(I)V

    .line 2898
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRecordingTimeText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->updateRecordingTimeText(Ljava/lang/String;)V

    .line 2899
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hidePauseIndicatorIcon()V

    .line 2901
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getProjectType()I
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 2902
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setCollageTypeIconResources()V

    .line 2903
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCollageType()I
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$1000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setCollageTypeIconTitle(I)V

    .line 2904
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCurrentRecordingCount()I
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$100(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->updateCollageTypeIcon(I)V

    .line 2905
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showCollageTypeIconLine()V

    .line 2909
    :goto_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->updateIndicatorLayout()V

    .line 2910
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showIndicatorLayout()V

    .line 2911
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showRecordingButton()V

    .line 2913
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->requestFocus(I)V

    goto/16 :goto_0

    .line 2890
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showEffectLayout(Z)V

    goto :goto_1

    .line 2907
    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideCollageTypeIcon()V

    goto :goto_2
.end method

.method private showProgress()V
    .locals 2

    .prologue
    .line 2918
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 2919
    return-void
.end method

.method private showRecTimeGroup()V
    .locals 2

    .prologue
    .line 2922
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 2923
    return-void
.end method

.method private showRecordedLayout()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2926
    const-string v0, "VideoCollage"

    const-string v1, "showRecordedLayout()"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2928
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isFinish()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2983
    :cond_0
    :goto_0
    return-void

    .line 2932
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    .line 2933
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x1d4c

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hidePage(I)V

    .line 2934
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x3f

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->disableView(I)V

    .line 2936
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x200

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    .line 2937
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x3c0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 2939
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideRecordingLayout()V

    .line 2941
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraSingleEffect()I

    move-result v0

    if-eqz v0, :cond_2

    .line 2942
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showEffectLayout(Z)V

    .line 2947
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    if-eqz v0, :cond_0

    .line 2948
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->updateCropArea()V

    .line 2949
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRecordingTimeText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->updateRecordingTimeText(Ljava/lang/String;)V

    .line 2950
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->updateRecIndicatorIcon()V

    .line 2952
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getProjectType()I
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2976
    :goto_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showIndicatorLayout()V

    .line 2977
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showUndoButton()V

    .line 2978
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showSwitchCameraButton()V

    .line 2979
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showRecordingButton()V

    .line 2981
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->requestFocus(I)V

    goto :goto_0

    .line 2944
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showEffectLayout(Z)V

    goto :goto_1

    .line 2954
    :pswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getCurrentProgress()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setProgress(I)V

    .line 2955
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->updateDivider()V

    .line 2956
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2957
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showFlashButton()V

    .line 2961
    :goto_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideRecIndicatorIcon()V

    .line 2962
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showPauseIndicatorIcon()V

    goto :goto_2

    .line 2959
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideFlashButton()V

    goto :goto_3

    .line 2965
    :pswitch_1
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setProgress(I)V

    .line 2966
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCurrentRecordingCount()I
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$100(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->updateCollageTypeIcon(I)V

    .line 2967
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2968
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showFlashButton()V

    .line 2972
    :goto_4
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showCollageTypeIconLine()V

    .line 2973
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hidePauseIndicatorIcon()V

    goto :goto_2

    .line 2970
    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideFlashButton()V

    goto :goto_4

    .line 2952
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showRecordingButton()V
    .locals 2

    .prologue
    .line 2986
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 2987
    return-void
.end method

.method private showRecordingLayout()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2990
    const-string v0, "VideoCollage"

    const-string v1, "showRecordingLayout()"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2992
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isFinish()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3034
    :cond_0
    :goto_0
    return-void

    .line 2996
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, -0x181

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    .line 2997
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x240

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->disableView(I)V

    .line 2999
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraSingleEffect()I

    move-result v0

    if-eqz v0, :cond_2

    .line 3000
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showEffectLayout(Z)V

    .line 3003
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    if-eqz v0, :cond_0

    .line 3004
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideUndoButton()V

    .line 3005
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideFlashButton()V

    .line 3006
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideSwitchCameraButton()V

    .line 3007
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideCollageTypeIconLine()V

    .line 3009
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCurrentRecordingCount()I
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$100(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v0

    if-ge v0, v2, :cond_6

    .line 3010
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->startHideAnimation(Lcom/samsung/android/glview/GLButton;)V

    .line 3011
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->startShowAnimation(Lcom/samsung/android/glview/GLButton;)V

    .line 3016
    :goto_1
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->requestFocus(I)V

    .line 3018
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

    .line 3019
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsNeedDrawingProgressDivider:Z

    .line 3020
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getCurrentProgress()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->addProgressDivider(I)V

    .line 3024
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getProjectType()I
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 3025
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCurrentRecordingCount()I
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$100(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v0

    if-nez v0, :cond_4

    .line 3026
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setCollageTypeIconResources()V

    .line 3028
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCurrentRecordingCount()I
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$100(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->updateCollageTypeIcon(I)V

    .line 3031
    :cond_5
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showIndicatorLayout()V

    .line 3032
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hidePauseIndicatorIcon()V

    goto :goto_0

    .line 3013
    :cond_6
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideRecordingButton()V

    .line 3014
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showPauseButton()V

    goto :goto_1
.end method

.method private showResumeButton()V
    .locals 2

    .prologue
    .line 3037
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 3038
    return-void
.end method

.method private showResumeLayout()V
    .locals 2

    .prologue
    .line 3041
    const-string v0, "VideoCollage"

    const-string v1, "showResumeLayout()"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3043
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideResumeButton()V

    .line 3044
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showPauseButton()V

    .line 3045
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hidePauseIndicatorIcon()V

    .line 3046
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->requestFocus(I)V

    .line 3047
    return-void
.end method

.method private showSwitchCameraButton()V
    .locals 3

    .prologue
    .line 3050
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3051
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SWITCH_BUTTON_POS_X:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SWITCH_BUTTON_POS_Y_FRONT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLButton;->moveBaseLayoutAbsolute(FF)V

    .line 3055
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 3056
    return-void

    .line 3053
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
    .line 3059
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mUndoButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 3060
    return-void
.end method

.method private showView()V
    .locals 2

    .prologue
    .line 3063
    const-string v0, "VideoCollage"

    const-string v1, "showView()"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3065
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isFinish()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3075
    :goto_0
    return-void

    .line 3069
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isClipsAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3070
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showRecordedLayout()V

    .line 3074
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsLayoutUpdateNeeded:Z

    goto :goto_0

    .line 3072
    :cond_1
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

    .line 3078
    new-instance v10, Landroid/view/animation/AnimationSet;

    invoke-direct {v10, v9}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 3080
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

    .line 3081
    new-instance v1, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;

    invoke-direct {v1}, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;-><init>()V

    invoke-static {v8, v1}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 3082
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

    .line 3083
    invoke-virtual {v10, v9}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 3084
    const/4 v0, 0x1

    invoke-virtual {p1, v10, v0}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;Z)V

    .line 3085
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLButton;->startAnimation()V

    .line 3086
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

    .line 3089
    new-instance v10, Landroid/view/animation/AnimationSet;

    invoke-direct {v10, v9}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 3091
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

    .line 3092
    new-instance v0, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;

    invoke-direct {v0}, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;-><init>()V

    invoke-static {v8, v0}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 3093
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

    .line 3094
    invoke-virtual {v10, v9}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 3095
    invoke-virtual {p1, v10}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;)V

    .line 3096
    invoke-virtual {p1, v9}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 3097
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLButton;->startAnimation()V

    .line 3098
    return-void
.end method

.method private startTimer()V
    .locals 2

    .prologue
    .line 3101
    const-string v0, "VideoCollage"

    const-string v1, "startTimer()"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3102
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->updateRecIndicatorIcon()V

    .line 3103
    return-void
.end method

.method private stopTimer()V
    .locals 3

    .prologue
    const/16 v2, 0x3e8

    .line 3106
    const-string v0, "VideoCollage"

    const-string v1, "stopTimer()"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3108
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mVideoCollageHandler:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

    if-eqz v0, :cond_0

    .line 3109
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mVideoCollageHandler:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;->removeMessages(I)V

    .line 3113
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingTimeInMs:I

    .line 3114
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isPausing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3115
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRemainedRecordingTime()I

    move-result v0

    if-gt v0, v2, :cond_2

    .line 3116
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setProgress(I)V

    .line 3117
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRecordingTimeText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->updateRecordingTimeText(Ljava/lang/String;)V

    .line 3122
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideRecIndicatorIcon()V

    .line 3123
    return-void

    .line 3119
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

    .line 3126
    const-string v5, "VideoCollage"

    const-string v6, "switchCamera()"

    invoke-static {v5, v6}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3128
    const/4 v1, 0x0

    .local v1, "cameraResolution":Ljava/lang/String;
    const/4 v0, 0x0

    .line 3129
    .local v0, "camcorderResolution":Ljava/lang/String;
    const/4 v2, 0x0

    .line 3130
    .local v2, "collage_ratio":I
    const/4 v3, 0x0

    .line 3131
    .local v3, "currentTimerValue":I
    const/4 v4, 0x0

    .line 3133
    .local v4, "currentVoiceCommandValue":I
    iput-boolean v10, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsCameraSwitching:Z

    .line 3134
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideRecordedLayout()V

    .line 3135
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelAutoFocus()V

    .line 3137
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isCameraSwitched()Z

    move-result v5

    if-nez v5, :cond_6

    .line 3139
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getRatio()I
    invoke-static {v5}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2400(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v2

    .line 3140
    if-nez v2, :cond_4

    .line 3141
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_1BY1_LARGE:Ljava/lang/String;

    .line 3142
    :goto_0
    const-string v0, "960x960"

    .line 3148
    :cond_0
    :goto_1
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getTimer()I

    move-result v3

    .line 3149
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraVoiceCommand()I

    move-result v4

    .line 3151
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->toggleSwitchCameraIdSetting()V

    .line 3152
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraResolution()I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedCameraResolution:I

    .line 3153
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedCamcorderResolution:I

    .line 3154
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getTimer()I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedTimerValue:I

    .line 3155
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getZoomValue()I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedZoomValue:I

    .line 3156
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraVoiceCommand()I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedVoiceCommandValue:I

    .line 3157
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoCollageType()I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedVideoCollageType:I

    .line 3158
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSelfFlip()I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedFlipValue:I

    .line 3160
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraResolution(I)Z

    .line 3161
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCamcorderResolution(I)Z

    .line 3162
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setTimer(I)V

    .line 3163
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5, v9}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setZoomValue(I)V

    .line 3164
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraVoiceCommand(I)V

    .line 3165
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getProjectType()I
    invoke-static {v6}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCollageType()I
    invoke-static {v7}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$1000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v7

    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getRatio()I
    invoke-static {v8}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2400(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v8

    invoke-direct {p0, v6, v7, v8}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getCollageTypeSettingFromProject(III)I

    move-result v6

    invoke-interface {v5, v6, v9}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setVideoCollageType(IZ)V

    .line 3166
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3167
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5, v10}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setSelfFlip(I)V

    .line 3169
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->toggleSwitchCameraIdSetting()V

    .line 3194
    :cond_2
    :goto_2
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/Engine;->switchVideoCollageCamera()V

    .line 3196
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraVoiceCommand()I

    move-result v5

    if-ne v5, v10, :cond_c

    .line 3197
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->startVoiceRecognizer()V

    .line 3202
    :goto_3
    iput-boolean v9, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsCameraSwitching:Z

    .line 3204
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isClipsAdded()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 3205
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showRecordedLayout()V

    .line 3209
    :goto_4
    return-void

    .line 3141
    :cond_3
    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_RESOLUTION_1BY1_LARGE:Ljava/lang/String;

    goto/16 :goto_0

    .line 3143
    :cond_4
    if-ne v2, v10, :cond_0

    .line 3144
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v5

    if-eqz v5, :cond_5

    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_4BY3_LARGE:Ljava/lang/String;

    .line 3145
    :goto_5
    const-string v0, "960x720"

    goto/16 :goto_1

    .line 3144
    :cond_5
    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_RESOLUTION_4BY3_LARGE:Ljava/lang/String;

    goto :goto_5

    .line 3173
    :cond_6
    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedCameraResolution:I

    if-ltz v5, :cond_7

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedCamcorderResolution:I

    if-ltz v5, :cond_7

    .line 3174
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedCameraResolution:I

    invoke-interface {v5, v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraResolution(I)Z

    .line 3175
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedCamcorderResolution:I

    invoke-interface {v5, v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCamcorderResolution(I)Z

    .line 3177
    :cond_7
    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedTimerValue:I

    if-ltz v5, :cond_8

    .line 3178
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedTimerValue:I

    invoke-interface {v5, v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setTimer(I)V

    .line 3180
    :cond_8
    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedZoomValue:I

    if-ltz v5, :cond_9

    .line 3181
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedZoomValue:I

    invoke-interface {v5, v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setZoomValue(I)V

    .line 3183
    :cond_9
    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedVoiceCommandValue:I

    if-ltz v5, :cond_a

    .line 3184
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedVoiceCommandValue:I

    invoke-interface {v5, v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraVoiceCommand(I)V

    .line 3186
    :cond_a
    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedVideoCollageType:I

    if-ltz v5, :cond_b

    .line 3187
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedVideoCollageType:I

    invoke-interface {v5, v6, v9}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setVideoCollageType(IZ)V

    .line 3189
    :cond_b
    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedFlipValue:I

    if-ltz v5, :cond_2

    .line 3190
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedFlipValue:I

    invoke-interface {v5, v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setSelfFlip(I)V

    goto/16 :goto_2

    .line 3199
    :cond_c
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->stopVoiceRecognizer()V

    goto :goto_3

    .line 3207
    :cond_d
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showPreviewLayout()V

    goto :goto_4
.end method

.method private switchCameraAsync()V
    .locals 2

    .prologue
    .line 3212
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mVideoCollageHandler:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

    if-eqz v0, :cond_0

    .line 3213
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mVideoCollageHandler:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;->sendEmptyMessage(I)Z

    .line 3215
    :cond_0
    return-void
.end method

.method private switchCameraSync()V
    .locals 0

    .prologue
    .line 3218
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->prepareSwitchCamera()V

    .line 3219
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->switchCamera()V

    .line 3220
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->handleSwitchCameraCompleted()V

    .line 3221
    return-void
.end method

.method private toggleSwitchCameraIdSetting()V
    .locals 2

    .prologue
    .line 3224
    const-string v0, "VideoCollage"

    const-string v1, "toggleSwitchCameraIdSetting()"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3225
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3226
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getBackCameraId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraId(I)V

    .line 3230
    :cond_0
    :goto_0
    return-void

    .line 3227
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3228
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
    .line 3233
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIcon:Lcom/samsung/android/glview/GLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getResourceIcon(I)I
    invoke-static {v1, p1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$3400(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 3234
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIconLine:Lcom/samsung/android/glview/GLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getResourceIconLine(I)I
    invoke-static {v1, p1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$3500(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 3235
    return-void
.end method

.method private updateCropArea()V
    .locals 1

    .prologue
    .line 3238
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isCropAreaEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3239
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setCropArea()V

    .line 3240
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showCropArea()V

    .line 3244
    :goto_0
    return-void

    .line 3242
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideCropArea()V

    goto :goto_0
.end method

.method private updateDivider()V
    .locals 5

    .prologue
    .line 3247
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

    .line 3248
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getClipListAsDurationInMs()Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$3600(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)Ljava/util/ArrayList;

    move-result-object v0

    .line 3249
    .local v0, "durationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 3250
    .local v1, "durationSum":I
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->clearProgressDivider()V

    .line 3251
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_0

    .line 3252
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v1, v3

    .line 3253
    int-to-float v3, v1

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getRecordingTime()I
    invoke-static {v4}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$900(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    const/high16 v4, 0x447a0000    # 1000.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->addProgressDivider(I)V

    .line 3254
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showLastProgressDivider()V

    .line 3251
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3258
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

    .line 3261
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->updateIndicatorRecTimePosition()V

    .line 3263
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCurrentOrientation:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCurrentOrientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 3264
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

    .line 3265
    .local v0, "offset":I
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    neg-int v2, v0

    int-to-float v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->translateAbsolute(FF)V

    .line 3266
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeGroup:Lcom/samsung/android/glview/GLViewGroup;

    neg-int v2, v0

    int-to-float v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->translateAbsolute(FF)V

    .line 3267
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    neg-int v2, v0

    int-to-float v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->translateAbsolute(FF)V

    .line 3273
    .end local v0    # "offset":I
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v4}, Lcom/samsung/android/glview/GLViewGroup;->updateLayout(Z)V

    .line 3274
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v4}, Lcom/samsung/android/glview/GLViewGroup;->updateLayout(Z)V

    .line 3275
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v4}, Lcom/samsung/android/glview/GLViewGroup;->updateLayout(Z)V

    .line 3276
    return-void

    .line 3269
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLViewGroup;->resetTranslate()V

    .line 3270
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLViewGroup;->resetTranslate()V

    .line 3271
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLViewGroup;->resetTranslate()V

    goto :goto_0
.end method

.method private updateIndicatorRecTimePosition()V
    .locals 9

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    .line 3281
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

    .line 3282
    .local v2, "strlen":F
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_TEXT_POS_X:I

    int-to-float v3, v3

    add-float v1, v3, v2

    .line 3283
    .local v1, "margin":F
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_GROUP_WIDTH:I

    int-to-float v3, v3

    div-float/2addr v3, v8

    sub-float v0, v1, v3

    .line 3285
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

    .line 3287
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

    .line 3288
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

    .line 3290
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

    .line 3292
    return-void
.end method

.method private updateProgress()V
    .locals 4

    .prologue
    .line 3295
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getCurrentProgress()I

    move-result v0

    .line 3296
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

    .line 3298
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v1, v2, :cond_1

    .line 3299
    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsNeedDrawingProgressDivider:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getProgress()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 3300
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsNeedDrawingProgressDivider:Z

    .line 3301
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showLastProgressDivider()V

    .line 3303
    :cond_0
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setProgress(I)V

    .line 3305
    :cond_1
    return-void
.end method

.method private updateRecIndicatorIcon()V
    .locals 2

    .prologue
    .line 3308
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mVideoCollageHandler:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

    if-eqz v0, :cond_0

    .line 3309
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mVideoCollageHandler:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;->removeMessages(I)V

    .line 3312
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v1, :cond_1

    .line 3313
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 3314
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 3319
    :cond_1
    :goto_0
    return-void

    .line 3316
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
    .line 3322
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getCurrentRecordingTime()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCurrentRecordedTimeInMs()I
    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$800(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v2, p1

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 3334
    :goto_0
    return-void

    .line 3325
    :cond_0
    long-to-int v0, p1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingTimeInMs:I

    .line 3327
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRecordingTimeText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->updateRecordingTimeText(Ljava/lang/String;)V

    .line 3328
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->updateRecIndicatorIcon()V

    .line 3330
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mVideoCollageHandler:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

    if-eqz v0, :cond_1

    .line 3331
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mVideoCollageHandler:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 3333
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
    .line 3337
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_0

    .line 3338
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 3340
    :cond_0
    return-void
.end method


# virtual methods
.method public cancelRecording()V
    .locals 2

    .prologue
    .line 349
    const-string v0, "VideoCollage"

    const-string v1, "cancelRecording()"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STOPPING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v1, :cond_0

    .line 351
    const-string v0, "VideoCollage"

    const-string v1, "return cancelRecording - record is already stopping"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :goto_0
    return-void

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelAutoFocus()V

    .line 357
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STOPPING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->setRecordingState(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;)V

    .line 358
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelVideoRecordingSync()V

    goto :goto_0
.end method

.method public isCapturing()Z
    .locals 1

    .prologue
    .line 363
    const/4 v0, 0x0

    return v0
.end method

.method public isChangingShootingModeDisabled()Z
    .locals 1

    .prologue
    .line 368
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isClipsAdded()Z

    move-result v0

    return v0
.end method

.method public isPlayRecordingStartSound()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 372
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getProjectType()I
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 373
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

    .line 374
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isClipsAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 375
    const/4 v0, 0x0

    .line 378
    :cond_0
    return v0
.end method

.method public isPlayRecordingStopSound()Z
    .locals 1

    .prologue
    .line 382
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRemainedRecordingTime()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSnapShotAvailable()Z
    .locals 1

    .prologue
    .line 387
    const/4 v0, 0x0

    return v0
.end method

.method public isZoomDisabled()Z
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getProjectType()I
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

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

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 397
    const-string v0, "VideoCollage"

    const-string v1, "onActivate()"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 399
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v0, p1, p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->register(Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;)V

    .line 400
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCurrentOrientation:I

    .line 401
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->setAutoFocusListener(Lcom/sec/android/app/camera/interfaces/AeAfManager$AutoFocusListener;)V

    .line 404
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isClipsAdded()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 406
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSecureCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isSecureSavedProjectExist()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 407
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getProjectSecureSaveFileName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->loadSavedProject(Ljava/lang/String;)V

    .line 408
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_video_collage_is_project_secure_saved_key"

    invoke-static {v0, v1, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 430
    :goto_0
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;-><init>(Lcom/sec/android/app/camera/shootingmode/VideoCollage;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mVideoCollageHandler:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

    .line 432
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_GPU_EFFECT:Z

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/16 v1, 0x7f

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEffectThumbnailListMenu:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    .line 434
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEffectThumbnailListMenu:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V

    .line 438
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, v5, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 439
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/16 v1, 0x84

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 442
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setVideoCollageResolution()V

    .line 444
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setCollageTypeIconResources()V

    .line 447
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->registerCameraDialogListener(Lcom/sec/android/app/camera/interfaces/CameraContext$CameraDialogListener;)V

    .line 450
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0, v4}, Lcom/sec/android/app/camera/interfaces/MenuManager;->removeMenu(I)V

    .line 451
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0, v4}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    .line 452
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->setOnShowListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;)V

    .line 453
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V

    .line 455
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setEffectProcessorListener(Lcom/sec/android/app/camera/interfaces/Engine$EffectProcessorListener;)V

    .line 456
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setEngineStateListener(Lcom/sec/android/app/camera/interfaces/Engine$EngineStateListener;)V

    .line 457
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setVideoContentsLoggingListener(Lcom/sec/android/app/camera/interfaces/Engine$VideoContentsLoggingListener;)V

    .line 459
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isClipsAdded()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v1, :cond_1

    .line 460
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraId()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mFirstCameraId:I

    .line 463
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->setTickInterval(I)V

    .line 465
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFlashMode()I

    move-result v0

    if-ne v0, v2, :cond_8

    .line 466
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFlashAutoCallback(Z)V

    .line 471
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraHDR()I

    move-result v0

    if-ne v0, v2, :cond_9

    .line 472
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->enableHdrAutoCallback(Z)V

    .line 478
    :goto_2
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mFirstCameraId:I

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getFrontCameraId()I

    move-result v1

    if-ne v0, v1, :cond_a

    .line 479
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setSideQuickSettingItems([I)V

    .line 485
    :goto_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoCollageType()I

    move-result v1

    invoke-interface {v0, v5, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 488
    invoke-static {v3}, Lcom/sec/android/app/camera/util/StorageUtils;->getUpdatedStorageStatus(I)I

    move-result v0

    if-eq v0, v2, :cond_b

    .line 489
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    .line 490
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showLowDeviceStorageToast()V

    .line 497
    :goto_4
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showView()V

    .line 498
    return-void

    .line 409
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSecureCamera()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 410
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoCollageType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->initializeProject(I)V

    goto/16 :goto_0

    .line 411
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isSavedProjectExist()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 412
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getProjectSaveFileName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->loadSavedProject(Ljava/lang/String;)V

    .line 413
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_video_collage_is_project_saved_key"

    invoke-static {v0, v1, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 415
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoCollageType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->initializeProject(I)V

    goto/16 :goto_0

    .line 419
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoCollageType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->initializeProject(I)V

    .line 421
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSecureCamera()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 422
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->discardSaved()V

    goto/16 :goto_0

    .line 423
    :cond_6
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isSavedProjectExist()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 424
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->VIDEO_COLLAGE_EXIST_SAVE_PROJECT:Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showCameraDialog(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;)V

    goto/16 :goto_0

    .line 426
    :cond_7
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->discardSaved()V

    goto/16 :goto_0

    .line 468
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFlashAutoCallback(Z)V

    goto/16 :goto_1

    .line 474
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->enableHdrAutoCallback(Z)V

    goto/16 :goto_2

    .line 481
    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setSideQuickSettingItems([I)V

    goto/16 :goto_3

    .line 491
    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->isRecordingRestricted()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 492
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    goto/16 :goto_4

    .line 494
    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    goto/16 :goto_4

    .line 479
    :array_0
    .array-data 4
        0x84
        0x83
        0xc
    .end array-data

    .line 481
    :array_1
    .array-data 4
        0x84
        0x83
        0x3
        0xc
    .end array-data
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 502
    const/4 v0, 0x0

    return v0
.end method

.method public onAnimationEnd(Lcom/samsung/android/glview/GLView;Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 507
    return-void
.end method

.method public onAnimationStart(Lcom/samsung/android/glview/GLView;Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 511
    return-void
.end method

.method public onAutoFocus()V
    .locals 2

    .prologue
    .line 515
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v0, v1, :cond_0

    .line 519
    :goto_0
    return-void

    .line 518
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showCAFButton()V

    goto :goto_0
.end method

.method public onBuildMediaRecorderProfile(Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;)V
    .locals 5
    .param p1, "builder"    # Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 523
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getMaxRecordingTimeInMs()I

    move-result v2

    add-int/lit8 v2, v2, 0x46

    invoke-virtual {p1, v2}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->maxDuration(I)Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;

    .line 524
    const v2, 0x7d000

    invoke-virtual {p1, v2}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->fileSizeInterval(I)Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;

    .line 525
    sget-object v2, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;->CollageVideoBitrateTable:Landroid/util/SparseArray;

    invoke-virtual {p1, v2}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->videoEncodingBitrate(Landroid/util/SparseArray;)Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;

    .line 527
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getProjectType()I
    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v2

    if-nez v2, :cond_0

    .line 529
    invoke-virtual {p1, v4}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->recordingMode(I)Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;

    .line 530
    const/16 v2, 0x78

    invoke-virtual {p1, v2}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->videoFrameRate(I)Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;

    .line 539
    :goto_0
    return-void

    .line 532
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getVideoSizeDivider()[I

    move-result-object v0

    .line 533
    .local v0, "div":[I
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v1

    .line 535
    .local v1, "resolutionId":I
    invoke-virtual {p1, v3}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->recordingMode(I)Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;

    .line 536
    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntWidth(I)I

    move-result v2

    aget v3, v0, v3

    div-int/2addr v2, v3

    invoke-virtual {p1, v2}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->videoWidth(I)Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;

    .line 537
    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntHeight(I)I

    move-result v2

    aget v3, v0, v4

    div-int/2addr v2, v3

    invoke-virtual {p1, v2}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->videoHeight(I)Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;

    goto :goto_0
.end method

.method public onCameraSettingChanged(II)V
    .locals 6
    .param p1, "menuId"    # I
    .param p2, "modeId"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 543
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

    .line 545
    packed-switch p1, :pswitch_data_0

    .line 609
    :cond_0
    :goto_0
    return-void

    .line 548
    :pswitch_0
    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsCameraSwitching:Z

    if-nez v1, :cond_0

    .line 552
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getProjectType()I
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v0

    .line 554
    .local v0, "prevProjcetType":I
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setProjectType(I)V

    .line 555
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setRecordingTimeByType()V

    .line 556
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setCollageType(I)V

    .line 557
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setRatio(I)V

    .line 558
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setMaxRecordingCount(I)V

    .line 560
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFlashMode()I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 561
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFlashAutoCallback(Z)V

    .line 566
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraHDR()I

    move-result v1

    if-ne v1, v4, :cond_2

    .line 567
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->enableHdrAutoCallback(Z)V

    .line 573
    :goto_2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v2, 0x83

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoCollageType()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 576
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setVideoCollageResolution()V

    .line 577
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraResolutionChanged()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->needToResizeForCameraPreviewAspectRatio()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 578
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/shootingmode/VideoCollage$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$1;-><init>(Lcom/sec/android/app/camera/shootingmode/VideoCollage;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 585
    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsLayoutUpdateNeeded:Z

    goto :goto_0

    .line 563
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v5}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFlashAutoCallback(Z)V

    goto :goto_1

    .line 569
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v5}, Lcom/sec/android/app/camera/interfaces/Engine;->enableHdrAutoCallback(Z)V

    goto :goto_2

    .line 586
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

    .line 587
    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getProjectType()I
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v1

    if-eqz v1, :cond_6

    .line 588
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStopPreview()V

    .line 589
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStartPreview()V

    .line 590
    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsLayoutUpdateNeeded:Z

    goto/16 :goto_0

    .line 592
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mVideoCollageHandler:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

    if-eqz v1, :cond_0

    .line 593
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mVideoCollageHandler:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 598
    .end local v0    # "prevProjcetType":I
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getProjectType()I
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v1

    if-nez v1, :cond_7

    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsNeedBackupRecordingTime:Z

    if-eqz v1, :cond_7

    .line 599
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

    .line 600
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mMaxRecordingTimeChangeCnt:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mMaxRecordingTimeChangeCnt:I

    .line 603
    :cond_7
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setRecordingTime(I)V

    .line 604
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRecordingTimeText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->updateRecordingTimeText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 545
    :pswitch_data_0
    .packed-switch 0x83
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCancelDialog(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;)V
    .locals 3
    .param p1, "id"    # Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    .prologue
    .line 613
    const-string v0, "VideoCollage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCancelDialog dialogID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->RUNTIME_PERMISSIONS_ON_SECURE_LOCK_IN_VIDEO_COLLAGE:Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    if-ne p1, v0, :cond_0

    .line 615
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->discardRecording()V

    .line 617
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->dismissCameraDialog(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;)V

    .line 618
    return-void
.end method

.method public onCancelRecordingRequested()V
    .locals 0

    .prologue
    .line 622
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->cancelRecording()V

    .line 623
    return-void
.end method

.method public onChangeShootingModeParameters(Lcom/samsung/android/camera/core/SemCamera$Parameters;)V
    .locals 10
    .param p1, "parameters"    # Lcom/samsung/android/camera/core/SemCamera$Parameters;

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/16 v7, 0xc

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 627
    const-string v2, "VideoCollage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onChangeShootingModeParameters : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v1

    sget-object v4, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STARTING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v1, v4, :cond_3

    const-string v1, "RECORDING"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", VideoCollageType="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 628
    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoCollageType()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 627
    invoke-static {v2, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STARTING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v1, v2, :cond_6

    .line 631
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoCollageType()I

    move-result v1

    if-eq v1, v5, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 632
    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoCollageType()I

    move-result v1

    if-eq v1, v8, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 633
    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoCollageType()I

    move-result v1

    if-ne v1, v9, :cond_4

    .line 635
    :cond_0
    const v1, 0x1d4c0

    const v2, 0x1d4c0

    invoke-virtual {p1, v1, v2}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->setPreviewFpsRange(II)V

    .line 637
    const/16 v1, 0x170e

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraParameters;->getModeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v8}, Lcom/sec/android/app/camera/util/CameraParameters;->getRecordingMotionFPS(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    const/4 v1, 0x5

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraParameters;->getModeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5}, Lcom/sec/android/app/camera/util/CameraParameters;->getFocusModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_REAR_RT_HDR:Z

    if-eqz v1, :cond_1

    .line 641
    invoke-static {v7}, Lcom/sec/android/app/camera/util/CameraParameters;->getModeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v6}, Lcom/sec/android/app/camera/util/CameraParameters;->getCameraHDRString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    :cond_1
    invoke-virtual {p1, v5}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->setRecordingHint(Z)V

    .line 644
    const-string v1, "effectrecording-hint"

    invoke-virtual {p1, v1, v6}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 645
    const-string v1, "phase-af"

    const-string v2, "off"

    invoke-virtual {p1, v1, v2}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    :cond_2
    :goto_1
    return-void

    .line 627
    :cond_3
    const-string v1, "PREVIEW"

    goto :goto_0

    .line 647
    :cond_4
    const/16 v1, 0x5dc0

    const/16 v2, 0x5dc0

    invoke-virtual {p1, v1, v2}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->setPreviewFpsRange(II)V

    .line 649
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_REAR_RT_HDR:Z

    if-eqz v1, :cond_5

    .line 650
    invoke-static {v7}, Lcom/sec/android/app/camera/util/CameraParameters;->getModeString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraHDR()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraParameters;->getCameraHDRString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    :cond_5
    invoke-virtual {p1, v6}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->setRecordingHint(Z)V

    .line 653
    const-string v1, "effectrecording-hint"

    invoke-virtual {p1, v1, v5}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 654
    const-string v1, "phase-af"

    const-string v2, "on"

    invoke-virtual {p1, v1, v2}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 657
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoCollageType()I

    move-result v1

    if-eq v1, v5, :cond_7

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 658
    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoCollageType()I

    move-result v1

    if-eq v1, v8, :cond_7

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 659
    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoCollageType()I

    move-result v1

    if-ne v1, v9, :cond_9

    .line 661
    :cond_7
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_REAR_RT_HDR:Z

    if-eqz v1, :cond_8

    .line 662
    invoke-static {v7}, Lcom/sec/android/app/camera/util/CameraParameters;->getModeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v6}, Lcom/sec/android/app/camera/util/CameraParameters;->getCameraHDRString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    :cond_8
    const/16 v1, 0x3a98

    const/16 v2, 0x7530

    invoke-virtual {p1, v1, v2}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->setPreviewFpsRange(II)V

    .line 665
    const-string v1, "effect_hint"

    invoke-virtual {p1, v1, v6}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 677
    :goto_2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 678
    const/16 v1, 0xb

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraParameters;->getModeString(I)Ljava/lang/String;

    move-result-object v1

    .line 679
    invoke-static {v5}, Lcom/sec/android/app/camera/util/CameraParameters;->getExposureMeterString(I)Ljava/lang/String;

    move-result-object v2

    .line 678
    invoke-virtual {p1, v1, v2}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 668
    :cond_9
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_REAR_RT_HDR:Z

    if-eqz v1, :cond_a

    .line 669
    invoke-static {v7}, Lcom/sec/android/app/camera/util/CameraParameters;->getModeString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraHDR()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraParameters;->getCameraHDRString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    :cond_a
    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraParameters;->getEffectFpsRange(Lcom/samsung/android/camera/core/SemCamera$Parameters;)[I

    move-result-object v0

    .line 672
    .local v0, "effectPreviewFPSRange":[I
    aget v1, v0, v6

    aget v2, v0, v5

    invoke-virtual {p1, v1, v2}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->setPreviewFpsRange(II)V

    .line 673
    const-string v1, "effect_hint"

    invoke-virtual {p1, v1, v5}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;I)V

    goto :goto_2
.end method

.method public onClick(Lcom/samsung/android/glview/GLView;)Z
    .locals 3
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 686
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

    .line 687
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->collapseMenu()V

    .line 690
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 691
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x82

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 703
    :goto_0
    return v0

    .line 692
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 693
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->onPauseButtonPressed()Z

    move-result v0

    goto :goto_0

    .line 694
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 695
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->onResumeButtonPressed()Z

    move-result v0

    goto :goto_0

    .line 696
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mUndoButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 697
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->onUndoButtonPressed()Z

    move-result v0

    goto :goto_0

    .line 698
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 699
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->onCAFButtonPressed()Z

    move-result v0

    goto :goto_0

    .line 700
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 701
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->onSwitchCameraButtonPressed()Z

    move-result v0

    goto :goto_0

    .line 703
    :cond_7
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateDialog(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;)V
    .locals 0
    .param p1, "id"    # Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    .prologue
    .line 708
    return-void
.end method

.method public onCreateView(Lcom/samsung/android/glview/GLContext;Lcom/samsung/android/glview/GLViewGroup;Lcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/interfaces/BaseMenuController;Lcom/sec/android/app/camera/interfaces/MenuManager;)V
    .locals 0
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "viewLayout"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p3, "controllerLayout"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p4, "baseMenuController"    # Lcom/sec/android/app/camera/interfaces/BaseMenuController;
    .param p5, "menuManager"    # Lcom/sec/android/app/camera/interfaces/MenuManager;

    .prologue
    .line 712
    iput-object p4, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    .line 713
    iput-object p5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    .line 715
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->initializeView(Lcom/samsung/android/glview/GLContext;Lcom/samsung/android/glview/GLViewGroup;Lcom/samsung/android/glview/GLViewGroup;)V

    .line 716
    return-void
.end method

.method public onDismissDialog(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;)V
    .locals 0
    .param p1, "id"    # Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    .prologue
    .line 720
    return-void
.end method

.method public onEffectProcessorPrepared()V
    .locals 2

    .prologue
    .line 724
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v0, v1, :cond_0

    .line 725
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getEffectProcessorParameter()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setProcessorParameter(Ljava/lang/String;)V

    .line 727
    :cond_0
    return-void
.end method

.method public onEngineStateChanged(Lcom/sec/android/app/camera/interfaces/Engine$CeState;)V
    .locals 2
    .param p1, "state"    # Lcom/sec/android/app/camera/interfaces/Engine$CeState;

    .prologue
    .line 731
    sget-object v0, Lcom/sec/android/app/camera/interfaces/Engine$CeState;->STARTING_PREVIEW:Lcom/sec/android/app/camera/interfaces/Engine$CeState;

    if-ne p1, v0, :cond_0

    .line 732
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mVideoCollageHandler:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsLayoutUpdateNeeded:Z

    if-eqz v0, :cond_0

    .line 733
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mVideoCollageHandler:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;->sendEmptyMessage(I)Z

    .line 736
    :cond_0
    return-void
.end method

.method public onHide(Lcom/sec/android/app/camera/interfaces/MenuBase;)V
    .locals 2
    .param p1, "menu"    # Lcom/sec/android/app/camera/interfaces/MenuBase;

    .prologue
    .line 740
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_GPU_EFFECT:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEffectThumbnailListMenu:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 741
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->stopThumbnailPreviewCallback()V

    .line 743
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 744
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showIndicatorLayout()V

    .line 745
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraSingleEffect()I

    move-result v0

    if-eqz v0, :cond_1

    .line 746
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showEffectLayout(Z)V

    .line 749
    :cond_1
    return-void
.end method

.method public onImageStoringCompleted()Z
    .locals 1

    .prologue
    .line 753
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

    .line 758
    const-string v1, "VideoCollage"

    const-string v2, "onInactivate()"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STOPPING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v1, v2, :cond_0

    .line 760
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->cancelRecording()V

    .line 763
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isNeedSaveProjcet()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 765
    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->saveProject()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 771
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isNeedReset()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 773
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isCameraSwitched()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 774
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->switchCameraSync()V

    .line 776
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->reset()V

    .line 779
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->unregister()V

    .line 780
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideView()V

    .line 782
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->resetOverriddenCamcorderResolution()V

    .line 785
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1, v7, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 786
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/16 v2, 0x84

    invoke-interface {v1, v2, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 789
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1, v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCamcorderAudioRecording(I)V

    .line 792
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isPausing()Z

    move-result v1

    if-nez v1, :cond_4

    .line 793
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1, v7, v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 796
    :cond_4
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_GPU_EFFECT:Z

    if-eqz v1, :cond_5

    .line 797
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEffectThumbnailListMenu:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V

    .line 801
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->unregisterCameraDialogListener(Lcom/sec/android/app/camera/interfaces/CameraContext$CameraDialogListener;)V

    .line 804
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/16 v2, 0x12

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/MenuManager;->removeMenu(I)V

    .line 805
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->setOnShowListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;)V

    .line 806
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V

    .line 807
    iput-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    .line 809
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->setEffectProcessorListener(Lcom/sec/android/app/camera/interfaces/Engine$EffectProcessorListener;)V

    .line 810
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->setEngineStateListener(Lcom/sec/android/app/camera/interfaces/Engine$EngineStateListener;)V

    .line 811
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->setVideoContentsLoggingListener(Lcom/sec/android/app/camera/interfaces/Engine$VideoContentsLoggingListener;)V

    .line 812
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object v1

    invoke-interface {v1, v4}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->setAutoFocusListener(Lcom/sec/android/app/camera/interfaces/AeAfManager$AutoFocusListener;)V

    .line 815
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v5}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFlashAutoCallback(Z)V

    .line 816
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v5}, Lcom/sec/android/app/camera/interfaces/Engine;->enableHdrAutoCallback(Z)V

    .line 819
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->removeSideQuickSettingItems()V

    .line 822
    iput-boolean v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsNeedDrawingProgressDivider:Z

    .line 823
    iput-boolean v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsLayoutUpdateNeeded:Z

    .line 824
    iput-boolean v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsTimerCounting:Z

    .line 826
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mVideoCollageHandler:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;->removeMessages(I)V

    .line 827
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mVideoCollageHandler:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;->removeMessages(I)V

    .line 828
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mVideoCollageHandler:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;->removeMessages(I)V

    .line 829
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mVideoCollageHandler:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;->removeMessages(I)V

    .line 831
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->clear()V

    .line 832
    return-void

    .line 766
    :catch_0
    move-exception v0

    .line 767
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

    .line 836
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->isRecordingControlAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 837
    const-string v1, "VideoCollage"

    const-string v2, "Recording control is not available at this moment, ignore key down event"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    :goto_0
    :sswitch_0
    return v0

    .line 840
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 846
    const/4 v0, 0x0

    goto :goto_0

    .line 840
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
    .line 851
    sparse-switch p1, :sswitch_data_0

    .line 862
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 853
    :sswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->onBackKeyPressed()Z

    move-result v0

    goto :goto_0

    .line 855
    :sswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v1, :cond_1

    .line 856
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->onPauseButtonPressed()Z

    move-result v0

    goto :goto_0

    .line 857
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_PAUSING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v1, :cond_0

    .line 858
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->onResumeButtonPressed()Z

    move-result v0

    goto :goto_0

    .line 851
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method public onMenuSelected(II)Z
    .locals 1
    .param p1, "menuId"    # I
    .param p2, "modeId"    # I

    .prologue
    .line 867
    const/4 v0, 0x0

    return v0
.end method

.method public onNegativeButtonClicked(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;)V
    .locals 3
    .param p1, "id"    # Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    .prologue
    .line 872
    const-string v0, "VideoCollage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNegativeButtonClicked id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->VIDEO_COLLAGE_DISCARD_OR_SAVE_RECORDING:Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    if-ne p1, v0, :cond_1

    .line 874
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->discardRecording()V

    .line 879
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->dismissCameraDialog(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;)V

    .line 880
    return-void

    .line 875
    :cond_1
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->VIDEO_COLLAGE_EXIST_SAVE_PROJECT:Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    if-ne p1, v0, :cond_0

    .line 876
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
    .line 884
    .local p1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 885
    const-string v0, "Z101"

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShootingModeNameForLogging()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getTotalRecordingTime()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;J)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 886
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

    .line 891
    :goto_0
    return-void

    .line 888
    :cond_0
    const-string v0, "Z100"

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShootingModeNameForLogging()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getTotalRecordingTime()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;J)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 889
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
    .line 896
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    if-nez v0, :cond_1

    .line 923
    :cond_0
    :goto_0
    return-void

    .line 900
    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCurrentOrientation:I

    if-eq v0, p1, :cond_2

    .line 901
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

    .line 902
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCurrentOrientation:I

    .line 905
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->updateIndicatorLayout()V

    .line 906
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->updateCropArea()V

    .line 908
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getProjectType()I
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v1, :cond_4

    .line 909
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCurrentOrientation:I

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setViewOrientation(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$400(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    .line 910
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setCollageTypeIconResources()V

    .line 911
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCurrentRecordingCount()I
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$100(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->updateCollageTypeIcon(I)V

    .line 916
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/16 v1, 0x12

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 917
    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-ne p1, v0, :cond_5

    .line 918
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideIndicatorLayout()V

    goto :goto_0

    .line 913
    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->rotateCollageTypeIcon()V

    goto :goto_1

    .line 920
    :cond_5
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showIndicatorLayout()V

    goto :goto_0
.end method

.method public onPositiveButtonClicked(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;)V
    .locals 3
    .param p1, "id"    # Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    .prologue
    .line 927
    const-string v0, "VideoCollage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPositiveButtonClicked id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$3;->$SwitchMap$com$sec$android$app$camera$interfaces$CameraContext$DialogID:[I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 951
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->dismissCameraDialog(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;)V

    .line 952
    return-void

    .line 930
    :pswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->discardRecording()V

    goto :goto_0

    .line 934
    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isCameraSwitched()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 935
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->switchCameraSync()V

    .line 937
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getDefaultShootingModeByCurrentCameraId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->handleShootingModeChanged(I)V

    goto :goto_0

    .line 940
    :pswitch_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getProjectSaveFileName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->loadSavedProject(Ljava/lang/String;)V

    .line 941
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_video_collage_is_project_saved_key"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    .line 944
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mVideoCollageHandler:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

    if-eqz v0, :cond_0

    .line 945
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mVideoCollageHandler:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 928
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onRecordKeyCanceled()Z
    .locals 1

    .prologue
    .line 956
    const/4 v0, 0x0

    return v0
.end method

.method public onRecordKeyPressed()Z
    .locals 1

    .prologue
    .line 961
    const/4 v0, 0x0

    return v0
.end method

.method public onRecordKeyReleased()Z
    .locals 5

    .prologue
    const/16 v4, 0x84

    const/16 v3, 0x83

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 966
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLButton;->isDim()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1004
    :goto_0
    return v0

    .line 970
    :cond_0
    iget-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsCameraSwitching:Z

    if-eqz v2, :cond_1

    .line 971
    const-string v0, "VideoCollage"

    const-string v2, "return mIsCameraSwitching"

    invoke-static {v0, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 972
    goto :goto_0

    .line 975
    :cond_1
    invoke-static {v0}, Lcom/sec/android/app/camera/util/StorageUtils;->getUpdatedStorageStatus(I)I

    move-result v2

    if-eq v2, v1, :cond_3

    .line 976
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_2

    .line 977
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    .line 979
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showLowDeviceStorageToast()V

    move v0, v1

    .line 980
    goto :goto_0

    .line 983
    :cond_3
    iget-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsLayoutUpdateNeeded:Z

    if-eqz v2, :cond_4

    .line 984
    const-string v1, "VideoCollage"

    const-string v2, "return mIsLayoutUpdateNeeded"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 988
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->VIDEO_COLLAGE_DISCARD_OR_SAVE_RECORDING:Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCameraDialogVisible(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->VIDEO_COLLAGE_EXIST_SAVE_PROJECT:Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    .line 989
    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCameraDialogVisible(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->VIDEO_COLLAGE_CANCEL_OR_DISCARD_RECORDING:Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    .line 990
    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCameraDialogVisible(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 991
    :cond_5
    const-string v0, "VideoCollage"

    const-string v2, "return isCameraDialogVisible.."

    invoke-static {v0, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 992
    goto :goto_0

    .line 995
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->startRecording()V

    .line 998
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCurrentRecordingCount()I
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$100(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v0

    if-nez v0, :cond_7

    .line 999
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 1000
    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoCollageRecordingTime()I

    move-result v2

    .line 999
    invoke-static {v4, v2}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v2

    invoke-interface {v0, v4, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->sendBroadcastChangeSettings(II)V

    .line 1001
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 1002
    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoCollageType()I

    move-result v2

    .line 1001
    invoke-static {v3, v2}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v2

    invoke-interface {v0, v3, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->sendBroadcastChangeSettings(II)V

    :cond_7
    move v0, v1

    .line 1004
    goto :goto_0
.end method

.method public onRecordingEvent(I)V
    .locals 1
    .param p1, "event"    # I

    .prologue
    .line 1009
    packed-switch p1, :pswitch_data_0

    .line 1031
    :cond_0
    :goto_0
    return-void

    .line 1011
    :pswitch_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsTimerCounting:Z

    if-eqz v0, :cond_0

    .line 1012
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showRecordingLayout()V

    .line 1013
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsTimerCounting:Z

    goto :goto_0

    .line 1017
    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showResumeLayout()V

    goto :goto_0

    .line 1020
    :pswitch_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showPauseLayout()V

    goto :goto_0

    .line 1023
    :pswitch_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->handleRecordingStopped()V

    goto :goto_0

    .line 1026
    :pswitch_4
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->handleRecordingCancelled()V

    goto :goto_0

    .line 1009
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
    .line 1035
    const-string v0, "VideoCollage"

    const-string v1, "onRecordingMaxReachedDuration()"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getMaxRecordingTimeInMs()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->updateRecordingTime(J)V

    .line 1038
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRecordingTimeText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->updateRecordingTimeText(Ljava/lang/String;)V

    .line 1039
    const/16 v0, 0x3e8

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setProgress(I)V

    .line 1041
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->stopRecording()V

    .line 1042
    return-void
.end method

.method public onRecordingMaxFileSizeReached()V
    .locals 2

    .prologue
    .line 1046
    const-string v0, "VideoCollage"

    const-string v1, "onRecordingMaxReachedFileSize()"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->stopRecording()V

    .line 1048
    return-void
.end method

.method public onRecordingRestricted(ZZ)V
    .locals 3
    .param p1, "isRestricted"    # Z
    .param p2, "stopForced"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1053
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    .line 1054
    invoke-static {v2}, Lcom/sec/android/app/camera/util/StorageUtils;->getUpdatedStorageStatus(I)I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 1055
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    .line 1063
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v0, v1, :cond_1

    .line 1064
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->cancelRecording()V

    .line 1066
    :cond_1
    return-void

    .line 1056
    :cond_2
    if-eqz p1, :cond_3

    .line 1057
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    goto :goto_0

    .line 1059
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
    .line 1070
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

    .line 1072
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 1073
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->startTimer()V

    .line 1077
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->updateProgress()V

    .line 1078
    return-void

    .line 1075
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->updateRecordingTime(J)V

    goto :goto_0
.end method

.method public onShow(Lcom/sec/android/app/camera/interfaces/MenuBase;)V
    .locals 2
    .param p1, "menu"    # Lcom/sec/android/app/camera/interfaces/MenuBase;

    .prologue
    .line 1082
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1083
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCurrentOrientation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCurrentOrientation:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1084
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideIndicatorLayout()V

    .line 1087
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraSingleEffect()I

    move-result v0

    if-eqz v0, :cond_2

    .line 1088
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showEffectLayout(Z)V

    .line 1091
    :cond_2
    return-void
.end method

.method public onShutterKeyLongPressed()Z
    .locals 1

    .prologue
    .line 1095
    const/4 v0, 0x0

    return v0
.end method

.method public onShutterKeyPressed()Z
    .locals 1

    .prologue
    .line 1100
    const/4 v0, 0x0

    return v0
.end method

.method public onShutterKeyReleased(Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;)Z
    .locals 1
    .param p1, "captureMethod"    # Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;

    .prologue
    .line 1105
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleCaptureEvent(I)V
    .locals 0
    .param p1, "event"    # I

    .prologue
    .line 1111
    return-void
.end method

.method public onStopProgress(I)V
    .locals 0
    .param p1, "progress"    # I

    .prologue
    .line 1115
    return-void
.end method

.method public onStopRecordingRequested(Z)V
    .locals 2
    .param p1, "forced"    # Z

    .prologue
    .line 1119
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v1, :cond_0

    .line 1123
    :goto_0
    return-void

    .line 1122
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->cancelRecording()V

    goto :goto_0
.end method

.method public onTimerEvent(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    const/16 v3, 0x3d

    .line 1127
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

    .line 1128
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1129
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/MenuManager;->showMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    .line 1131
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    if-eqz v0, :cond_1

    .line 1132
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->updateTime(I)V

    .line 1134
    :cond_1
    if-nez p1, :cond_2

    .line 1135
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x180

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 1136
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0xc0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    .line 1138
    :cond_2
    return-void
.end method

.method public onVideoDBUpdatePreparedEvent(Landroid/content/ContentValues;)Z
    .locals 1
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 1142
    const/4 v0, 0x1

    return v0
.end method

.method public onVideoStoringCompleted()Z
    .locals 1

    .prologue
    .line 1147
    const/4 v0, 0x1

    return v0
.end method

.method public startRecording()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1152
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STARTING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->setRecordingState(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;)V

    .line 1155
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestAudioFocus()V

    .line 1156
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setShutterSound(I)V

    .line 1157
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isPlayRecordingStartSound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1158
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->RECORDING_START:Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->playCameraSound(Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;I)V

    .line 1160
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFlashMode()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 1161
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFlashAutoCallback(Z)V

    .line 1164
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getProjectType()I
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v0

    if-nez v0, :cond_2

    .line 1165
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->overrideFocusMode(I)V

    .line 1168
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->setMaxVideoFileSize()V

    .line 1169
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleSwitchToCamcorderPreview()V

    .line 1170
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->schedulePrepareVideoRecording()V

    .line 1171
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStartVideoRecording()V

    .line 1174
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isTimerCounting()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1175
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsTimerCounting:Z

    .line 1179
    :goto_0
    return-void

    .line 1177
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showRecordingLayout()V

    goto :goto_0
.end method

.method public stopRecording()V
    .locals 2

    .prologue
    .line 1183
    const-string v0, "VideoCollage"

    const-string v1, "stopRecording()"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelAutoFocus()V

    .line 1187
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STOPPING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->setRecordingState(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;)V

    .line 1188
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStopVideoRecordingAsync()V

    .line 1190
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getTotalRecordingTime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->updateRecordingTime(J)V

    .line 1191
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->resetOverriddenFocusMode()V

    .line 1192
    return-void
.end method

.method public stopRecordingForced()V
    .locals 0

    .prologue
    .line 1196
    return-void
.end method
