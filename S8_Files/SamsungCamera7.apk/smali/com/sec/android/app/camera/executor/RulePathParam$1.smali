.class final Lcom/sec/android/app/camera/executor/RulePathParam$1;
.super Landroid/util/SparseArray;
.source "RulePathParam.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/executor/RulePathParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/SparseArray",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 126
    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    .line 128
    const/4 v0, 0x1

    const-string v1, "RecordMode"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/executor/RulePathParam$1;->append(ILjava/lang/Object;)V

    .line 129
    const/4 v0, 0x2

    const-string v1, "FlashMode"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/executor/RulePathParam$1;->append(ILjava/lang/Object;)V

    .line 130
    const/4 v0, 0x3

    const-string v1, "HDRMode"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/executor/RulePathParam$1;->append(ILjava/lang/Object;)V

    .line 131
    const/4 v0, 0x4

    const-string v1, "TimerMode"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/executor/RulePathParam$1;->append(ILjava/lang/Object;)V

    .line 132
    const/4 v0, 0x5

    const-string v1, "MotionphotoMode"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/executor/RulePathParam$1;->append(ILjava/lang/Object;)V

    .line 133
    const/4 v0, 0x6

    const-string v1, "SetMode"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/executor/RulePathParam$1;->append(ILjava/lang/Object;)V

    .line 134
    const/4 v0, 0x7

    const-string v1, "ChangeMode"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/executor/RulePathParam$1;->append(ILjava/lang/Object;)V

    .line 135
    const/16 v0, 0xa

    const-string v1, "FilterMode"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/executor/RulePathParam$1;->append(ILjava/lang/Object;)V

    .line 136
    const/16 v0, 0xc

    const-string v1, "RearVideoMode"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/executor/RulePathParam$1;->append(ILjava/lang/Object;)V

    .line 137
    const/16 v0, 0xd

    const-string v1, "TrackingAFMode"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/executor/RulePathParam$1;->append(ILjava/lang/Object;)V

    .line 138
    const/16 v0, 0xe

    const-string v1, "ShapeCorrectionMode"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/executor/RulePathParam$1;->append(ILjava/lang/Object;)V

    .line 139
    const/16 v0, 0x10

    const-string v1, "FrontVideoMode"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/executor/RulePathParam$1;->append(ILjava/lang/Object;)V

    .line 140
    const/16 v0, 0xf

    const-string v1, "FrontPictureMode"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/executor/RulePathParam$1;->append(ILjava/lang/Object;)V

    .line 141
    const/16 v0, 0x11

    const-string v1, "WayMode"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/executor/RulePathParam$1;->append(ILjava/lang/Object;)V

    .line 142
    const/16 v0, 0x12

    const-string v1, "AsPreviewMode"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/executor/RulePathParam$1;->append(ILjava/lang/Object;)V

    .line 143
    const/16 v0, 0x13

    const-string v1, "StabilizationMode"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/executor/RulePathParam$1;->append(ILjava/lang/Object;)V

    .line 144
    const/16 v0, 0x14

    const-string v1, "ReviewpictureMode"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/executor/RulePathParam$1;->append(ILjava/lang/Object;)V

    .line 145
    const/16 v0, 0x15

    const-string v1, "ShareMode"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/executor/RulePathParam$1;->append(ILjava/lang/Object;)V

    .line 146
    const/16 v0, 0xb

    const-string v1, "RearPictureMode"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/executor/RulePathParam$1;->append(ILjava/lang/Object;)V

    .line 147
    const/16 v0, 0x16

    const-string v1, "PanoramaMode"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/executor/RulePathParam$1;->append(ILjava/lang/Object;)V

    .line 148
    const/16 v0, 0x1e

    const-string v1, "HyperlapseMode"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/executor/RulePathParam$1;->append(ILjava/lang/Object;)V

    .line 149
    const/16 v0, 0x17

    const-string v1, "ProMode"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/executor/RulePathParam$1;->append(ILjava/lang/Object;)V

    .line 150
    const/16 v0, 0x18

    const-string v1, "FoodMode"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/executor/RulePathParam$1;->append(ILjava/lang/Object;)V

    .line 151
    const/16 v0, 0x19

    const-string v1, "SkintoneMode"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/executor/RulePathParam$1;->append(ILjava/lang/Object;)V

    .line 152
    const/16 v0, 0x1a

    const-string v1, "SelfieMode"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/executor/RulePathParam$1;->append(ILjava/lang/Object;)V

    .line 153
    const/16 v0, 0x1b

    const-string v1, "WideselfieMode"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/executor/RulePathParam$1;->append(ILjava/lang/Object;)V

    .line 154
    const/16 v0, 0x1c

    const-string v1, "DualcameraMode"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/executor/RulePathParam$1;->append(ILjava/lang/Object;)V

    .line 155
    const/16 v0, 0x1d

    const-string v1, "AssistantShutterMode"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/executor/RulePathParam$1;->append(ILjava/lang/Object;)V

    .line 156
    const/16 v0, 0x3e

    const-string v1, "LocationtagsMode"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/executor/RulePathParam$1;->append(ILjava/lang/Object;)V

    .line 157
    const/16 v0, 0x3f

    const-string v1, "VoicecontrolMode"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/executor/RulePathParam$1;->append(ILjava/lang/Object;)V

    .line 158
    const/16 v0, 0x40

    const-string v1, "GalleryMode"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/executor/RulePathParam$1;->append(ILjava/lang/Object;)V

    .line 159
    const/16 v0, 0x2f

    const-string v1, "SelectFilterForSetting"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/executor/RulePathParam$1;->append(ILjava/lang/Object;)V

    .line 160
    const/16 v0, 0x1f

    const-string v1, "SwitchCamera"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/executor/RulePathParam$1;->append(ILjava/lang/Object;)V

    .line 161
    const/16 v0, 0x20

    const-string v1, "RearTimer"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/executor/RulePathParam$1;->append(ILjava/lang/Object;)V

    .line 162
    const/16 v0, 0x21

    const-string v1, "FrontTimer"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/executor/RulePathParam$1;->append(ILjava/lang/Object;)V

    .line 163
    const/16 v0, 0x22

    const-string v1, "TakeRearTimer"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/executor/RulePathParam$1;->append(ILjava/lang/Object;)V

    .line 164
    const/16 v0, 0x23

    const-string v1, "TakeFrontTimer"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/executor/RulePathParam$1;->append(ILjava/lang/Object;)V

    .line 165
    const/16 v0, 0x24

    const-string v1, "SelectBasicFilter"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/executor/RulePathParam$1;->append(ILjava/lang/Object;)V

    .line 166
    const/16 v0, 0x25

    const-string v1, "SelectBeautyFilter"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/executor/RulePathParam$1;->append(ILjava/lang/Object;)V

    .line 167
    const/16 v0, 0x27

    const-string v1, "RearVideoSize"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/executor/RulePathParam$1;->append(ILjava/lang/Object;)V

    .line 168
    const/16 v0, 0x2a

    const-string v1, "FrontVideoSize"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/executor/RulePathParam$1;->append(ILjava/lang/Object;)V

    .line 169
    const/16 v0, 0x2d

    const-string v1, "Gridlines"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/executor/RulePathParam$1;->append(ILjava/lang/Object;)V

    .line 170
    const/16 v0, 0x2e

    const-string v1, "Volumekeyfunction"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/executor/RulePathParam$1;->append(ILjava/lang/Object;)V

    .line 171
    const/16 v0, 0x30

    const-string v1, "Selectspeed"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/executor/RulePathParam$1;->append(ILjava/lang/Object;)V

    .line 172
    const/16 v0, 0x31

    const-string v1, "Metering"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/executor/RulePathParam$1;->append(ILjava/lang/Object;)V

    .line 173
    const/16 v0, 0x32

    const-string v1, "AFarea"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/executor/RulePathParam$1;->append(ILjava/lang/Object;)V

    .line 174
    const/16 v0, 0x33

    const-string v1, "ISO"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/executor/RulePathParam$1;->append(ILjava/lang/Object;)V

    .line 175
    const/16 v0, 0x34

    const-string v1, "ShutterSpeed"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/executor/RulePathParam$1;->append(ILjava/lang/Object;)V

    .line 176
    const/16 v0, 0x35

    const-string v1, "EV"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/executor/RulePathParam$1;->append(ILjava/lang/Object;)V

    .line 177
    const/16 v0, 0x36

    const-string v1, "ProFilter"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/executor/RulePathParam$1;->append(ILjava/lang/Object;)V

    .line 178
    const/16 v0, 0x37

    const-string v1, "WB"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/executor/RulePathParam$1;->append(ILjava/lang/Object;)V

    .line 179
    const/16 v0, 0x38

    const-string v1, "Focus"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/executor/RulePathParam$1;->append(ILjava/lang/Object;)V

    .line 180
    const/16 v0, 0x3d

    const-string v1, "SkinTone"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/executor/RulePathParam$1;->append(ILjava/lang/Object;)V

    .line 181
    const/16 v0, 0x39

    const-string v1, "Spotlight"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/executor/RulePathParam$1;->append(ILjava/lang/Object;)V

    .line 182
    const/16 v0, 0x3a

    const-string v1, "Spotlightdirection"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/executor/RulePathParam$1;->append(ILjava/lang/Object;)V

    .line 183
    const/16 v0, 0x3b

    const-string v1, "Slimface"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/executor/RulePathParam$1;->append(ILjava/lang/Object;)V

    .line 184
    const/16 v0, 0x3c

    const-string v1, "Largeeyes"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/executor/RulePathParam$1;->append(ILjava/lang/Object;)V

    .line 185
    const/16 v0, 0x41

    const-string v1, "AntiFogMode"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/executor/RulePathParam$1;->append(ILjava/lang/Object;)V

    .line 186
    const/16 v0, 0x42

    const-string v1, "AntiFog"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/executor/RulePathParam$1;->append(ILjava/lang/Object;)V

    .line 187
    const/16 v0, 0x43

    const-string v1, "QRcodeDetectionMode"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/executor/RulePathParam$1;->append(ILjava/lang/Object;)V

    .line 188
    const/16 v0, 0x28

    const-string v1, "RearRatio"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/executor/RulePathParam$1;->append(ILjava/lang/Object;)V

    .line 189
    const/16 v0, 0x29

    const-string v1, "RearPixel"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/executor/RulePathParam$1;->append(ILjava/lang/Object;)V

    .line 190
    const/16 v0, 0x2b

    const-string v1, "FrontRatio"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/executor/RulePathParam$1;->append(ILjava/lang/Object;)V

    .line 191
    const/16 v0, 0x2c

    const-string v1, "FrontPixel"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/executor/RulePathParam$1;->append(ILjava/lang/Object;)V

    .line 192
    const/16 v0, 0x8

    const-string v1, "CaptureMode"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/executor/RulePathParam$1;->append(ILjava/lang/Object;)V

    .line 193
    const/16 v0, 0x9

    const-string v1, "SwitchCameraMode"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/executor/RulePathParam$1;->append(ILjava/lang/Object;)V

    .line 194
    const/16 v0, 0x3e8

    const-string v1, "camera_change_mode"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/executor/RulePathParam$1;->append(ILjava/lang/Object;)V

    .line 195
    const/16 v0, 0x44

    const-string v1, "QuickLaunchSelect"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/executor/RulePathParam$1;->append(ILjava/lang/Object;)V

    .line 196
    const/16 v0, 0x45

    const-string v1, "WechatVideoMode"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/executor/RulePathParam$1;->append(ILjava/lang/Object;)V

    .line 197
    const/16 v0, 0x46

    const-string v1, "ChangeCommonTimer"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/executor/RulePathParam$1;->append(ILjava/lang/Object;)V

    .line 198
    const/16 v0, 0x47

    const-string v1, "CommonTimer"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/executor/RulePathParam$1;->append(ILjava/lang/Object;)V

    .line 199
    const/16 v0, 0x48

    const-string v1, "TakeCommonTimer"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/executor/RulePathParam$1;->append(ILjava/lang/Object;)V

    .line 200
    return-void
.end method
