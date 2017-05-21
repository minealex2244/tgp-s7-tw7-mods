.class public Lcom/sec/android/app/camera/executor/NlgIdMap;
.super Ljava/lang/Object;
.source "NlgIdMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;,
        Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;
    }
.end annotation


# static fields
.field public static final CAMERA_MODE_ALREADY_SET_NO:I = 0x11

.field public static final CAMERA_MODE_ALREADY_SET_YES:I = 0x10

.field public static final CAMERA_MODE_VALUE_FRONT:I = 0x23

.field public static final CAMERA_MODE_VALUE_REAR:I = 0x24

.field public static final CURRENT_FILTER_ADJUST_AVAILABLE_NO:I = 0x16

.field public static final CURRENT_FILTER_ADJUST_AVAILABLE_YES:I = 0x17

.field public static final CURRENT_FILTER_EDITABLE_NO:I = 0x19

.field public static final CURRENT_FILTER_EDITABLE_YES:I = 0x18

.field public static final CURRENT_MODE_TYPE_FRONT:I = 0xb

.field public static final CURRENT_MODE_TYPE_REAR:I = 0xa

.field public static final CURRENT_MODE_VALID_NO:I = 0xf

.field public static final CURRENT_MODE_VALID_YES:I = 0xe

.field public static final FILTER_ALREADY_SET_NO:I = 0x15

.field public static final FILTER_ALREADY_SET_YES:I = 0x14

.field public static final FILTER_EXIST_NO:I = 0x12

.field public static final FILTER_VALID_NO:I = 0x13

.field public static final FRONT_MODE_ALREADY_SET_NO:I = 0x26

.field public static final FRONT_MODE_ALREADY_SET_YES:I = 0x25

.field public static final MEMORY_CARD_INSERTED_NO:I = 0x29

.field public static final MODE_ALREADY_SET_NO:I = 0x7

.field public static final MODE_ALREADY_SET_YES:I = 0x6

.field public static final MODE_AVAILABLE_NO:I = 0x3

.field public static final MODE_DOWNLOADABLE_NO:I = 0x5

.field public static final MODE_DOWNLOADABLE_YES:I = 0x4

.field public static final MODE_EXIST_NO:I = 0x2

.field public static final MODE_EXIST_YES:I = 0x1

.field public static final MODE_TYPE_FRONT:I = 0x9

.field public static final MODE_TYPE_REAR:I = 0x8

.field public static final MODE_VALID_NO:I = 0xd

.field public static final MODE_VALID_YES:I = 0xc

.field public static final NLG_ERROR_ALREADY_SET:I = 0x2

.field public static final NLG_ERROR_CAMERA_TYPE_MISMATCH:I = 0x4

.field public static final NLG_ERROR_CANNOT_ADJUST:I = 0x9

.field public static final NLG_ERROR_CANNOT_EDIT_IN_CURRENT_MODE:I = 0xb

.field public static final NLG_ERROR_CANNOT_EDIT_IN_REQUESTED_MODE:I = 0xa

.field public static final NLG_ERROR_CANNOT_EXECUTE_WITH_CURRENT_MODE:I = 0x7

.field public static final NLG_ERROR_CANNOT_PROCESS_BY_OTHER_SETTING:I = 0x8

.field public static final NLG_ERROR_INVALID_PARAMETER:I = 0x6

.field public static final NLG_ERROR_NEED_TO_DOWNLOAD:I = 0x5

.field public static final NLG_ERROR_NONE:I = 0x0

.field public static final NLG_ERROR_NOT_IN_CURRENT_LIST:I = 0x3

.field public static final NLG_ERROR_NO_PARAMETER:I = 0x1

.field public static final NLG_NORMAL_RESULT:I = 0x64

.field private static final NLG_STRING_ADJUST_AVAILABLE:Ljava/lang/String; = "AdjustAvailable"

.field private static final NLG_STRING_ALREADY_SET:Ljava/lang/String; = "AlreadySet"

.field public static final NLG_STRING_ANTI_FOG_SETTING:Ljava/lang/String; = "AntiFogSetting"

.field private static final NLG_STRING_AVAILABLE:Ljava/lang/String; = "Available"

