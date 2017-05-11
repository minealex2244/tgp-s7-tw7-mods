.class public Lcom/sec/android/app/camera/DimController;
.super Ljava/lang/Object;
.source "DimController.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/Engine$OnRequestQueueEmptyListener;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/DimController$DimArray;,
        Lcom/sec/android/app/camera/DimController$SettingValueReference;
    }
.end annotation


# static fields
.field public static final ANTI_FOG_LEVEL:I = 0x18

.field public static final CAMCORDER_ANTISHAKE:I = 0xf

.field public static final CAMCORDER_RESOLUTION:I = 0xc

.field public static final CAMERA_RESOLUTION:I = 0x6

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/android/app/camera/DimController;",
            ">;"
        }
    .end annotation
.end field

.field public static final EFFECT:I = 0x2

.field public static final EXPOSURE_VALUE:I = 0x5

.field public static final FLASH_MODE:I = 0x4

.field public static final FLIP:I = 0xe

.field public static final FLOATING_CAMERA_BUTTON:I = 0x23

.field public static final FOCUS_MODE:I = 0x22

.field public static final FRONT_FLASH_MODE:I = 0x1f

.field public static final GESTURE_CONTROL_MODE:I = 0x13

.field public static final GPS:I = 0x11

.field public static final GUIDELINE:I = 0xa

.field public static final HDR:I = 0x1

.field public static final HELP:I = 0x1c

.field public static final HRM_SHUTTER:I = 0x1e

.field public static final IMAGE_VIEWER:I = 0xb

.field public static final MANUAL_FOCUS:I = 0x15

.field public static final MOTION_PHOTO:I = 0x20

.field public static final MULTI_AF_MODE:I = 0x21

.field public static final NO_VALUE:I = -0x1

.field public static final NUM_OF_DIM_BUTTONS:I = 0x25

.field public static final OBJECT_TRACKING_AF:I = 0x14

.field public static final PICTURE_FORMAT:I = 0x19

.field public static final QRCODE_DETECTION:I = 0x1b

.field public static final REAR_LENS_DISTORTION_CORRECTION:I = 0x1a

.field public static final RESET:I = 0x16

.field public static final REVIEW:I = 0x8

.field public static final SHUTTER_SOUND:I = 0xd

.field public static final STICKER:I = 0x24

.field public static final STORAGE:I = 0x9

.field private static final TAG:Ljava/lang/String; = "DimController"

.field public static final TAP_TO_TAKE_PICTURES:I = 0x1d

.field public static final TIMER:I = 0x7

.field public static final VIEWMODE:I = 0x12

.field public static final VOICECOMMAND:I = 0x10

.field public static final VOLUME_KEY:I = 0x17

.field public static final ZOOM:I = 0x3


# instance fields
.field private KEY_RESTORE_MENUID:Ljava/lang/String;

.field private KEY_RESTORE_REFCOUNT:Ljava/lang/String;

.field private KEY_RESTORE_SAVED_VALUE:Ljava/lang/String;

.field private KEY_RESTORE_SIZE:Ljava/lang/String;

.field private mButtonList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/glview/GLView;",
            ">;"
        }
    .end annotation
.end field

.field private mCameraContext:Lcom/sec/android/app/camera/Camera;

.field private mCurrentDimArray:[Z

.field private mDimArrayList:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/camera/DimController$DimArray;",
            ">;"
        }
    .end annotation
.end field

.field public mEnabledSettingList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIsNeedSynchronizeDim:Z

.field private mUserSettingValueList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/android/app/camera/DimController$SettingValueReference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    new-instance v0, Lcom/sec/android/app/camera/DimController$1;

    invoke-direct {v0}, Lcom/sec/android/app/camera/DimController$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/DimController;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Lcom/sec/android/app/camera/Camera;)V
    .locals 1
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/Camera;

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/DimController;->mEnabledSettingList:Ljava/util/ArrayList;

    .line 95
    const-string v0, "pref_force_restore_size"

    iput-object v0, p0, Lcom/sec/android/app/camera/DimController;->KEY_RESTORE_SIZE:Ljava/lang/String;

    .line 96
    const-string v0, "pref_force_restore_menuid"

    iput-object v0, p0, Lcom/sec/android/app/camera/DimController;->KEY_RESTORE_MENUID:Ljava/lang/String;

    .line 97
    const-string v0, "pref_force_restore_refcount"

    iput-object v0, p0, Lcom/sec/android/app/camera/DimController;->KEY_RESTORE_REFCOUNT:Ljava/lang/String;

    .line 98
    const-string v0, "pref_force_restore_saved_value"

    iput-object v0, p0, Lcom/sec/android/app/camera/DimController;->KEY_RESTORE_SAVED_VALUE:Ljava/lang/String;

    .line 100
    const/16 v0, 0x25

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/sec/android/app/camera/DimController;->mCurrentDimArray:[Z

    .line 101
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/DimController;->mUserSettingValueList:Landroid/util/SparseArray;

    .line 102
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/DimController;->mDimArrayList:Ljava/util/concurrent/ConcurrentHashMap;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/DimController;->mButtonList:Ljava/util/ArrayList;

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/DimController;->mIsNeedSynchronizeDim:Z

    .line 109
    iput-object p1, p0, Lcom/sec/android/app/camera/DimController;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    .line 110
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/DimController;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/DimController;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/DimController;->restoreSettings(IZ)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/DimController;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/DimController;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sec/android/app/camera/DimController;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/DimController;II)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/DimController;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/DimController;->saveSetting(II)Z

    move-result v0

    return v0
.end method

.method private getSavedSettingValue(I)I
    .locals 3
    .param p1, "menuid"    # I

    .prologue
    .line 851
    iget-object v2, p0, Lcom/sec/android/app/camera/DimController;->mUserSettingValueList:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/DimController$SettingValueReference;

    .line 853
    .local v0, "dimReference":Lcom/sec/android/app/camera/DimController$SettingValueReference;
    if-eqz v0, :cond_1

    .line 854
    invoke-virtual {v0}, Lcom/sec/android/app/camera/DimController$SettingValueReference;->getReferenceCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 855
    invoke-virtual {v0}, Lcom/sec/android/app/camera/DimController$SettingValueReference;->getSettingsValue()I

    move-result v1

    .line 856
    .local v1, "settingValue":I
    iget-object v2, p0, Lcom/sec/android/app/camera/DimController;->mUserSettingValueList:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 862
    .end local v1    # "settingValue":I
    :goto_0
    return v1

    .line 859
    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/camera/DimController$SettingValueReference;->decreaseReferenceCount()V

    .line 862
    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private getkeyFromCommandId(I)I
    .locals 1
    .param p1, "commandId"    # I

    .prologue
    .line 866
    const/4 v0, -0x1

    .line 868
    .local v0, "key":I
    sparse-switch p1, :sswitch_data_0

    .line 964
    :goto_0
    return v0

    .line 870
    :sswitch_0
    const/4 v0, 0x4

    .line 871
    goto :goto_0

    .line 873
    :sswitch_1
    const/16 v0, 0x1f

    .line 874
    goto :goto_0

    .line 876
    :sswitch_2
    const/4 v0, 0x6

    .line 877
    goto :goto_0

    .line 879
    :sswitch_3
    const/4 v0, 0x7

    .line 880
    goto :goto_0

    .line 882
    :sswitch_4
    const/16 v0, 0x8

    .line 883
    goto :goto_0

    .line 885
    :sswitch_5
    const/4 v0, 0x5

    .line 886
    goto :goto_0

    .line 889
    :sswitch_6
    const/4 v0, 0x2

    .line 890
    goto :goto_0

    .line 892
    :sswitch_7
    const/16 v0, 0x15

    .line 893
    goto :goto_0

    .line 895
    :sswitch_8
    const/4 v0, 0x1

    .line 896
    goto :goto_0

    .line 898
    :sswitch_9
    const/4 v0, 0x3

    .line 899
    goto :goto_0

    .line 901
    :sswitch_a
    const/16 v0, 0x18

    .line 902
    goto :goto_0

    .line 904
    :sswitch_b
    const/16 v0, 0xa

    .line 905
    goto :goto_0

    .line 907
    :sswitch_c
    const/16 v0, 0x14

    .line 908
    goto :goto_0

    .line 910
    :sswitch_d
    const/16 v0, 0x9

    .line 911
    goto :goto_0

    .line 913
    :sswitch_e
    const/16 v0, 0xb

    .line 914
    goto :goto_0

    .line 916
    :sswitch_f
    const/16 v0, 0xc

    .line 917
    goto :goto_0

    .line 919
    :sswitch_10
    const/16 v0, 0xf

    .line 920
    goto :goto_0

    .line 922
    :sswitch_11
    const/16 v0, 0xe

    .line 923
    goto :goto_0

    .line 925
    :sswitch_12
    const/16 v0, 0x10

    .line 926
    goto :goto_0

    .line 928
    :sswitch_13
    const/16 v0, 0xd

    .line 929
    goto :goto_0

    .line 931
    :sswitch_14
    const/16 v0, 0x11

    .line 932
    goto :goto_0

    .line 934
    :sswitch_15
    const/16 v0, 0x12

    .line 935
    goto :goto_0

    .line 937
    :sswitch_16
    const/16 v0, 0x13

    .line 938
    goto :goto_0

    .line 940
    :sswitch_17
    const/16 v0, 0x17

    .line 941
    goto :goto_0

    .line 943
    :sswitch_18
    const/16 v0, 0x19

    .line 944
    goto :goto_0

    .line 946
    :sswitch_19
    const/16 v0, 0x20

    .line 947
    goto :goto_0

    .line 949
    :sswitch_1a
    const/16 v0, 0x21

    .line 950
    goto :goto_0

    .line 952
    :sswitch_1b
    const/16 v0, 0x1a

    .line 953
    goto :goto_0

    .line 955
    :sswitch_1c
    const/16 v0, 0x22

    .line 956
    goto :goto_0

    .line 958
    :sswitch_1d
    const/16 v0, 0x23

    .line 959
    goto :goto_0

    .line 868
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_2
        0x5 -> :sswitch_1c
        0x6 -> :sswitch_3
        0x7 -> :sswitch_5
        0x8 -> :sswitch_6
        0xc -> :sswitch_8
        0x11 -> :sswitch_4
        0x12 -> :sswitch_9
        0x13 -> :sswitch_b
        0x14 -> :sswitch_14
        0x15 -> :sswitch_13
        0x16 -> :sswitch_d
        0x17 -> :sswitch_15
        0x18 -> :sswitch_c
        0x1d -> :sswitch_e
        0x1e -> :sswitch_19
        0x33 -> :sswitch_11
        0x47 -> :sswitch_12
        0x48 -> :sswitch_17
        0x51 -> :sswitch_7
        0x54 -> :sswitch_16
        0x75 -> :sswitch_a
        0x7f -> :sswitch_6
        0x86 -> :sswitch_18
        0x91 -> :sswitch_1a
        0x92 -> :sswitch_1b
        0xaa -> :sswitch_1
        0xb0 -> :sswitch_1d
        0xbb9 -> :sswitch_f
        0xbbf -> :sswitch_10
    .end sparse-switch
.end method