.field public static final NLG_STRING_BEAUTY_SETTING:Ljava/lang/String; = "BeautySetting"

.field public static final NLG_STRING_CAMERA_MODE:Ljava/lang/String; = "CameraMode"

.field public static final NLG_STRING_CURRENT_FILTER:Ljava/lang/String; = "CurrentFilter"

.field public static final NLG_STRING_CURRENT_MODE:Ljava/lang/String; = "CurrentMode"

.field private static final NLG_STRING_DOWNLOADABLE:Ljava/lang/String; = "Downloadable"

.field private static final NLG_STRING_EDITABLE:Ljava/lang/String; = "Editable"

.field private static final NLG_STRING_EXIST:Ljava/lang/String; = "Exist"

.field public static final NLG_STRING_FILTER:Ljava/lang/String; = "Filter"

.field private static final NLG_STRING_FRONT:Ljava/lang/String; = "front"

.field public static final NLG_STRING_FRONT_MODE:Ljava/lang/String; = "FrontMode"

.field public static final NLG_STRING_GRID_LINES_SETTING:Ljava/lang/String; = "GridlinesSetting"

.field public static final NLG_STRING_HYPERLAPSE_SETTING:Ljava/lang/String; = "HyperLapseSetting"

.field private static final NLG_STRING_INSERTED:Ljava/lang/String; = "Inserted"

.field public static final NLG_STRING_MEMORY_CARD:Ljava/lang/String; = "MemoryCard"

.field public static final NLG_STRING_MODE:Ljava/lang/String; = "Mode"

.field private static final NLG_STRING_NO:Ljava/lang/String; = "no"

.field public static final NLG_STRING_PICTURE_SIZE:Ljava/lang/String; = "PictureSize"

.field public static final NLG_STRING_PRO_FILTER:Ljava/lang/String; = "Profilter"

.field public static final NLG_STRING_PRO_SETTING:Ljava/lang/String; = "ProSetting"

.field public static final NLG_STRING_QUICK_LAUNCH_SELECT_SETTING:Ljava/lang/String; = "QuickLaunchSelectSetting"

.field private static final NLG_STRING_REAR:Ljava/lang/String; = "rear"

.field public static final NLG_STRING_REAR_MODE:Ljava/lang/String; = "RearMode"

.field public static final NLG_STRING_SELFIE_MODE:Ljava/lang/String; = "SelfieMode"

.field public static final NLG_STRING_SETTING:Ljava/lang/String; = "Setting"

.field public static final NLG_STRING_TIMER_SETTING:Ljava/lang/String; = "TimerSetting"

.field private static final NLG_STRING_TYPE:Ljava/lang/String; = "Type"

.field private static final NLG_STRING_VALID:Ljava/lang/String; = "Valid"

.field private static final NLG_STRING_VALUE:Ljava/lang/String; = "Value"

.field public static final NLG_STRING_VIDEO_SIZE:Ljava/lang/String; = "VideoSize"

.field public static final NLG_STRING_VOLUME_KEY_FUNCTION_SETTING:Ljava/lang/String; = "VolumekeyFunctionSetting"

.field private static final NLG_STRING_YES:Ljava/lang/String; = "yes"

.field public static final NLG_TYPE_CHANGE_SHOOTING_MODE:I = 0x1

.field public static final NLG_TYPE_CHANGE_STORAGE:I = 0xb

.field public static final NLG_TYPE_EXECUTE_WITH_CURRENT_MODE:I = 0x4

.field public static final NLG_TYPE_RECORDING:I = 0xd

.field public static final NLG_TYPE_SCREEN_PARAMETER_NONE:I = 0x5

.field public static final NLG_TYPE_SET_EFFECT_AND_CATEGORY:I = 0x6

.field public static final NLG_TYPE_SET_EFFECT_AND_DETAIL_SETTING:I = 0x7

.field public static final NLG_TYPE_SET_PARAM_NAME_BY_STATE_NAME:I = 0x2

.field public static final NLG_TYPE_SET_PARAM_NAME_WITH_SETTING:I = 0xc

.field public static final NLG_TYPE_SET_PICTURE_RESOLUTION:I = 0x8

.field public static final NLG_TYPE_SET_PRO_FILTER:I = 0xa

.field public static final NLG_TYPE_SET_VIDEO_RESOLUTION:I = 0x9

.field public static final NLG_TYPE_SWITCH_CAMERA:I = 0x3

.field public static final NLG_TYPE_UNKNOWN:I = 0x0

.field public static final PICTURE_SIZE_ALREADY_SET_NO:I = 0x1d

.field public static final PICTURE_SIZE_ALREADY_SET_YES:I = 0x1c

.field public static final PICTURE_SIZE_AVAILABLE_NO:I = 0x1e

.field public static final PICTURE_SIZE_EXIST_NO:I = 0x1a

.field public static final PICTURE_SIZE_VALID_NO:I = 0x1b

.field public static final PRO_SETTING_ALREADY_SET_NO:I = 0x2d

.field public static final PRO_SETTING_ALREADY_SET_YES:I = 0x2c

.field public static final PRO_SETTING_EDITABLE_NO:I = 0x2e

.field public static final PRO_SETTING_EXIST_NO:I = 0x2a

.field public static final PRO_SETTING_VALID_NO:I = 0x2b

.field public static final REAR_MODE_ALREADY_SET_NO:I = 0x27

.field public static final REAR_MODE_ALREADY_SET_YES:I = 0x28

.field public static final SELFIE_MODE_VALID_NO:I = 0x31

.field public static final SELFIE_MODE_VALID_YES:I = 0x30

.field private static final TAG:Ljava/lang/String; = "NlgIdMap"

.field public static final VIDEO_SIZE_ALREADY_SET_NO:I = 0x22

.field public static final VIDEO_SIZE_ALREADY_SET_YES:I = 0x21

.field public static final VIDEO_SIZE_AVAILABLE_NO:I = 0x2f

.field public static final VIDEO_SIZE_EXIST_NO:I = 0x1f

.field public static final VIDEO_SIZE_VALID_NO:I = 0x20