.method private merge([Z)V
    .locals 3
    .param p1, "array"    # [Z

    .prologue
    .line 968
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x25

    if-ge v0, v1, :cond_2

    .line 969
    iget-object v2, p0, Lcom/sec/android/app/camera/DimController;->mCurrentDimArray:[Z

    iget-object v1, p0, Lcom/sec/android/app/camera/DimController;->mCurrentDimArray:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_0

    aget-boolean v1, p1, v0

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_1
    aput-boolean v1, v2, v0

    .line 968
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 969
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 971
    :cond_2
    return-void
.end method

.method private restoreSettings(IZ)V
    .locals 5
    .param p1, "key"    # I
    .param p2, "forced"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 981
    iget-object v2, p0, Lcom/sec/android/app/camera/DimController;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    .line 983
    .local v0, "cs":Lcom/sec/android/app/camera/interfaces/CameraSettings;
    packed-switch p1, :pswitch_data_0

    .line 1187
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 985
    :pswitch_1
    const/16 v2, 0xc

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->getSavedSettingValue(I)I

    move-result v1

    .line 986
    .local v1, "savedValue":I
    if-eq v1, v4, :cond_0

    .line 987
    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraHDR(I)V

    goto :goto_0

    .line 990
    .end local v1    # "savedValue":I
    :pswitch_2
    const/16 v2, 0xbbf

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->getSavedSettingValue(I)I

    move-result v1

    .line 991
    .restart local v1    # "savedValue":I
    if-eq v1, v4, :cond_0

    .line 992
    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCamcorderAntiShake(I)V

    goto :goto_0

    .line 995
    .end local v1    # "savedValue":I
    :pswitch_3
    const/16 v2, 0x75

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->getSavedSettingValue(I)I

    move-result v1

    .line 996
    .restart local v1    # "savedValue":I
    if-eq v1, v4, :cond_0

    .line 997
    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setAntiFogLevel(I)V

    goto :goto_0

    .line 1001
    .end local v1    # "savedValue":I
    :pswitch_4
    const/16 v2, 0x8

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->getSavedSettingValue(I)I

    move-result v1

    .line 1002
    .restart local v1    # "savedValue":I
    if-eq v1, v4, :cond_0

    .line 1003
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getWhiteBalance()I

    move-result v2

    if-nez v2, :cond_1

    .line 1004
    invoke-interface {v0, v1, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraEffect(IZ)V

    goto :goto_0

    .line 1006
    :cond_1
    invoke-interface {v0, v3, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraEffect(IZ)V

    goto :goto_0

    .line 1010
    .end local v1    # "savedValue":I
    :pswitch_5
    const/16 v2, 0x12

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->getSavedSettingValue(I)I

    move-result v1

    .line 1011
    .restart local v1    # "savedValue":I
    if-eq v1, v4, :cond_0

    .line 1012
    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setZoomValue(I)V

    goto :goto_0

    .line 1015
    .end local v1    # "savedValue":I
    :pswitch_6
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->getSavedSettingValue(I)I

    move-result v1

    .line 1016
    .restart local v1    # "savedValue":I
    if-eq v1, v4, :cond_0

    .line 1017
    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFlashMode(I)V

    goto :goto_0

    .line 1021
    .end local v1    # "savedValue":I
    :pswitch_7
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_FRONT_FLASH:Z

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SCREEN_FLASH_VI:Z

    if-eqz v2, :cond_0

    .line 1022
    const/16 v2, 0xaa

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->getSavedSettingValue(I)I

    move-result v1

    .line 1023
    .restart local v1    # "savedValue":I
    if-eq v1, v4, :cond_0

    .line 1024
    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFrontFlashMode(I)V

    goto :goto_0

    .line 1029
    .end local v1    # "savedValue":I
    :pswitch_8
    const/4 v2, 0x7

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->getSavedSettingValue(I)I

    move-result v1

    .line 1030
    .restart local v1    # "savedValue":I
    if-eq v1, v4, :cond_0

    .line 1031
    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setExposureValue(I)V

    goto :goto_0

    .line 1034
    .end local v1    # "savedValue":I
    :pswitch_9
    if-nez p2, :cond_0

    .line 1035
    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->getSavedSettingValue(I)I

    move-result v1

    .line 1036
    .restart local v1    # "savedValue":I
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isDualBackCamera()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1037
    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSupportedBackCameraResolutionFeature(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1038
    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraResolution(I)Z

    goto/16 :goto_0

    .line 1040
    :cond_2
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isDualFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1041
    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSupportedFrontCameraResolutionFeature(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1042
    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraResolution(I)Z

    goto/16 :goto_0

    .line 1045
    :cond_3
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1046
    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSupportedBackCameraResolutionFeature(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1047
    if-eq v1, v4, :cond_0

    .line 1048
    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraResolution(I)Z

    goto/16 :goto_0

    .line 1051
    :cond_4
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1052
    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSupportedFrontCameraResolutionFeature(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1053
    if-eq v1, v4, :cond_0

    .line 1054
    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraResolution(I)Z

    goto/16 :goto_0

    .line 1061
    .end local v1    # "savedValue":I
    :pswitch_a
    const/4 v2, 0x6

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->getSavedSettingValue(I)I

    move-result v1

    .line 1062
    .restart local v1    # "savedValue":I
    if-eq v1, v4, :cond_0

    .line 1063
    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setTimer(I)V

    goto/16 :goto_0

    .line 1066
    .end local v1    # "savedValue":I
    :pswitch_b
    const/16 v2, 0x11

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->getSavedSettingValue(I)I

    move-result v1

    .line 1067
    .restart local v1    # "savedValue":I
    if-eq v1, v4, :cond_0

    .line 1068
    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setReview(I)V

    goto/16 :goto_0

    .line 1071
    .end local v1    # "savedValue":I
    :pswitch_c
    const/16 v2, 0x16

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->getSavedSettingValue(I)I

    move-result v1

    .line 1072
    .restart local v1    # "savedValue":I
    if-eq v1, v4, :cond_0

    .line 1073
    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setStorage(I)V

    goto/16 :goto_0

    .line 1076
    .end local v1    # "savedValue":I
    :pswitch_d
    const/16 v2, 0xbb9

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->getSavedSettingValue(I)I

    move-result v1

    .line 1077
    .restart local v1    # "savedValue":I
    if-eq v1, v4, :cond_0

    .line 1078
    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCamcorderResolution(I)Z

    goto/16 :goto_0

    .line 1082
    .end local v1    # "savedValue":I
    :pswitch_e
    const/16 v2, 0x15

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->getSavedSettingValue(I)I

    move-result v1

    .line 1083
    .restart local v1    # "savedValue":I
    if-eq v1, v4, :cond_0

    .line 1084
    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraShutterSound(I)V

    goto/16 :goto_0

    .line 1087
    .end local v1    # "savedValue":I
    :pswitch_f
    const/16 v2, 0x26

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->getSavedSettingValue(I)I

    move-result v1

    .line 1088
    .restart local v1    # "savedValue":I
    if-eq v1, v4, :cond_0

    .line 1089
    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setSelfFlip(I)V

    goto/16 :goto_0

    .line 1092
    .end local v1    # "savedValue":I
    :pswitch_10
    const/16 v2, 0x47

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->getSavedSettingValue(I)I

    move-result v1

    .line 1093
    .restart local v1    # "savedValue":I
    const-string v2, "DimController"

    const-string v3, "Voice Command"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    if-eq v1, v4, :cond_0

    .line 1095
    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraVoiceCommand(I)V

    goto/16 :goto_0

    .line 1098
    .end local v1    # "savedValue":I
    :pswitch_11
    const/16 v2, 0x13

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->getSavedSettingValue(I)I

    move-result v1

    .line 1099
    .restart local v1    # "savedValue":I
    if-eq v1, v4, :cond_0

    .line 1100
    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setGuideline(I)V

    goto/16 :goto_0

    .line 1103
    .end local v1    # "savedValue":I
    :pswitch_12
    const/16 v2, 0x17

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->getSavedSettingValue(I)I

    move-result v1

    .line 1104
    .restart local v1    # "savedValue":I
    if-eq v1, v4, :cond_0

    .line 1105
    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setObjectTrackingAF(I)V

    goto/16 :goto_0

    .line 1108
    .end local v1    # "savedValue":I
    :pswitch_13
    const/16 v2, 0x14

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->getSavedSettingValue(I)I

    move-result v1

    .line 1109
    .restart local v1    # "savedValue":I
    if-eq v1, v4, :cond_0

    .line 1110
    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setGPS(I)V

    goto/16 :goto_0

    .line 1113
    .end local v1    # "savedValue":I
    :pswitch_14
    const/16 v2, 0x138

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->getSavedSettingValue(I)I

    move-result v1

    .line 1114
    .restart local v1    # "savedValue":I
    if-eq v1, v4, :cond_0

    .line 1115
    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setViewMode(I)V

    goto/16 :goto_0

    .line 1119
    .end local v1    # "savedValue":I
    :pswitch_15
    const/16 v2, 0x7d

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->getSavedSettingValue(I)I

    move-result v1

    .line 1120
    .restart local v1    # "savedValue":I
    if-eq v1, v4, :cond_0

    .line 1121
    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setGestureControlMode(I)V

    goto/16 :goto_0

    .line 1125
    .end local v1    # "savedValue":I
    :pswitch_16
    const/16 v2, 0x49

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->getSavedSettingValue(I)I

    move-result v1

    .line 1126
    .restart local v1    # "savedValue":I
    if-eq v1, v4, :cond_0

    .line 1127
    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setVolumeKeyAs(I)V

    goto/16 :goto_0

    .line 1130
    .end local v1    # "savedValue":I
    :pswitch_17
    const/16 v2, 0x13b

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->getSavedSettingValue(I)I

    move-result v1

    .line 1131
    .restart local v1    # "savedValue":I
    if-eq v1, v4, :cond_0

    .line 1132
    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setPictureFormat(I)V

    goto/16 :goto_0

    .line 1135
    .end local v1    # "savedValue":I
    :pswitch_18
    const/16 v2, 0x13c

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->getSavedSettingValue(I)I

    move-result v1

    .line 1136
    .restart local v1    # "savedValue":I
    if-eq v1, v4, :cond_0

    .line 1137
    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setQRCodeDetection(I)V

    goto/16 :goto_0

    .line 1140
    .end local v1    # "savedValue":I
    :pswitch_19
    const/16 v2, 0x73

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->getSavedSettingValue(I)I

    move-result v1

    .line 1141
    .restart local v1    # "savedValue":I
    if-eq v1, v4, :cond_0

    .line 1142
    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setTapToTakePictures(I)V

    goto/16 :goto_0

    .line 1146
    .end local v1    # "savedValue":I
    :pswitch_1a
    const/16 v2, 0x74

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->getSavedSettingValue(I)I

    move-result v1

    .line 1147
    .restart local v1    # "savedValue":I
    if-eq v1, v4, :cond_0

    .line 1148
    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setHRMShutter(I)V

    goto/16 :goto_0

    .line 1152
    .end local v1    # "savedValue":I
    :pswitch_1b
    const/16 v2, 0x2a

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->getSavedSettingValue(I)I

    move-result v1

    .line 1153
    .restart local v1    # "savedValue":I
    if-eq v1, v4, :cond_0

    .line 1154
    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setMotionPhoto(I)V

    goto/16 :goto_0

    .line 1157
    .end local v1    # "savedValue":I
    :pswitch_1c
    const/16 v2, 0x91

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->getSavedSettingValue(I)I

    move-result v1

    .line 1158
    .restart local v1    # "savedValue":I
    if-eq v1, v4, :cond_0

    .line 1159
    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setMultiAFMode(I)V

    goto/16 :goto_0

    .line 1163
    .end local v1    # "savedValue":I
    :pswitch_1d
    const/16 v2, 0x33

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->getSavedSettingValue(I)I

    move-result v1

    .line 1164
    .restart local v1    # "savedValue":I
    if-eq v1, v4, :cond_0

    .line 1165
    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setRearLensDistortionCorrection(I)V

    goto/16 :goto_0

    .line 1169
    .end local v1    # "savedValue":I
    :pswitch_1e
    const/4 v2, 0x5

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->getSavedSettingValue(I)I

    move-result v1

    .line 1170
    .restart local v1    # "savedValue":I
    if-eq v1, v4, :cond_0

    .line 1171
    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFocusMode(I)V

    goto/16 :goto_0

    .line 1175
    .end local v1    # "savedValue":I
    :pswitch_1f
    const/16 v2, 0xb5

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->getSavedSettingValue(I)I

    move-result v1

    .line 1176
    .restart local v1    # "savedValue":I
    if-eq v1, v4, :cond_0

    .line 1177
    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFloatingCameraButton(I)V

    goto/16 :goto_0

    .line 1180
    .end local v1    # "savedValue":I
    :pswitch_20
    const/16 v2, 0xbe

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->getSavedSettingValue(I)I

    move-result v1

    .line 1181
    .restart local v1    # "savedValue":I
    if-eq v1, v4, :cond_0

    .line 1182
    const/16 v2, 0x2710

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setStickerId(I)V

    goto/16 :goto_0

    .line 983
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_11
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_2
        :pswitch_10
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_12
        :pswitch_0
        :pswitch_0
        :pswitch_16
        :pswitch_3
        :pswitch_17
        :pswitch_1d
        :pswitch_18
        :pswitch_0
        :pswitch_19
        :pswitch_1a
        :pswitch_7
        :pswitch_1b
        :pswitch_1c
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
    .end packed-switch
.end method

.method private saveSetting(II)Z
    .locals 3
    .param p1, "menuid"    # I
    .param p2, "value"    # I

    .prologue
    .line 1193
    iget-object v1, p0, Lcom/sec/android/app/camera/DimController;->mUserSettingValueList:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/DimController$SettingValueReference;

    .line 1194
    .local v0, "dimReference":Lcom/sec/android/app/camera/DimController$SettingValueReference;
    if-nez v0, :cond_0

    .line 1195
    iget-object v1, p0, Lcom/sec/android/app/camera/DimController;->mUserSettingValueList:Landroid/util/SparseArray;

    new-instance v2, Lcom/sec/android/app/camera/DimController$SettingValueReference;

    invoke-direct {v2, p2}, Lcom/sec/android/app/camera/DimController$SettingValueReference;-><init>(I)V

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1196
    const/4 v1, 0x1

    .line 1199
    :goto_0
    return v1

    .line 1198
    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/camera/DimController$SettingValueReference;->increaseReferenceCount()V

    .line 1199
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private varargs setSettingDefault([I)V
    .locals 7
    .param p1, "indices"    # [I

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 1205
    iget-object v2, p0, Lcom/sec/android/app/camera/DimController;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    .line 1206
    .local v0, "cs":Lcom/sec/android/app/camera/interfaces/CameraSettings;
    if-nez v0, :cond_1

    .line 1319
    :cond_0
    return-void

    .line 1209
    :cond_1
    array-length v4, p1

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget v1, p1, v2

    .line 1210
    .local v1, "index":I
    packed-switch v1, :pswitch_data_0

    .line 1209
    :cond_2
    :goto_1
    :pswitch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1212
    :pswitch_1
    sget-boolean v5, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_FLASH:Z

    if-eqz v5, :cond_2

    .line 1213
    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFlashMode(I)V

    goto :goto_1

    .line 1217
    :pswitch_2
    sget-boolean v5, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_FRONT_FLASH:Z

    if-nez v5, :cond_3

    sget-boolean v5, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SCREEN_FLASH_VI:Z

    if-eqz v5, :cond_2

    .line 1218
    :cond_3
    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFrontFlashMode(I)V

    goto :goto_1

    .line 1222
    :pswitch_3
    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraHDR(I)V

    goto :goto_1

    .line 1225
    :pswitch_4
    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setExposureValue(I)V

    goto :goto_1

    .line 1228
    :pswitch_5
    invoke-interface {v0, v3, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraEffect(IZ)V

    goto :goto_1

    .line 1231
    :pswitch_6
    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setTimer(I)V

    goto :goto_1

    .line 1234
    :pswitch_7
    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCamcorderAntiShake(I)V

    goto :goto_1

    .line 1237
    :pswitch_8
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v5

    if-ne v5, v6, :cond_2

    .line 1238
    sget v5, Lcom/sec/android/app/camera/interfaces/CameraSettings;->DEFAULT_SELF_FLIP:I

    invoke-interface {v0, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setSelfFlip(I)V

    goto :goto_1

    .line 1242
    :pswitch_9
    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraVoiceCommand(I)V

    goto :goto_1

    .line 1245
    :pswitch_a
    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setGPS(I)V

    goto :goto_1

    .line 1248
    :pswitch_b
    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setZoomValue(I)V

    goto :goto_1

    .line 1251
    :pswitch_c
    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setGuideline(I)V

    goto :goto_1

    .line 1254
    :pswitch_d
    invoke-interface {v0, v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraShutterSound(I)V

    goto :goto_1

    .line 1257
    :pswitch_e
    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setStorage(I)V

    goto :goto_1

    .line 1260
    :pswitch_f
    sget v5, Lcom/sec/android/app/camera/interfaces/CameraSettings;->DEFAULT_VIEW_MODE:I

    invoke-interface {v0, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setViewMode(I)V

    goto :goto_1

    .line 1263
    :pswitch_10
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v5

    if-ne v5, v6, :cond_2

    .line 1264
    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setGestureControlMode(I)V

    goto :goto_1

    .line 1268
    :pswitch_11
    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setAntiFogLevel(I)V

    goto :goto_1

    .line 1271
    :pswitch_12
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v5

    if-nez v5, :cond_2

    .line 1272
    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setObjectTrackingAF(I)V

    goto :goto_1

    .line 1276
    :pswitch_13
    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setReview(I)V

    goto :goto_1

    .line 1279
    :pswitch_14
    sget v5, Lcom/sec/android/app/camera/interfaces/CameraSettings;->DEFAULT_VOLUME_KEY_AS:I

    invoke-interface {v0, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setVolumeKeyAs(I)V

    goto :goto_1

    .line 1282
    :pswitch_15
    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setPictureFormat(I)V

    goto :goto_1

    .line 1285
    :pswitch_16
    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setQRCodeDetection(I)V

    goto :goto_1

    .line 1288
    :pswitch_17
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v5

    if-ne v5, v6, :cond_2

    .line 1289
    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setTapToTakePictures(I)V

    goto/16 :goto_1

    .line 1293
    :pswitch_18
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v5

    if-ne v5, v6, :cond_2

    .line 1294
    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setHRMShutter(I)V

    goto/16 :goto_1

    .line 1298
    :pswitch_19
    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setMotionPhoto(I)V

    goto/16 :goto_1

    .line 1301
    :pswitch_1a
    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setMultiAFMode(I)V

    goto/16 :goto_1

    .line 1304
    :pswitch_1b
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v5

    if-nez v5, :cond_2

    .line 1305
    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setRearLensDistortionCorrection(I)V

    goto/16 :goto_1

    .line 1309
    :pswitch_1c
    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFloatingCameraButton(I)V

    goto/16 :goto_1

    .line 1312
    :pswitch_1d
    const/16 v5, 0x2710

    invoke-interface {v0, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setStickerId(I)V

    goto/16 :goto_1

    .line 1210
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_5
        :pswitch_b
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_13
        :pswitch_e
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_8
        :pswitch_7
        :pswitch_9
        :pswitch_a
        :pswitch_f
        :pswitch_10
        :pswitch_12
        :pswitch_0
        :pswitch_0
        :pswitch_14
        :pswitch_11
        :pswitch_15
        :pswitch_1b
        :pswitch_16
        :pswitch_0
        :pswitch_17
        :pswitch_18
        :pswitch_2
        :pswitch_19
        :pswitch_1a
        :pswitch_0
        :pswitch_1c
        :pswitch_1d
    .end packed-switch
.end method

.method private updateButtonDimState()V
    .locals 4

    .prologue
    .line 1322
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x25

    if-ge v1, v2, :cond_0

    .line 1323
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/DimController;->setDim(IZ)V

    .line 1322
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1326
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/DimController;->mDimArrayList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/DimController$DimArray;

    .line 1327
    .local v0, "dimArray":Lcom/sec/android/app/camera/DimController$DimArray;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/DimController$DimArray;->getArray()[Z

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/DimController;->merge([Z)V

    goto :goto_1

    .line 1330
    .end local v0    # "dimArray":Lcom/sec/android/app/camera/DimController$DimArray;
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/app/camera/DimController;->mIsNeedSynchronizeDim:Z

    .line 1332
    iget-object v2, p0, Lcom/sec/android/app/camera/DimController;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v2

    if-nez v2, :cond_3

    .line 1339
    :cond_2
    :goto_2
    return-void

    .line 1336
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/DimController;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->isEmptyRequestQueue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1337
    invoke-virtual {p0}, Lcom/sec/android/app/camera/DimController;->synchronizeDim()V

    goto :goto_2
.end method


# virtual methods
.method public declared-synchronized addButton(Lcom/samsung/android/glview/GLView;)V
    .locals 3
    .param p1, "button"    # Lcom/samsung/android/glview/GLView;

    .prologue
    const/4 v2, -0x1

    .line 113
    monitor-enter p0

    :try_start_0
    instance-of v1, p1, Lcom/sec/android/app/camera/widget/gl/Item;

    if-eqz v1, :cond_1

    .line 114
    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/camera/widget/gl/Item;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/Item;->getCommandId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/DimController;->getkeyFromCommandId(I)I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 115
    iget-object v1, p0, Lcom/sec/android/app/camera/DimController;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 118
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getTag()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/DimController;->getkeyFromCommandId(I)I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 119
    iget-object v1, p0, Lcom/sec/android/app/camera/DimController;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 113
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 125
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/DimController;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 126
    iget-object v0, p0, Lcom/sec/android/app/camera/DimController;->mDimArrayList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    monitor-exit p0

    return-void

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x0

    return v0
.end method

.method protected forceRestoreSetting(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    .line 820
    invoke-virtual {p0}, Lcom/sec/android/app/camera/DimController;->resetDim()V

    .line 821
    iget-object v5, p0, Lcom/sec/android/app/camera/DimController;->mUserSettingValueList:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V

    .line 822
    iget-object v5, p0, Lcom/sec/android/app/camera/DimController;->mDimArrayList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 823
    iget-object v5, p0, Lcom/sec/android/app/camera/DimController;->KEY_RESTORE_SIZE:Ljava/lang/String;

    invoke-static {p1, v5, v8}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    .line 824
    .local v4, "size":I
    if-lez v4, :cond_0

    .line 825
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 826
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/sec/android/app/camera/DimController;->KEY_RESTORE_MENUID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x63

    invoke-static {p1, v5, v6}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 827
    .local v1, "menuId":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/sec/android/app/camera/DimController;->KEY_RESTORE_REFCOUNT:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5, v8}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 828
    .local v2, "refCount":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/sec/android/app/camera/DimController;->KEY_RESTORE_SAVED_VALUE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5, v8}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    .line 829
    .local v3, "saveSetting":I
    const-string v5, "DimController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadDim ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] / menuid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / refCount "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / savedSetting "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    iget-object v5, p0, Lcom/sec/android/app/camera/DimController;->mUserSettingValueList:Landroid/util/SparseArray;

    new-instance v6, Lcom/sec/android/app/camera/DimController$SettingValueReference;

    invoke-direct {v6, v3, v2}, Lcom/sec/android/app/camera/DimController$SettingValueReference;-><init>(II)V

    invoke-virtual {v5, v1, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 832
    invoke-static {v1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(I)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/DimController;->getkeyFromCommandId(I)I

    move-result v5

    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Lcom/sec/android/app/camera/DimController;->restoreSettings(IZ)V

    .line 825
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 836
    .end local v0    # "i":I
    .end local v1    # "menuId":I
    .end local v2    # "refCount":I
    .end local v3    # "saveSetting":I
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/DimController;->resetDim()V

    .line 837
    return-void
.end method

.method public getDimArray([Z)V
    .locals 3
    .param p1, "dimArray"    # [Z

    .prologue
    const/4 v2, 0x0

    .line 135
    iget-object v0, p0, Lcom/sec/android/app/camera/DimController;->mCurrentDimArray:[Z

    const/16 v1, 0x25

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 136
    return-void
.end method

.method public getEnabledSettingList()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    iget-object v1, p0, Lcom/sec/android/app/camera/DimController;->mEnabledSettingList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 140
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x25

    if-ge v0, v1, :cond_1

    .line 141
    iget-object v1, p0, Lcom/sec/android/app/camera/DimController;->mCurrentDimArray:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_0

    .line 142
    iget-object v1, p0, Lcom/sec/android/app/camera/DimController;->mEnabledSettingList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 145
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/DimController;->mEnabledSettingList:Ljava/util/ArrayList;

    return-object v1
.end method

.method public declared-synchronized isSettingDisalbed(I)Z
    .locals 1
    .param p1, "dimKey"    # I

    .prologue
    .line 149
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/DimController;->mCurrentDimArray:[Z

    aget-boolean v0, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onEmpty()V
    .locals 0

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/sec/android/app/camera/DimController;->synchronizeDim()V

    .line 155
    return-void
.end method

.method public declared-synchronized removeButton(Lcom/samsung/android/glview/GLView;)V
    .locals 1
    .param p1, "button"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 158
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/DimController;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    monitor-exit p0

    return-void

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected resetDim()V
    .locals 2

    .prologue
    .line 840
    iget-object v1, p0, Lcom/sec/android/app/camera/DimController;->mDimArrayList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 841
    iget-object v1, p0, Lcom/sec/android/app/camera/DimController;->mUserSettingValueList:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 843
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x25

    if-ge v0, v1, :cond_0

    .line 844
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/DimController;->setDim(IZ)V

    .line 843
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 846
    :cond_0
    return-void
.end method

.method public restoreUserSettingValues()V
    .locals 4

    .prologue
    .line 162
    iget-object v1, p0, Lcom/sec/android/app/camera/DimController;->mDimArrayList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/DimController$DimArray;

    .line 163
    .local v0, "dimArray":Lcom/sec/android/app/camera/DimController$DimArray;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/DimController$DimArray;->restoreUserSettingValues()V

    goto :goto_0

    .line 165
    .end local v0    # "dimArray":Lcom/sec/android/app/camera/DimController$DimArray;
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/DimController;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->isDestroying()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 166
    iget-object v1, p0, Lcom/sec/android/app/camera/DimController;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    const-string v2, "pref_camera_force_restore"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 168
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/DimController;->mDimArrayList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 169
    return-void
.end method

.method public saveDim(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 177
    iget-object v3, p0, Lcom/sec/android/app/camera/DimController;->KEY_RESTORE_SIZE:Ljava/lang/String;

    invoke-static {p1, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->contains(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 178
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/camera/DimController;->KEY_RESTORE_SIZE:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1, v3, v4}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 179
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/android/app/camera/DimController;->KEY_RESTORE_MENUID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->removePreferences(Landroid/content/Context;Ljava/lang/String;)V

    .line 180
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/android/app/camera/DimController;->KEY_RESTORE_REFCOUNT:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->removePreferences(Landroid/content/Context;Ljava/lang/String;)V

    .line 181
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/android/app/camera/DimController;->KEY_RESTORE_SAVED_VALUE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->removePreferences(Landroid/content/Context;Ljava/lang/String;)V

    .line 178
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 183
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/camera/DimController;->KEY_RESTORE_SIZE:Ljava/lang/String;

    invoke-static {p1, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->removePreferences(Landroid/content/Context;Ljava/lang/String;)V

    .line 185
    .end local v1    # "i":I
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/camera/DimController;->mUserSettingValueList:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-eqz v3, :cond_3

    .line 186
    iget-object v3, p0, Lcom/sec/android/app/camera/DimController;->KEY_RESTORE_SIZE:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/app/camera/DimController;->mUserSettingValueList:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    invoke-static {p1, v3, v4}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 189
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/camera/DimController;->mUserSettingValueList:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 190
    iget-object v3, p0, Lcom/sec/android/app/camera/DimController;->mUserSettingValueList:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 191
    .local v2, "menuId":I
    iget-object v3, p0, Lcom/sec/android/app/camera/DimController;->mUserSettingValueList:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/DimController$SettingValueReference;

    .line 192
    .local v0, "dimReference":Lcom/sec/android/app/camera/DimController$SettingValueReference;
    if-eqz v0, :cond_2

    .line 193
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/android/app/camera/DimController;->KEY_RESTORE_MENUID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 194
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/android/app/camera/DimController;->KEY_RESTORE_REFCOUNT:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/android/app/camera/DimController$SettingValueReference;->getReferenceCount()I

    move-result v4

    invoke-static {p1, v3, v4}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 195
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/android/app/camera/DimController;->KEY_RESTORE_SAVED_VALUE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/android/app/camera/DimController$SettingValueReference;->getSettingsValue()I

    move-result v4

    invoke-static {p1, v3, v4}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 196
    const-string v3, "DimController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "saveDim ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] / menuid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / refCount "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sec/android/app/camera/DimController$SettingValueReference;->getReferenceCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / savedSetting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sec/android/app/camera/DimController$SettingValueReference;->getSettingsValue()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 200
    .end local v0    # "dimReference":Lcom/sec/android/app/camera/DimController$SettingValueReference;
    .end local v1    # "i":I
    .end local v2    # "menuId":I
    :cond_3
    return-void
.end method

.method public declared-synchronized setButtonDim(II)V
    .locals 7
    .param p1, "menuId"    # I
    .param p2, "modeId"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 203
    monitor-enter p0

    :try_start_0
    const-string v2, "DimController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setButtonDim : menuid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " modeid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v2, p0, Lcom/sec/android/app/camera/DimController;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 206
    .local v0, "cs":Lcom/sec/android/app/camera/interfaces/CameraSettings;
    if-nez v0, :cond_0

    .line 776
    :goto_0
    monitor-exit p0

    return-void

    .line 210
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/sec/android/app/camera/DimController;->mDimArrayList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/DimController$DimArray;

    .line 212
    .local v1, "dimArray":Lcom/sec/android/app/camera/DimController$DimArray;
    if-eqz v1, :cond_1

    .line 213
    invoke-virtual {v1}, Lcom/sec/android/app/camera/DimController$DimArray;->restoreUserSettingValues()V

    .line 214
    iget-object v2, p0, Lcom/sec/android/app/camera/DimController;->mDimArrayList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/DimController$DimArray;->getMenuId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    :cond_1
    new-instance v1, Lcom/sec/android/app/camera/DimController$DimArray;

    .end local v1    # "dimArray":Lcom/sec/android/app/camera/DimController$DimArray;
    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/camera/DimController$DimArray;-><init>(Lcom/sec/android/app/camera/DimController;I)V

    .line 218
    .restart local v1    # "dimArray":Lcom/sec/android/app/camera/DimController$DimArray;
    sparse-switch p1, :sswitch_data_0

    .line 767
    :cond_2
    :goto_1
    :pswitch_0
    iget-object v2, p0, Lcom/sec/android/app/camera/DimController;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->isMicrophoneEnabled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 768
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x10

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 769
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x10

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 770
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x10

    aput v4, v2, v3

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    .line 773
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/DimController;->mDimArrayList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 775
    invoke-direct {p0}, Lcom/sec/android/app/camera/DimController;->updateButtonDimState()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 203
    .end local v0    # "cs":Lcom/sec/android/app/camera/interfaces/CameraSettings;
    .end local v1    # "dimArray":Lcom/sec/android/app/camera/DimController$DimArray;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 220
    .restart local v0    # "cs":Lcom/sec/android/app/camera/interfaces/CameraSettings;
    .restart local v1    # "dimArray":Lcom/sec/android/app/camera/DimController$DimArray;
    :sswitch_0
    if-eqz p2, :cond_2

    .line 221
    const/16 v2, 0x1b

    if-lt p2, v2, :cond_4

    .line 222
    const/4 v2, 0x2

    :try_start_2
    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 223
    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 224
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/4 v4, 0x4

    aput v4, v2, v3

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    goto :goto_1

    .line 226
    :cond_4
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/4 v4, 0x5

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 227
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/4 v4, 0x5

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    goto :goto_1

    .line 232
    :sswitch_1
    if-ne p2, v5, :cond_2

    .line 233
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x8

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 234
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x8

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 235
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x8

    aput v4, v2, v3

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    goto/16 :goto_1

    .line 239
    :sswitch_2
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_GPU_EFFECT:Z

    if-eqz v2, :cond_6

    .line 240
    if-eqz p2, :cond_5

    .line 241
    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 242
    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 243
    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_4

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    .line 245
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setAutoNightDetectionMode(I)V

    goto/16 :goto_1

    .line 247
    :cond_5
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isEasyCamera()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/DimController;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isLowLightDetectionSupported()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 248
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setAutoNightDetectionMode(I)V

    goto/16 :goto_1

    .line 251
    :cond_6
    if-eqz p2, :cond_2

    .line 252
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x13

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 253
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x13

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 254
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x13

    aput v4, v2, v3

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    goto/16 :goto_1

    .line 259
    :sswitch_3
    const/16 v2, 0x2710

    if-eq p2, v2, :cond_8

    .line 260
    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_5

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 261
    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_6

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 262
    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_7

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    .line 263
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 264
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0xe

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 265
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0xe

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 266
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setSelfFlip(I)V

    .line 268
    :cond_7
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setAutoNightDetectionMode(I)V

    .line 269
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->overrideStickerCamcorderResolution()V

    goto/16 :goto_1

    .line 271
    :cond_8
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setAutoNightDetectionMode(I)V

    .line 272
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->resetOverriddenCamcorderResolution()V

    goto/16 :goto_1

    .line 276
    :sswitch_4
    sparse-switch p2, :sswitch_data_1

    goto/16 :goto_1

    .line 540
    :sswitch_5
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_AUTO:Z

    if-eqz v2, :cond_9

    .line 541
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x13

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 542
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x13

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 543
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x13

    aput v4, v2, v3

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    .line 545
    :cond_9
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isStickerMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 546
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->overrideStickerCamcorderResolution()V

    goto/16 :goto_1

    .line 279
    :sswitch_6
    const/16 v2, 0x9

    new-array v2, v2, [I

    fill-array-data v2, :array_8

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 281
    const/16 v2, 0x9

    new-array v2, v2, [I

    fill-array-data v2, :array_9

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 283
    const/16 v2, 0x9

    new-array v2, v2, [I

    fill-array-data v2, :array_a

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    .line 284
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_FIXED_BURST_RESOLUTION:Z

    if-eqz v2, :cond_a

    .line 285
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/4 v4, 0x6

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 286
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/4 v4, 0x6

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 287
    sget-object v2, Lcom/sec/android/app/camera/feature/Feature;->BURST_RESOLUTION:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraResolution(I)Z

    .line 289
    :cond_a
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SUPPORT_FOCUSMODE_MENU:Z

    if-eqz v2, :cond_2

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 290
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x22

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 291
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x22

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 292
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFocusMode(I)V

    goto/16 :goto_1

    .line 296
    :sswitch_7
    const/16 v2, 0x12

    new-array v2, v2, [I

    fill-array-data v2, :array_b

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 299
    const/16 v2, 0x11

    new-array v2, v2, [I

    fill-array-data v2, :array_c

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 301
    const/16 v2, 0x10

    new-array v2, v2, [I

    fill-array-data v2, :array_d

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    .line 303
    const-string v2, "640x480"

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraResolution(I)Z

    .line 304
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SUPPORT_FOCUSMODE_MENU:Z

    if-eqz v2, :cond_b

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 305
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x22

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 306
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x22

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 307
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFocusMode(I)V

    .line 309
    :cond_b
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 310
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0xe

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 311
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0xe

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 312
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setSelfFlip(I)V

    .line 313
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraVoiceCommand(I)V

    goto/16 :goto_1

    .line 318
    :sswitch_8
    const/16 v2, 0xd

    new-array v2, v2, [I

    fill-array-data v2, :array_e

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 320
    const/16 v2, 0xb

    new-array v2, v2, [I

    fill-array-data v2, :array_f

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 322
    const/16 v2, 0xb

    new-array v2, v2, [I

    fill-array-data v2, :array_10

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    .line 323
    sget-object v2, Lcom/sec/android/app/camera/feature/Feature;->BURST_PANORAMA_RESOLUTION:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraResolution(I)Z

    .line 324
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SUPPORT_FOCUSMODE_MENU:Z

    if-eqz v2, :cond_2

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 325
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x22

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 326
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x22

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 327
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFocusMode(I)V

    goto/16 :goto_1

    .line 331
    :sswitch_9
    const/16 v2, 0x9

    new-array v2, v2, [I

    fill-array-data v2, :array_11

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 333
    const/16 v2, 0x8

    new-array v2, v2, [I

    fill-array-data v2, :array_12

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 334
    const/16 v2, 0x8

    new-array v2, v2, [I

    fill-array-data v2, :array_13

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    .line 335
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SUPPORT_FOCUSMODE_MENU:Z

    if-eqz v2, :cond_c

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 336
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x22

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 337
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x22

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 338
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFocusMode(I)V

    .line 340
    :cond_c
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LIVE_BEAUTY:Z

    if-eqz v2, :cond_2

    .line 341
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBeautyLevel()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setBeautyLevel(I)V

    .line 342
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LIVE_BEAUTY_SLIMFACE:Z

    if-eqz v2, :cond_d

    .line 343
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSlimFaceLevel()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setSlimFaceLevel(I)V

    .line 345
    :cond_d
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LIVE_BEAUTY_EYEENLARGE:Z

    if-eqz v2, :cond_2

    .line 346
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEyeEnlargeLevel()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setEyeEnlargeLevel(I)V

    goto/16 :goto_1

    .line 351
    :sswitch_a
    const/16 v2, 0x8

    new-array v2, v2, [I

    fill-array-data v2, :array_14

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 352
    const/4 v2, 0x7

    new-array v2, v2, [I

    fill-array-data v2, :array_15

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 353
    const/4 v2, 0x7

    new-array v2, v2, [I

    fill-array-data v2, :array_16

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    .line 354
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SUPPORT_FOCUSMODE_MENU:Z

    if-eqz v2, :cond_2

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 355
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x22

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 356
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x22

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 357
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFocusMode(I)V

    goto/16 :goto_1

    .line 361
    :sswitch_b
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 362
    const/16 v2, 0xa

    new-array v2, v2, [I

    fill-array-data v2, :array_17

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 364
    const/16 v2, 0x9

    new-array v2, v2, [I

    fill-array-data v2, :array_18

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 366
    const/16 v2, 0x9

    new-array v2, v2, [I

    fill-array-data v2, :array_19

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    goto/16 :goto_1

    .line 368
    :cond_e
    const/16 v2, 0x8

    new-array v2, v2, [I

    fill-array-data v2, :array_1a

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 369
    const/4 v2, 0x7

    new-array v2, v2, [I

    fill-array-data v2, :array_1b

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 370
    const/4 v2, 0x7

    new-array v2, v2, [I

    fill-array-data v2, :array_1c

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    goto/16 :goto_1

    .line 374
    :sswitch_c
    const/16 v2, 0x8

    new-array v2, v2, [I

    fill-array-data v2, :array_1d

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 375
    const/4 v2, 0x7

    new-array v2, v2, [I

    fill-array-data v2, :array_1e

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 376
    const/4 v2, 0x7

    new-array v2, v2, [I

    fill-array-data v2, :array_1f

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    .line 377
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SUPPORT_FOCUSMODE_MENU:Z

    if-eqz v2, :cond_2

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 378
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x22

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 379
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x22

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 380
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFocusMode(I)V

    goto/16 :goto_1

    .line 384
    :sswitch_d
    const/4 v2, 0x7

    new-array v2, v2, [I

    fill-array-data v2, :array_20

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 385
    const/4 v2, 0x6

    new-array v2, v2, [I

    fill-array-data v2, :array_21

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 386
    const/4 v2, 0x6

    new-array v2, v2, [I

    fill-array-data v2, :array_22

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    .line 387
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SUPPORT_FOCUSMODE_MENU:Z

    if-eqz v2, :cond_2

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 388
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x22

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 389
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x22

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 390
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFocusMode(I)V

    goto/16 :goto_1

    .line 394
    :sswitch_e
    const/16 v2, 0x9

    new-array v2, v2, [I

    fill-array-data v2, :array_23

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 396
    const/16 v2, 0x8

    new-array v2, v2, [I

    fill-array-data v2, :array_24

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 397
    const/4 v2, 0x6

    new-array v2, v2, [I

    fill-array-data v2, :array_25

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    .line 398
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFlashMode(I)V

    .line 399
    const/4 v2, 0x2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setVolumeKeyAs(I)V

    .line 400
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SUPPORT_FOCUSMODE_MENU:Z

    if-eqz v2, :cond_2

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 401
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x22

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 402
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x22

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 403
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFocusMode(I)V

    goto/16 :goto_1

    .line 407
    :sswitch_f
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSoundAndShotMode()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setSoundAndShotMode(I)V

    .line 409
    const/16 v2, 0x9

    new-array v2, v2, [I

    fill-array-data v2, :array_26

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 411
    const/16 v2, 0x8

    new-array v2, v2, [I

    fill-array-data v2, :array_27

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 412
    const/16 v2, 0x8

    new-array v2, v2, [I

    fill-array-data v2, :array_28

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    .line 414
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_SELFIE:Z

    if-nez v2, :cond_f

    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_BEAUTY_SHOT:Z

    if-eqz v2, :cond_2

    .line 415
    :cond_f
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x13

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 416
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x13

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 417
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x13

    aput v4, v2, v3

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    goto/16 :goto_1

    .line 421
    :sswitch_10
    const/16 v2, 0xc

    new-array v2, v2, [I

    fill-array-data v2, :array_29

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 423
    const/16 v2, 0xa

    new-array v2, v2, [I

    fill-array-data v2, :array_2a

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 425
    const/16 v2, 0x9

    new-array v2, v2, [I

    fill-array-data v2, :array_2b

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    .line 426
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 427
    const-string v2, "1920x1080"

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraResolution(I)Z

    goto/16 :goto_1

    .line 429
    :cond_10
    sget-object v2, Lcom/sec/android/app/camera/feature/Feature;->SHOT_AND_MORE_BACK_RESOLUTION:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraResolution(I)Z

    goto/16 :goto_1

    .line 433
    :sswitch_11
    const/16 v2, 0x8

    new-array v2, v2, [I

    fill-array-data v2, :array_2c

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 434
    const/4 v2, 0x7

    new-array v2, v2, [I

    fill-array-data v2, :array_2d

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 435
    const/4 v2, 0x7

    new-array v2, v2, [I

    fill-array-data v2, :array_2e

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    .line 436
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SUPPORT_FOCUSMODE_MENU:Z

    if-eqz v2, :cond_2

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 437
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x22

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 438
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x22

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 439
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFocusMode(I)V

    goto/16 :goto_1

    .line 443
    :sswitch_12
    const/16 v2, 0x9

    new-array v2, v2, [I

    fill-array-data v2, :array_2f

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 444
    const/4 v2, 0x7

    new-array v2, v2, [I

    fill-array-data v2, :array_30

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 445
    const/16 v2, 0x8

    new-array v2, v2, [I

    fill-array-data v2, :array_31

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    .line 446
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SUPPORT_FOCUSMODE_MENU:Z

    if-eqz v2, :cond_2

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 447
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x22

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 448
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x22

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 449
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFocusMode(I)V

    goto/16 :goto_1

    .line 453
    :sswitch_13
    const/16 v2, 0xb

    new-array v2, v2, [I

    fill-array-data v2, :array_32

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 455
    const/16 v2, 0x9

    new-array v2, v2, [I

    fill-array-data v2, :array_33

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 456
    const/16 v2, 0xa

    new-array v2, v2, [I

    fill-array-data v2, :array_34

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    .line 457
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SUPPORT_FOCUSMODE_MENU:Z

    if-eqz v2, :cond_2

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 458
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x22

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 459
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x22

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 460
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFocusMode(I)V

    goto/16 :goto_1

    .line 464
    :sswitch_14
    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_35

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 465
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x1b

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 466
    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_36

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    .line 468
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LIVE_BEAUTY:Z

    if-eqz v2, :cond_12

    .line 469
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBeautyLevel()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setBeautyLevel(I)V

    .line 470
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LIVE_BEAUTY_SLIMFACE:Z

    if-eqz v2, :cond_11

    .line 471
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSlimFaceLevel()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setSlimFaceLevel(I)V

    .line 473
    :cond_11
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LIVE_BEAUTY_EYEENLARGE:Z

    if-eqz v2, :cond_12

    .line 474
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEyeEnlargeLevel()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setEyeEnlargeLevel(I)V

    .line 477
    :cond_12
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isStickerMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 478
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->overrideStickerCamcorderResolution()V

    goto/16 :goto_1

    .line 484
    :sswitch_15
    const/16 v2, 0xb

    new-array v2, v2, [I

    fill-array-data v2, :array_37

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 486
    const/16 v2, 0x9

    new-array v2, v2, [I

    fill-array-data v2, :array_38

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 488
    const/16 v2, 0x9

    new-array v2, v2, [I

    fill-array-data v2, :array_39

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    .line 489
    sget-object v2, Lcom/sec/android/app/camera/feature/Feature;->WIDE_SELFIE_RESOLUTION:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraResolution(I)Z

    goto/16 :goto_1

    .line 492
    :sswitch_16
    const/16 v2, 0xe

    new-array v2, v2, [I

    fill-array-data v2, :array_3a

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 494
    const/16 v2, 0xc

    new-array v2, v2, [I

    fill-array-data v2, :array_3b

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 496
    const/16 v2, 0xc

    new-array v2, v2, [I

    fill-array-data v2, :array_3c

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    .line 498
    const-string v2, "1280x720"

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraResolution(I)Z

    .line 499
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SUPPORT_FOCUSMODE_MENU:Z

    if-eqz v2, :cond_2

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 500
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x22

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 501
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x22

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 502
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFocusMode(I)V

    goto/16 :goto_1

    .line 506
    :sswitch_17
    const/16 v2, 0xc

    new-array v2, v2, [I

    fill-array-data v2, :array_3d

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 508
    const/16 v2, 0x9

    new-array v2, v2, [I

    fill-array-data v2, :array_3e

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 510
    const/16 v2, 0x9

    new-array v2, v2, [I

    fill-array-data v2, :array_3f

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    .line 511
    const-string v2, "1280x720"

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraResolution(I)Z

    .line 512
    const-string v2, "1280x720"

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->overrideCamcorderResolution(I)V

    .line 513
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SUPPORT_FOCUSMODE_MENU:Z

    if-eqz v2, :cond_2

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 514
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x22

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 515
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x22

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 516
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFocusMode(I)V

    goto/16 :goto_1

    .line 521
    :sswitch_18
    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_40

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 522
    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_41

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 523
    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_42

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    goto/16 :goto_1

    .line 526
    :sswitch_19
    const/16 v2, 0xc

    new-array v2, v2, [I

    fill-array-data v2, :array_43

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 528
    const/16 v2, 0x9

    new-array v2, v2, [I

    fill-array-data v2, :array_44

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 530
    const/16 v2, 0x9

    new-array v2, v2, [I

    fill-array-data v2, :array_45

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    .line 531
    const-string v2, "1280x720"

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraResolution(I)Z

    .line 532
    const-string v2, "1280x720"

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->overrideCamcorderResolution(I)V

    .line 533
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SUPPORT_FOCUSMODE_MENU:Z

    if-eqz v2, :cond_2

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 534
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x22

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 535
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x22

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 536
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFocusMode(I)V

    goto/16 :goto_1

    .line 550
    :sswitch_1a
    const/16 v2, 0x9

    new-array v2, v2, [I

    fill-array-data v2, :array_46

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 551
    const/4 v2, 0x7

    new-array v2, v2, [I

    fill-array-data v2, :array_47

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 552
    const/16 v2, 0x8

    new-array v2, v2, [I

    fill-array-data v2, :array_48

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    .line 554
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getAntiFogLevel()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setAntiFogLevel(I)V

    .line 555
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SUPPORT_FOCUSMODE_MENU:Z

    if-eqz v2, :cond_2

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 556
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x22

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 557
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x22

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 558
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFocusMode(I)V

    goto/16 :goto_1

    .line 562
    :sswitch_1b
    const/16 v2, 0x8

    new-array v2, v2, [I

    fill-array-data v2, :array_49

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 563
    const/4 v2, 0x7

    new-array v2, v2, [I

    fill-array-data v2, :array_4a

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 564
    const/4 v2, 0x7

    new-array v2, v2, [I

    fill-array-data v2, :array_4b

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    .line 566
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFoodColorTuneValue()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFoodColorTuneValue(I)V

    .line 567
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SUPPORT_FOCUSMODE_MENU:Z

    if-eqz v2, :cond_2

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 568
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x22

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 569
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x22

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 570
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFocusMode(I)V

    goto/16 :goto_1

    .line 574
    :sswitch_1c
    const/16 v2, 0xe

    new-array v2, v2, [I

    fill-array-data v2, :array_4c

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 576
    const/16 v2, 0xd

    new-array v2, v2, [I

    fill-array-data v2, :array_4d

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 578
    const/16 v2, 0xc

    new-array v2, v2, [I

    fill-array-data v2, :array_4e

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    .line 581
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 582
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0xe

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 583
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0xe

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 584
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setSelfFlip(I)V

    .line 586
    :cond_13
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setVideoCollageResolution()V

    goto/16 :goto_1

    .line 589
    :sswitch_1d
    const/16 v2, 0xc

    new-array v2, v2, [I

    fill-array-data v2, :array_4f

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 591
    const/16 v2, 0x9

    new-array v2, v2, [I

    fill-array-data v2, :array_50

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 593
    const/16 v2, 0x9

    new-array v2, v2, [I

    fill-array-data v2, :array_51

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    .line 594
    const-string v2, "1920x1080"

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraResolution(I)Z

    .line 595
    const-string v2, "1920x1080"

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->overrideCamcorderResolution(I)V

    goto/16 :goto_1

    .line 602
    :sswitch_1e
    packed-switch p2, :pswitch_data_0

    goto/16 :goto_1

    .line 606
    :pswitch_1
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0xd

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 607
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0xd

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 608
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraShutterSound(I)V

    goto/16 :goto_1

    .line 615
    :sswitch_1f
    if-ne p2, v6, :cond_2

    .line 616
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/4 v4, 0x5

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 617
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/4 v4, 0x5

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 618
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/4 v4, 0x5

    aput v4, v2, v3

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    goto/16 :goto_1

    .line 622
    :sswitch_20
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isKNOXMode()Z

    move-result v2

    if-nez v2, :cond_14

    iget-object v2, p0, Lcom/sec/android/app/camera/DimController;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/camera/util/RestrictionPolicyUtil;->isSdCardWriteRestricted(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 623
    :cond_14
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x9

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 624
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x9

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 626
    :cond_15
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sec/android/app/camera/util/StorageUtils;->getUpdatedStorageStatus(I)I

    move-result v2

    if-ne v2, v6, :cond_2

    .line 627
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x19

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 628
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x19

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 629
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x19

    aput v4, v2, v3

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    goto/16 :goto_1

    .line 633
    :sswitch_21
    if-ne p2, v5, :cond_16

    .line 634
    const/4 v2, 0x6

    new-array v2, v2, [I

    fill-array-data v2, :array_52

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 635
    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_53

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 636
    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_54

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    goto/16 :goto_1

    .line 637
    :cond_16
    if-ne p2, v6, :cond_2

    .line 638
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_GPU_EFFECT:Z

    if-eqz v2, :cond_18

    .line 639
    const/16 v2, 0xb

    new-array v2, v2, [I

    fill-array-data v2, :array_55

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 645
    :goto_2
    const/16 v2, 0x8

    new-array v2, v2, [I

    fill-array-data v2, :array_56

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 647
    const/16 v2, 0x8

    new-array v2, v2, [I

    fill-array-data v2, :array_57

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    .line 650
    iget-object v2, p0, Lcom/sec/android/app/camera/DimController;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getAttachModeManager()Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;->isAttachVideoFixedResolution()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 651
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0xc

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 654
    :cond_17
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCamcorderResolution(I)Z

    .line 655
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setAutoNightDetectionMode(I)V

    goto/16 :goto_1

    .line 642
    :cond_18
    const/16 v2, 0xa

    new-array v2, v2, [I

    fill-array-data v2, :array_58

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    goto :goto_2

    .line 659
    :sswitch_22
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v2

    invoke-static {v2, p2}, Lcom/sec/android/app/camera/util/CameraResolution;->getCamcorderVDISAvailableFeature(II)Z

    move-result v2

    if-nez v2, :cond_2

    .line 660
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0xf

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 661
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0xf

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 662
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0xf

    aput v4, v2, v3

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    goto/16 :goto_1

    .line 666
    :sswitch_23
    const/4 v2, 0x3

    if-ne p2, v2, :cond_2

    .line 667
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x14

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 668
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x14

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 669
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x14

    aput v4, v2, v3

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    goto/16 :goto_1

    .line 673
    :sswitch_24
    const/4 v2, -0x1

    if-eq p2, v2, :cond_2

    .line 674
    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_59

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 675
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x14

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 676
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x14

    aput v4, v2, v3

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    goto/16 :goto_1

    .line 680
    :sswitch_25
    iget-object v2, p0, Lcom/sec/android/app/camera/DimController;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualFrontCameraId()I

    move-result v2

    if-ne p2, v2, :cond_19

    .line 681
    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_5a

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 682
    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_5b

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 683
    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_5c

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    goto/16 :goto_1

    .line 684
    :cond_19
    iget-object v2, p0, Lcom/sec/android/app/camera/DimController;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualBackCameraId()I

    move-result v2

    if-ne p2, v2, :cond_2

    .line 685
    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_5d

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 686
    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_5e

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 687
    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_5f

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    goto/16 :goto_1

    .line 691
    :sswitch_26
    if-ne p2, v5, :cond_2

    .line 692
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v2

    if-nez v2, :cond_2

    .line 693
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0xf

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 694
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0xf

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 695
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0xf

    aput v4, v2, v3

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    goto/16 :goto_1

    .line 700
    :sswitch_27
    if-eqz p2, :cond_2

    .line 701
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0xf

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 702
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0xf

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 703
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0xf

    aput v4, v2, v3

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    goto/16 :goto_1

    .line 708
    :sswitch_28
    if-ne p2, v5, :cond_2

    .line 709
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/4 v4, 0x4

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 710
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/4 v4, 0x4

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 711
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFlashMode(I)V

    goto/16 :goto_1

    .line 717
    :sswitch_29
    if-ne p2, v5, :cond_2

    .line 718
    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_60

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 719
    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_61

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 720
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraVoiceCommand(I)V

    .line 721
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraShutterSound(I)V

    goto/16 :goto_1

    .line 725
    :sswitch_2a
    if-ne p2, v5, :cond_2

    .line 726
    const/4 v2, 0x7

    new-array v2, v2, [I

    fill-array-data v2, :array_62

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 727
    const/4 v2, 0x7

    new-array v2, v2, [I

    fill-array-data v2, :array_63

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 728
    const/4 v2, 0x7

    new-array v2, v2, [I

    fill-array-data v2, :array_64

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    goto/16 :goto_1

    .line 732
    :sswitch_2b
    if-ne p2, v5, :cond_2

    .line 733
    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_65

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 734
    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_66

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 735
    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_67

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    goto/16 :goto_1

    .line 739
    :sswitch_2c
    if-ne p2, v5, :cond_2

    .line 740
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x17

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    goto/16 :goto_1

    .line 744
    :sswitch_2d
    if-eq p2, v5, :cond_1a

    if-eq p2, v6, :cond_1a

    const/4 v2, 0x3

    if-ne p2, v2, :cond_2

    .line 746
    :cond_1a
    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_68

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    .line 747
    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_69

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    .line 748
    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_6a

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    goto/16 :goto_1

    .line 752
    :sswitch_2e
    if-ne p2, v5, :cond_2

    .line 753
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x1c

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    goto/16 :goto_1

    .line 757
    :sswitch_2f
    if-eqz p2, :cond_2

    .line 759
    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_6b

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 218
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_21
        0x1 -> :sswitch_4
        0x5 -> :sswitch_23
        0x8 -> :sswitch_2
        0xc -> :sswitch_1f
        0xe -> :sswitch_27
        0x16 -> :sswitch_20
        0x17 -> :sswitch_26
        0x18 -> :sswitch_24
        0x1f -> :sswitch_0
        0x24 -> :sswitch_25
        0x4d -> :sswitch_1e
        0x7f -> :sswitch_1
        0x83 -> :sswitch_2d
        0xbe -> :sswitch_3
        0x12c -> :sswitch_28
        0x136 -> :sswitch_29
        0x137 -> :sswitch_2a
        0x13d -> :sswitch_2e
        0x13e -> :sswitch_2f
        0xbb9 -> :sswitch_22
        0x1770 -> :sswitch_2c
        0x1b58 -> :sswitch_2b
    .end sparse-switch

    .line 222
    :array_0
    .array-data 4
        0x5
        0x4
    .end array-data

    .line 223
    :array_1
    .array-data 4
        0x5
        0x4
    .end array-data

    .line 241
    :array_2
    .array-data 4
        0xf
        0x13
    .end array-data

    .line 242
    :array_3
    .array-data 4
        0xf
        0x13
    .end array-data

    .line 243
    :array_4
    .array-data 4
        0xf
        0x13
    .end array-data

    .line 260
    :array_5
    .array-data 4
        0xc
        0xf
        0x13
        0x4
        0x1f
    .end array-data

    .line 261
    :array_6
    .array-data 4
        0xf
        0x13
        0x4
        0x1f
    .end array-data

    .line 262
    :array_7
    .array-data 4
        0xf
        0x13
        0x4
        0x1f
    .end array-data

    .line 276
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_5
        0x1 -> :sswitch_6
        0x2 -> :sswitch_8
        0x7 -> :sswitch_9
        0xe -> :sswitch_a
        0x11 -> :sswitch_6
        0x17 -> :sswitch_b
        0x23 -> :sswitch_f
        0x27 -> :sswitch_c
        0x28 -> :sswitch_d
        0x2a -> :sswitch_e
        0x2d -> :sswitch_12
        0x2e -> :sswitch_10
        0x2f -> :sswitch_11
        0x31 -> :sswitch_1a
        0x34 -> :sswitch_15
        0x37 -> :sswitch_14
        0x38 -> :sswitch_13
        0x3a -> :sswitch_7
        0x3b -> :sswitch_18
        0x3e -> :sswitch_16
        0x3f -> :sswitch_17
        0x40 -> :sswitch_19
        0x44 -> :sswitch_1b
        0x45 -> :sswitch_1c
        0x48 -> :sswitch_8
        0x4a -> :sswitch_1d
        0x4b -> :sswitch_18
        0x4d -> :sswitch_15
        0x4e -> :sswitch_15
    .end sparse-switch

    .line 279
    :array_8
    .array-data 4
        0x1
        0x4
        0x14
        0x1b
        0x20
        0x7
        0x8
        0x1a
        0x23
    .end array-data

    .line 281
    :array_9
    .array-data 4
        0x1
        0x4
        0x14
        0x1b
        0x20
        0x7
        0x8
        0x1a
        0x23
    .end array-data

    .line 283
    :array_a
    .array-data 4
        0x1
        0x4
        0x14
        0x1b
        0x20
        0x7
        0x8
        0x1a
        0x23
    .end array-data

    .line 296
    :array_b
    .array-data 4
        0x1
        0x2
        0x10
        0x14
        0x4
        0x1f
        0x7
        0x9
        0x13
        0x8
        0x11
        0x1b
        0x6
        0x1d
        0x1e
        0x20
        0x1a
        0x23
    .end array-data

    .line 299
    :array_c
    .array-data 4
        0x1
        0x10
        0x14
        0x4
        0x1f
        0x7
        0x9
        0x13
        0x8
        0x11
        0x1b
        0x6
        0x1d
        0x1e
        0x20
        0x1a
        0x23
    .end array-data

    .line 301
    :array_d
    .array-data 4
        0x1
        0x14
        0x4
        0x1f
        0x10
        0x7
        0x9
        0x13
        0x8
        0x11
        0x1b
        0x1d
        0x1e
        0x20
        0x1a
        0x23
    .end array-data

    .line 318
    :array_e
    .array-data 4
        0x1
        0x2
        0x3
        0x14
        0x4
        0x6
        0x7
        0x8
        0x12
        0x1b
        0x20
        0x1a
        0x23
    .end array-data

    .line 320
    :array_f
    .array-data 4
        0x1
        0x14
        0x4
        0x6
        0x7
        0x8
        0x12
        0x1b
        0x20
        0x1a
        0x23
    .end array-data

    .line 322
    :array_10
    .array-data 4
        0x1
        0x3
        0x14
        0x4
        0x7
        0x8
        0x12
        0x1b
        0x20
        0x1a
        0x23
    .end array-data

    .line 331
    :array_11
    .array-data 4
        0x1
        0x2
        0x14
        0x4
        0x1f
        0x1b
        0x20
        0x1a
        0x23
    .end array-data

    .line 333
    :array_12
    .array-data 4
        0x1
        0x14
        0x4
        0x1f
        0x1b
        0x20
        0x1a
        0x23
    .end array-data

    .line 334
    :array_13
    .array-data 4
        0x1
        0x14
        0x4
        0x1f
        0x1b
        0x20
        0x1a
        0x23
    .end array-data

    .line 351
    :array_14
    .array-data 4
        0x1
        0x2
        0x4
        0x14
        0x1b
        0x20
        0x1a
        0x23
    .end array-data

    .line 352
    :array_15
    .array-data 4
        0x1
        0x4
        0x14
        0x1b
        0x20
        0x1a
        0x23
    .end array-data

    .line 353
    :array_16
    .array-data 4
        0x1
        0x4
        0x14
        0x1b
        0x20
        0x1a
        0x23
    .end array-data

    .line 362
    :array_17
    .array-data 4
        0x1
        0x2
        0x14
        0x4
        0x1f
        0x13
        0x1b
        0x20
        0x1a
        0x23
    .end array-data

    .line 364
    :array_18
    .array-data 4
        0x1
        0x14
        0x4
        0x1f
        0x13
        0x1b
        0x20
        0x1a
        0x23
    .end array-data

    .line 366
    :array_19
    .array-data 4
        0x1
        0x14
        0x4
        0x1f
        0x13
        0x1b
        0x20
        0x1a
        0x23
    .end array-data

    .line 368
    :array_1a
    .array-data 4
        0x1
        0x2
        0x14
        0x4
        0x1b
        0x20
        0x1a
        0x23
    .end array-data

    .line 369
    :array_1b
    .array-data 4
        0x1
        0x14
        0x4
        0x1b
        0x20
        0x1a
        0x23
    .end array-data

    .line 370
    :array_1c
    .array-data 4
        0x1
        0x14
        0x4
        0x1b
        0x20
        0x1a
        0x23
    .end array-data

    .line 374
    :array_1d
    .array-data 4
        0x1
        0x2
        0x4
        0x14
        0x1b
        0x20
        0x1a
        0x23
    .end array-data

    .line 375
    :array_1e
    .array-data 4
        0x1
        0x4
        0x14
        0x1b
        0x20
        0x1a
        0x23
    .end array-data

    .line 376
    :array_1f
    .array-data 4
        0x1
        0x14
        0x4
        0x1b
        0x20
        0x1a
        0x23
    .end array-data

    .line 384
    :array_20
    .array-data 4
        0x1
        0x2
        0x4
        0x1b
        0x20
        0x1a
        0x23
    .end array-data

    .line 385
    :array_21
    .array-data 4
        0x1
        0x4
        0x1b
        0x20
        0x1a
        0x23
    .end array-data

    .line 386
    :array_22
    .array-data 4
        0x1
        0x4
        0x1b
        0x20
        0x1a
        0x23
    .end array-data

    .line 394
    :array_23
    .array-data 4
        0x1
        0x2
        0x4
        0x14
        0x17
        0x1b
        0x20
        0x1a
        0x23
    .end array-data

    .line 396
    :array_24
    .array-data 4
        0x1
        0x4
        0x14
        0x17
        0x1b
        0x20
        0x1a
        0x23
    .end array-data

    .line 397
    :array_25
    .array-data 4
        0x1
        0x14
        0x1b
        0x20
        0x1a
        0x23
    .end array-data

    .line 409
    :array_26
    .array-data 4
        0x2
        0x10
        0x7
        0x1f
        0x8
        0x1b
        0x20
        0x1a
        0x23
    .end array-data

    .line 411
    :array_27
    .array-data 4
        0x10
        0x7
        0x1f
        0x8
        0x1b
        0x20
        0x1a
        0x23
    .end array-data

    .line 412
    :array_28
    .array-data 4
        0x10
        0x7
        0x1f
        0x8
        0x1b
        0x20
        0x1a
        0x23
    .end array-data

    .line 421
    :array_29
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x1f
        0x14
        0x7
        0x6
        0x8
        0x1b
        0x20
        0x1a
    .end array-data

    .line 423
    :array_2a
    .array-data 4
        0x1
        0x4
        0x1f
        0x14
        0x7
        0x6
        0x8
        0x1b
        0x20
        0x1a
    .end array-data

    .line 425
    :array_2b
    .array-data 4
        0x1
        0x3
        0x1f
        0x14
        0x7
        0x8
        0x1b
        0x20
        0x1a
    .end array-data

    .line 433
    :array_2c
    .array-data 4
        0x1
        0x2
        0x1f
        0xf
        0x8
        0x1b
        0x20
        0x23
    .end array-data

    .line 434
    :array_2d
    .array-data 4
        0x1
        0x1f
        0xf
        0x8
        0x1b
        0x20
        0x23
    .end array-data

    .line 435
    :array_2e
    .array-data 4
        0x1
        0x1f
        0xf
        0x8
        0x1b
        0x20
        0x23
    .end array-data

    .line 443
    :array_2f
    .array-data 4
        0x3
        0x2
        0x14
        0x4
        0x1f
        0x1b
        0x20
        0x1a
        0x23
    .end array-data

    .line 444
    :array_30
    .array-data 4
        0x14
        0x4
        0x1f
        0x1b
        0x20
        0x1a
        0x23
    .end array-data

    .line 445
    :array_31
    .array-data 4
        0x3
        0x14
        0x4
        0x1f
        0x1b
        0x20
        0x1a
        0x23
    .end array-data

    .line 453
    :array_32
    .array-data 4
        0x1
        0x2
        0x4
        0x14
        0x7
        0x3
        0x10
        0x1b
        0x20
        0x1a
        0x23
    .end array-data

    .line 455
    :array_33
    .array-data 4
        0x1
        0x4
        0x14
        0x7
        0x10
        0x1b
        0x20
        0x1a
        0x23
    .end array-data

    .line 456
    :array_34
    .array-data 4
        0x1
        0x4
        0x14
        0x7
        0x3
        0x10
        0x1b
        0x20
        0x1a
        0x23
    .end array-data

    .line 464
    :array_35
    .array-data 4
        0x1b
        0x3
    .end array-data

    .line 466
    :array_36
    .array-data 4
        0x1b
        0x3
    .end array-data

    .line 484
    :array_37
    .array-data 4
        0x1
        0x2
        0x4
        0x1f
        0x14
        0x6
        0x1b
        0x3
        0x20
        0x1a
        0x23
    .end array-data

    .line 486
    :array_38
    .array-data 4
        0x1
        0x4
        0x1f
        0x14
        0x6
        0x1b
        0x20
        0x1a
        0x23
    .end array-data

    .line 488
    :array_39
    .array-data 4
        0x1
        0x4
        0x1f
        0x14
        0x1b
        0x3
        0x20
        0x1a
        0x23
    .end array-data

    .line 492
    :array_3a
    .array-data 4
        0x1
        0x2
        0x4
        0x1f
        0x3
        0x14
        0x7
        0x6
        0x8
        0x13
        0x1b
        0x20
        0x1a
        0x23
    .end array-data

    .line 494
    :array_3b
    .array-data 4
        0x1
        0x4
        0x1f
        0x14
        0x7
        0x6
        0x8
        0x13
        0x1b
        0x20
        0x1a
        0x23
    .end array-data

    .line 496
    :array_3c
    .array-data 4
        0x1
        0x4
        0x1f
        0x3
        0x14
        0x7
        0x8
        0x13
        0x1b
        0x20
        0x1a
        0x23
    .end array-data

    .line 506
    :array_3d
    .array-data 4
        0x1
        0x2
        0x14
        0x6
        0xc
        0xf
        0x3
        0x8
        0x1b
        0x20
        0x1a
        0x23
    .end array-data

    .line 508
    :array_3e
    .array-data 4
        0x1
        0x14
        0x6
        0xf
        0x8
        0x1b
        0x20
        0x1a
        0x23
    .end array-data

    .line 510
    :array_3f
    .array-data 4
        0x1
        0x14
        0xf
        0x3
        0x8
        0x1b
        0x20
        0x1a
        0x23
    .end array-data

    .line 521
    :array_40
    .array-data 4
        0x1
        0x1b
        0x20
        0x23
    .end array-data

    .line 522
    :array_41
    .array-data 4
        0x1
        0x1b
        0x20
        0x23
    .end array-data

    .line 523
    :array_42
    .array-data 4
        0x1
        0x1b
        0x20
        0x23
    .end array-data

    .line 526
    :array_43
    .array-data 4
        0x1
        0x2
        0x14
        0x6
        0xc
        0xf
        0x3
        0x8
        0x1b
        0x20
        0x1a
        0x23
    .end array-data

    .line 528
    :array_44
    .array-data 4
        0x1
        0x14
        0x6
        0xf
        0x8
        0x1b
        0x20
        0x1a
        0x23
    .end array-data

    .line 530
    :array_45
    .array-data 4
        0x1
        0x14
        0xf
        0x3
        0x8
        0x1b
        0x20
        0x1a
        0x23
    .end array-data

    .line 550
    :array_46
    .array-data 4
        0x1
        0x3
        0x2
        0x4
        0x14
        0x1b
        0x20
        0x1a
        0x23
    .end array-data

    .line 551
    :array_47
    .array-data 4
        0x1
        0x4
        0x14
        0x1b
        0x20
        0x1a
        0x23
    .end array-data

    .line 552
    :array_48
    .array-data 4
        0x1
        0x3
        0x4
        0x14
        0x1b
        0x20
        0x1a
        0x23
    .end array-data

    .line 562
    :array_49
    .array-data 4
        0x1
        0x7
        0x2
        0x4
        0x14
        0x1b
        0x20
        0x23
    .end array-data

    .line 563
    :array_4a
    .array-data 4
        0x1
        0x7
        0x4
        0x14
        0x1b
        0x20
        0x23
    .end array-data

    .line 564
    :array_4b
    .array-data 4
        0x1
        0x7
        0x4
        0x14
        0x1b
        0x20
        0x23
    .end array-data

    .line 574
    :array_4c
    .array-data 4
        0x14
        0x7
        0x1f
        0x6
        0xc
        0xf
        0x8
        0x13
        0x1b
        0x1d
        0x1e
        0x20
        0x1a
        0x23
    .end array-data

    .line 576
    :array_4d
    .array-data 4
        0x14
        0x7
        0x1f
        0x6
        0xf
        0x8
        0x13
        0x1b
        0x1d
        0x1e
        0x20
        0x1a
        0x23
    .end array-data

    .line 578
    :array_4e
    .array-data 4
        0x14
        0x7
        0x1f
        0xf
        0x8
        0x13
        0x1b
        0x1d
        0x1e
        0x20
        0x1a
        0x23
    .end array-data

    .line 589
    :array_4f
    .array-data 4
        0x1
        0x2
        0x14
        0x6
        0xc
        0xf
        0x3
        0x8
        0x1b
        0x20
        0x1a
        0x23
    .end array-data

    .line 591
    :array_50
    .array-data 4
        0x1
        0x14
        0x6
        0xf
        0x8
        0x1b
        0x20
        0x1a
        0x23
    .end array-data

    .line 593
    :array_51
    .array-data 4
        0x1
        0x14
        0x3
        0x8
        0x1b
        0xf
        0x20
        0x1a
        0x23
    .end array-data

    .line 602
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 634
    :array_52
    .array-data 4
        0xc
        0xf
        0x8
        0x14
        0x16
        0x20
    .end array-data

    .line 635
    :array_53
    .array-data 4
        0xc
        0xf
        0x8
        0x14
        0x20
    .end array-data

    .line 636
    :array_54
    .array-data 4
        0x8
        0x14
        0xf
        0x20
    .end array-data

    .line 639
    :array_55
    .array-data 4
        0x6
        0xf
        0x2
        0x13
        0x8
        0x14
        0x16
        0x1d
        0x1e
        0x20
        0x1a
    .end array-data

    .line 645
    :array_56
    .array-data 4
        0xf
        0x13
        0x8
        0x14
        0x1d
        0x1e
        0x20
        0x1a
    .end array-data

    .line 647
    :array_57
    .array-data 4
        0xf
        0x13
        0x8
        0x14
        0x1d
        0x1e
        0x20
        0x1a
    .end array-data

    .line 642
    :array_58
    .array-data 4
        0x6
        0xf
        0x13
        0x8
        0x14
        0x16
        0x1d
        0x1e
        0x20
        0x1a
    .end array-data

    .line 674
    :array_59
    .array-data 4
        0x21
        0x14
    .end array-data

    .line 681
    :array_5a
    .array-data 4
        0x4
        0xe
        0x13
        0x1e
    .end array-data

    .line 682
    :array_5b
    .array-data 4
        0x4
        0xe
        0x13
        0x1e
    .end array-data

    .line 683
    :array_5c
    .array-data 4
        0x4
        0xe
        0x13
        0x1e
    .end array-data

    .line 685
    :array_5d
    .array-data 4
        0x14
        0x1a
    .end array-data

    .line 686
    :array_5e
    .array-data 4
        0x14
        0x1a
    .end array-data

    .line 687
    :array_5f
    .array-data 4
        0x14
        0x1a
    .end array-data

    .line 718
    :array_60
    .array-data 4
        0xd
        0x10
    .end array-data

    .line 719
    :array_61
    .array-data 4
        0xd
        0x10
    .end array-data

    .line 726
    :array_62
    .array-data 4
        0x11
        0xa
        0x10
        0x8
        0x7
        0x14
        0x20
    .end array-data

    .line 727
    :array_63
    .array-data 4
        0x11
        0xa
        0x10
        0x8
        0x7
        0x14
        0x20
    .end array-data

    .line 728
    :array_64
    .array-data 4
        0x11
        0xa
        0x10
        0x8
        0x7
        0x14
        0x20
    .end array-data

    .line 733
    :array_65
    .array-data 4
        0x2
        0x10
        0x11
        0x20
        0x9
    .end array-data

    .line 734
    :array_66
    .array-data 4
        0x2
        0x10
        0x11
        0x20
        0x9
    .end array-data

    .line 735
    :array_67
    .array-data 4
        0x2
        0x10
        0x11
        0x20
        0x9
    .end array-data

    .line 746
    :array_68
    .array-data 4
        0x1
        0x2
        0x3
    .end array-data

    .line 747
    :array_69
    .array-data 4
        0x1
        0x2
    .end array-data

    .line 748
    :array_6a
    .array-data 4
        0x1
        0x2
        0x3
    .end array-data

    .line 759
    :array_6b
    .array-data 4
        0x11
        0x20
    .end array-data
.end method

.method public declared-synchronized setDim(IZ)V
    .locals 1
    .param p1, "key"    # I
    .param p2, "dimmed"    # Z

    .prologue
    .line 779
    monitor-enter p0

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/DimController;->mCurrentDimArray:[Z

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 780
    iget-object v0, p0, Lcom/sec/android/app/camera/DimController;->mCurrentDimArray:[Z

    aput-boolean p2, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 782
    :cond_0
    monitor-exit p0

    return-void

    .line 779
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized synchronizeDim()V
    .locals 6

    .prologue
    .line 785
    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Lcom/sec/android/app/camera/DimController;->mIsNeedSynchronizeDim:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .line 808
    :goto_0
    monitor-exit p0

    return-void

    .line 789
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    const/16 v3, 0x25

    if-ge v1, v3, :cond_4

    .line 790
    :try_start_1
    iget-object v3, p0, Lcom/sec/android/app/camera/DimController;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/glview/GLView;

    .line 791
    .local v2, "view":Lcom/samsung/android/glview/GLView;
    instance-of v3, v2, Lcom/sec/android/app/camera/widget/gl/Item;

    if-eqz v3, :cond_2

    .line 792
    move-object v0, v2

    check-cast v0, Lcom/sec/android/app/camera/widget/gl/Item;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sec/android/app/camera/widget/gl/Item;->getCommandId()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/DimController;->getkeyFromCommandId(I)I

    move-result v3

    if-ne v3, v1, :cond_1

    .line 793
    iget-object v3, p0, Lcom/sec/android/app/camera/DimController;->mCurrentDimArray:[Z

    aget-boolean v3, v3, v1

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->isDim()Z

    move-result v5

    if-eq v3, v5, :cond_1

    .line 794
    iget-object v3, p0, Lcom/sec/android/app/camera/DimController;->mCurrentDimArray:[Z

    aget-boolean v3, v3, v1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLView;->setDim(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 785
    .end local v1    # "i":I
    .end local v2    # "view":Lcom/samsung/android/glview/GLView;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 798
    .restart local v1    # "i":I
    .restart local v2    # "view":Lcom/samsung/android/glview/GLView;
    :cond_2
    :try_start_2
    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->getTag()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/DimController;->getkeyFromCommandId(I)I

    move-result v3

    if-ne v3, v1, :cond_1

    .line 799
    iget-object v3, p0, Lcom/sec/android/app/camera/DimController;->mCurrentDimArray:[Z

    aget-boolean v3, v3, v1

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->isDim()Z

    move-result v5

    if-eq v3, v5, :cond_1

    .line 800
    iget-object v3, p0, Lcom/sec/android/app/camera/DimController;->mCurrentDimArray:[Z

    aget-boolean v3, v3, v1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLView;->setDim(Z)V

    goto :goto_2

    .line 789
    .end local v2    # "view":Lcom/samsung/android/glview/GLView;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 807
    :cond_4
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/android/app/camera/DimController;->mIsNeedSynchronizeDim:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "arg0"    # Landroid/os/Parcel;
    .param p2, "arg1"    # I

    .prologue
    .line 812
    return-void
.end method