.field private static mNlgScreenParamDepot:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 161
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/executor/NlgIdMap;->mNlgScreenParamDepot:Landroid/util/SparseArray;

    .line 165
    const/4 v0, 0x1

    const-string v1, "Mode"

    const-string v2, "Exist"

    const-string v3, "yes"

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/NlgIdMap;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const/4 v0, 0x2

    const-string v1, "Mode"

    const-string v2, "Exist"

    const-string v3, "no"

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/NlgIdMap;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const/4 v0, 0x4

    const-string v1, "Mode"

    const-string v2, "Downloadable"

    const-string v3, "yes"

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/NlgIdMap;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const/4 v0, 0x5

    const-string v1, "Mode"

    const-string v2, "Downloadable"

    const-string v3, "no"

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/NlgIdMap;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const/4 v0, 0x6

    const-string v1, "Mode"

    const-string v2, "AlreadySet"

    const-string v3, "yes"

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/NlgIdMap;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const/4 v0, 0x7

    const-string v1, "Mode"

    const-string v2, "AlreadySet"

    const-string v3, "no"

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/NlgIdMap;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const/16 v0, 0x8

    const-string v1, "Mode"

    const-string v2, "Type"

    const-string v3, "rear"

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/NlgIdMap;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const/16 v0, 0x9

    const-string v1, "Mode"

    const-string v2, "Type"

    const-string v3, "front"

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/NlgIdMap;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const/16 v0, 0xa

    const-string v1, "CurrentMode"

    const-string v2, "Type"

    const-string v3, "rear"

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/NlgIdMap;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const/16 v0, 0xb

    const-string v1, "CurrentMode"

    const-string v2, "Type"

    const-string v3, "front"

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/NlgIdMap;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const/16 v0, 0xc

    const-string v1, "Mode"

    const-string v2, "Valid"

    const-string v3, "yes"

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/NlgIdMap;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const/16 v0, 0xd

    const-string v1, "Mode"

    const-string v2, "Valid"

    const-string v3, "no"

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/NlgIdMap;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const/4 v0, 0x3

    const-string v1, "Mode"

    const-string v2, "Available"

    const-string v3, "no"

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/NlgIdMap;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const/16 v0, 0xe

    const-string v1, "CurrentMode"

    const-string v2, "Valid"

    const-string v3, "yes"

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/NlgIdMap;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const/16 v0, 0xf

    const-string v1, "CurrentMode"

    const-string v2, "Valid"

    const-string v3, "no"

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/NlgIdMap;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const/16 v0, 0x10

    const-string v1, "CameraMode"

    const-string v2, "AlreadySet"

    const-string v3, "yes"

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/NlgIdMap;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const/16 v0, 0x11

    const-string v1, "CameraMode"

    const-string v2, "AlreadySet"

    const-string v3, "no"

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/NlgIdMap;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const/16 v0, 0x12

    const-string v1, "Filter"

    const-string v2, "Exist"

    const-string v3, "no"

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/NlgIdMap;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const/16 v0, 0x13

    const-string v1, "Filter"

    const-string v2, "Valid"

    const-string v3, "no"

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/NlgIdMap;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const/16 v0, 0x14

    const-string v1, "Filter"

    const-string v2, "AlreadySet"

    const-string v3, "yes"

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/NlgIdMap;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const/16 v0, 0x15

    const-string v1, "Filter"

    const-string v2, "AlreadySet"

    const-string v3, "no"

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/NlgIdMap;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const/16 v0, 0x2a

    const-string v1, "ProSetting"

    const-string v2, "Exist"

    const-string v3, "no"

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/NlgIdMap;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const/16 v0, 0x2b

    const-string v1, "ProSetting"

    const-string v2, "Valid"

    const-string v3, "no"

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/NlgIdMap;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const/16 v0, 0x2c

    const-string v1, "ProSetting"

    const-string v2, "AlreadySet"

    const-string v3, "yes"

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/NlgIdMap;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const/16 v0, 0x2d

    const-string v1, "ProSetting"

    const-string v2, "AlreadySet"

    const-string v3, "no"

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/NlgIdMap;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const/16 v0, 0x2e

    const-string v1, "ProSetting"

    const-string v2, "Editable"

    const-string v3, "no"

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/NlgIdMap;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const/16 v0, 0x17

    const-string v1, "CurrentFilter"

    const-string v2, "AdjustAvailable"

    const-string v3, "yes"

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/NlgIdMap;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const/16 v0, 0x16

    const-string v1, "CurrentFilter"

    const-string v2, "AdjustAvailable"

    const-string v3, "no"

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/NlgIdMap;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const/16 v0, 0x18

    const-string v1, "CurrentFilter"

    const-string v2, "Editable"

    const-string v3, "yes"

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/NlgIdMap;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const/16 v0, 0x19

    const-string v1, "CurrentFilter"

    const-string v2, "Editable"

    const-string v3, "no"

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/NlgIdMap;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const/16 v0, 0x1a

    const-string v1, "PictureSize"

    const-string v2, "Exist"

    const-string v3, "no"

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/NlgIdMap;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const/16 v0, 0x1b

    const-string v1, "PictureSize"

    const-string v2, "Valid"

    const-string v3, "no"

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/NlgIdMap;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const/16 v0, 0x1c

    const-string v1, "PictureSize"

    const-string v2, "AlreadySet"

    const-string v3, "yes"

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/NlgIdMap;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const/16 v0, 0x1d

    const-string v1, "PictureSize"

    const-string v2, "AlreadySet"

    const-string v3, "no"

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/NlgIdMap;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const/16 v0, 0x1e

    const-string v1, "PictureSize"

    const-string v2, "Available"

    const-string v3, "no"

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/NlgIdMap;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const/16 v0, 0x1f

    const-string v1, "VideoSize"

    const-string v2, "Exist"

    const-string v3, "no"

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/NlgIdMap;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const/16 v0, 0x20

    const-string v1, "VideoSize"

    const-string v2, "Valid"

    const-string v3, "no"

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/NlgIdMap;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const/16 v0, 0x21

    const-string v1, "VideoSize"

    const-string v2, "AlreadySet"

    const-string v3, "yes"

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/NlgIdMap;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const/16 v0, 0x22

    const-string v1, "VideoSize"

    const-string v2, "AlreadySet"

    const-string v3, "no"

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/NlgIdMap;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const/16 v0, 0x2f

    const-string v1, "VideoSize"

    const-string v2, "Available"

    const-string v3, "no"

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/NlgIdMap;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const/16 v0, 0x23

    const-string v1, "CameraMode"

    const-string v2, "Value"

    const-string v3, "front"

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/NlgIdMap;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const/16 v0, 0x24

    const-string v1, "CameraMode"

    const-string v2, "Value"

    const-string v3, "rear"

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/NlgIdMap;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const/16 v0, 0x25

    const-string v1, "FrontMode"

    const-string v2, "AlreadySet"

    const-string v3, "yes"

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/NlgIdMap;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const/16 v0, 0x26

    const-string v1, "FrontMode"

    const-string v2, "AlreadySet"

    const-string v3, "no"

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/NlgIdMap;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const/16 v0, 0x28

    const-string v1, "RearMode"

    const-string v2, "AlreadySet"

    const-string v3, "yes"

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/NlgIdMap;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const/16 v0, 0x27

    const-string v1, "RearMode"

    const-string v2, "AlreadySet"

    const-string v3, "no"

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/NlgIdMap;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const/16 v0, 0x29

    const-string v1, "MemoryCard"

    const-string v2, "Inserted"

    const-string v3, "no"

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/NlgIdMap;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const/16 v0, 0x30

    const-string v1, "SelfieMode"

    const-string v2, "Valid"

    const-string v3, "yes"

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/NlgIdMap;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const/16 v0, 0x31

    const-string v1, "SelfieMode"

    const-string v2, "Valid"

    const-string v3, "no"

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/NlgIdMap;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "nglId"    # I
    .param p1, "paramName"    # Ljava/lang/String;
    .param p2, "attrName"    # Ljava/lang/String;
    .param p3, "attrValue"    # Ljava/lang/String;

    .prologue
    .line 519
    sget-object v0, Lcom/sec/android/app/camera/executor/NlgIdMap;->mNlgScreenParamDepot:Landroid/util/SparseArray;

    new-instance v1, Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    invoke-direct {v1, p1, p2, p3}, Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 520
    return-void
.end method

.method public static checkGroupTypeStateByStateId(I)I
    .locals 3
    .param p0, "stateID"    # I

    .prologue
    .line 226
    const-string v0, "NlgIdMap"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "statId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    packed-switch p0, :pswitch_data_0

    .line 391
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 229
    :pswitch_1
    const/4 v0, 0x3

    goto :goto_0

    .line 231
    :pswitch_2
    const/16 v0, 0xd

    goto :goto_0

    .line 268
    :pswitch_3
    const/4 v0, 0x1

    goto :goto_0

    .line 326
    :pswitch_4
    const/4 v0, 0x2

    goto :goto_0

    .line 351
    :pswitch_5
    const/16 v0, 0xc

    goto :goto_0

    .line 365
    :pswitch_6
    const/4 v0, 0x4

    goto :goto_0

    .line 369
    :pswitch_7
    const/4 v0, 0x5

    goto :goto_0

    .line 372
    :pswitch_8
    const/4 v0, 0x6

    goto :goto_0

    .line 376
    :pswitch_9
    const/4 v0, 0x7

    goto :goto_0

    .line 380
    :pswitch_a
    const/16 v0, 0xa

    goto :goto_0

    .line 383
    :pswitch_b
    const/16 v0, 0x9

    goto :goto_0

    .line 386
    :pswitch_c
    const/16 v0, 0x8

    goto :goto_0

    .line 389
    :pswitch_d
    const/16 v0, 0xb

    goto :goto_0

    .line 227
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_6
        :pswitch_6
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_6
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_8
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_c
        :pswitch_4
        :pswitch_4
        :pswitch_b
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_c
        :pswitch_b
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_4
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_9
        :pswitch_7
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_5
        :pswitch_a
        :pswitch_a
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_d
        :pswitch_d
        :pswitch_4
        :pswitch_4
        :pswitch_6
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public static get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 396
    sget-object v0, Lcom/sec/android/app/camera/executor/NlgIdMap;->mNlgScreenParamDepot:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    return-object v0
.end method

.method public static getNlgResultParam(Landroid/content/Context;Ljava/lang/String;II)Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "paramName"    # Ljava/lang/String;
    .param p2, "menuId"    # I
    .param p3, "modeId"    # I

    .prologue
    .line 400
    invoke-static {p2, p3}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v0

    .line 401
    .local v0, "commandId":I
    invoke-static {v0}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v1

    .line 402
    .local v1, "idSet":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    iget v3, v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 404
    .local v2, "value":Ljava/lang/String;
    new-instance v3, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;

    invoke-direct {v3, p1, v2}, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method public static getNlgScreenParamByParamName(Ljava/lang/String;I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;
    .locals 4
    .param p0, "condition_name"    # Ljava/lang/String;
    .param p1, "nlg_type"    # I

    .prologue
    .line 410
    sparse-switch p1, :sswitch_data_0

    .line 432
    const-string v2, "NlgIdMap"

    const-string v3, "return type match none..."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    const/4 v2, 0x0

    .line 436
    :goto_0
    return-object v2

    .line 412
    :sswitch_0
    const-string v0, "AlreadySet"

    .line 413
    .local v0, "attrName":Ljava/lang/String;
    const-string v1, "yes"

    .line 436
    .local v1, "attrValue":Ljava/lang/String;
    :goto_1
    new-instance v2, Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    invoke-direct {v2, p0, v0, v1}, Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 416
    .end local v0    # "attrName":Ljava/lang/String;
    .end local v1    # "attrValue":Ljava/lang/String;
    :sswitch_1
    const-string v0, "Exist"

    .line 417
    .restart local v0    # "attrName":Ljava/lang/String;
    const-string v1, "no"

    .line 418
    .restart local v1    # "attrValue":Ljava/lang/String;
    goto :goto_1

    .line 420
    .end local v0    # "attrName":Ljava/lang/String;
    .end local v1    # "attrValue":Ljava/lang/String;
    :sswitch_2
    const-string v0, "Valid"

    .line 421
    .restart local v0    # "attrName":Ljava/lang/String;
    const-string v1, "no"

    .line 422
    .restart local v1    # "attrValue":Ljava/lang/String;
    goto :goto_1

    .line 424
    .end local v0    # "attrName":Ljava/lang/String;
    .end local v1    # "attrValue":Ljava/lang/String;
    :sswitch_3
    const-string v0, "Available"

    .line 425
    .restart local v0    # "attrName":Ljava/lang/String;
    const-string v1, "no"

    .line 426
    .restart local v1    # "attrValue":Ljava/lang/String;
    goto :goto_1

    .line 428
    .end local v0    # "attrName":Ljava/lang/String;
    .end local v1    # "attrValue":Ljava/lang/String;
    :sswitch_4
    const-string v0, "AlreadySet"

    .line 429
    .restart local v0    # "attrName":Ljava/lang/String;
    const-string v1, "no"

    .line 430
    .restart local v1    # "attrValue":Ljava/lang/String;
    goto :goto_1

    .line 410
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x6 -> :sswitch_2
        0x8 -> :sswitch_3
        0x64 -> :sswitch_4
    .end sparse-switch
.end method

.method public static getNlgScreenParamWithSetting(II)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;
    .locals 6
    .param p0, "requestId"    # I
    .param p1, "nlg_type"    # I

    .prologue
    const/4 v3, 0x0

    .line 444
    sparse-switch p0, :sswitch_data_0

    .line 486
    const-string v4, "NlgIdMap"

    const-string v5, "return type match none..."

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    :goto_0
    return-object v3

    .line 446
    :sswitch_0
    const-string v2, "QuickLaunchSelectSetting"

    .line 489
    .local v2, "paramName":Ljava/lang/String;
    :goto_1
    sparse-switch p1, :sswitch_data_1

    .line 511
    const-string v4, "NlgIdMap"

    const-string v5, "return type match none..."

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 449
    .end local v2    # "paramName":Ljava/lang/String;
    :sswitch_1
    const-string v2, "AntiFogSetting"

    .line 450
    .restart local v2    # "paramName":Ljava/lang/String;
    goto :goto_1

    .line 452
    .end local v2    # "paramName":Ljava/lang/String;
    :sswitch_2
    const-string v2, "VolumekeyFunctionSetting"

    .line 453
    .restart local v2    # "paramName":Ljava/lang/String;
    goto :goto_1

    .line 455
    .end local v2    # "paramName":Ljava/lang/String;
    :sswitch_3
    const-string v2, "GridlinesSetting"

    .line 456
    .restart local v2    # "paramName":Ljava/lang/String;
    goto :goto_1

    .line 458
    .end local v2    # "paramName":Ljava/lang/String;
    :sswitch_4
    const-string v2, "HyperLapseSetting"

    .line 459
    .restart local v2    # "paramName":Ljava/lang/String;
    goto :goto_1

    .line 465
    .end local v2    # "paramName":Ljava/lang/String;
    :sswitch_5
    const-string v2, "BeautySetting"

    .line 466
    .restart local v2    # "paramName":Ljava/lang/String;
    goto :goto_1

    .line 474
    .end local v2    # "paramName":Ljava/lang/String;
    :sswitch_6
    const-string v2, "ProSetting"

    .line 475
    .restart local v2    # "paramName":Ljava/lang/String;
    goto :goto_1

    .line 483
    .end local v2    # "paramName":Ljava/lang/String;
    :sswitch_7
    const-string v2, "TimerSetting"

    .line 484
    .restart local v2    # "paramName":Ljava/lang/String;
    goto :goto_1

    .line 491
    :sswitch_8
    const-string v0, "AlreadySet"

    .line 492
    .local v0, "attrName":Ljava/lang/String;
    const-string v1, "yes"

    .line 515
    .local v1, "attrValue":Ljava/lang/String;
    :goto_2
    new-instance v3, Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    invoke-direct {v3, v2, v0, v1}, Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 495
    .end local v0    # "attrName":Ljava/lang/String;
    .end local v1    # "attrValue":Ljava/lang/String;
    :sswitch_9
    const-string v0, "Exist"

    .line 496
    .restart local v0    # "attrName":Ljava/lang/String;
    const-string v1, "no"

    .line 497
    .restart local v1    # "attrValue":Ljava/lang/String;
    goto :goto_2

    .line 499
    .end local v0    # "attrName":Ljava/lang/String;
    .end local v1    # "attrValue":Ljava/lang/String;
    :sswitch_a
    const-string v0, "Valid"

    .line 500
    .restart local v0    # "attrName":Ljava/lang/String;
    const-string v1, "no"

    .line 501
    .restart local v1    # "attrValue":Ljava/lang/String;
    goto :goto_2

    .line 503
    .end local v0    # "attrName":Ljava/lang/String;
    .end local v1    # "attrValue":Ljava/lang/String;
    :sswitch_b
    const-string v0, "Available"

    .line 504
    .restart local v0    # "attrName":Ljava/lang/String;
    const-string v1, "no"

    .line 505
    .restart local v1    # "attrValue":Ljava/lang/String;
    goto :goto_2

    .line 507
    .end local v0    # "attrName":Ljava/lang/String;
    .end local v1    # "attrValue":Ljava/lang/String;
    :sswitch_c
    const-string v0, "AlreadySet"

    .line 508
    .restart local v0    # "attrName":Ljava/lang/String;
    const-string v1, "no"

    .line 509
    .restart local v1    # "attrValue":Ljava/lang/String;
    goto :goto_2

    .line 444
    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_7
        0x42 -> :sswitch_7
        0x49 -> :sswitch_7
        0x4a -> :sswitch_7
        0x6a -> :sswitch_3
        0x71 -> :sswitch_2
        0x81 -> :sswitch_4
        0x82 -> :sswitch_6
        0x83 -> :sswitch_6
        0x85 -> :sswitch_6
        0x87 -> :sswitch_6
        0x89 -> :sswitch_6
        0x8f -> :sswitch_6
        0x91 -> :sswitch_6
        0x96 -> :sswitch_5
        0x97 -> :sswitch_5
        0x98 -> :sswitch_5
        0x99 -> :sswitch_5
        0x9a -> :sswitch_5
        0xae -> :sswitch_1
        0xb3 -> :sswitch_0
        0xb6 -> :sswitch_7
        0xb7 -> :sswitch_7
        0xb8 -> :sswitch_7
    .end sparse-switch

    .line 489
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_9
        0x2 -> :sswitch_8
        0x6 -> :sswitch_a
        0x8 -> :sswitch_b
        0x64 -> :sswitch_c
    .end sparse-switch
.end method
