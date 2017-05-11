.class final Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$1;
.super Ljava/util/HashMap;
.source "PreferenceSettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 98
    const-string v0, "camera_resolution_rear"

    const-string v1, "6001"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string v0, "camcorder_resolution_rear"

    const-string v1, "6002"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string v0, "camera_resolution_rear_spinner"

    const-string v1, "6001"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string v0, "camcorder_rear_resolution_spinner"

    const-string v1, "6002"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string v0, "camera_resolution_front"

    const-string v1, "6006"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const-string v0, "camcorder_resolution_front"

    const-string v1, "6007"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string v0, "camera_resolution_front_spinner"

    const-string v1, "6006"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string v0, "camcorder_front_resolution_spinner"

    const-string v1, "6007"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string v0, "rear_timer"

    const-string v1, "6003"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string v0, "front_timer"

    const-string v1, "6008"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string v0, "shooting_method"

    const-string v1, "6010"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string v0, "camera_volume_key_spinner"

    const-string v1, "6020"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string v0, "reset"

    const-string v1, "6022"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string v0, "contact_us"

    const-string v1, "6024"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string v0, "pref_global_setup_object_trackingaf_key"

    const-string v1, "6004"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-string v0, "pref_global_rear_lens_distortion_correction_key"

    const-string v1, "6005"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-string v0, "pref_global_setup_self_flip_key"

    const-string v1, "6009"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string v0, "pref_global_motion_photo_key"

    const-string v1, "6011"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const-string v0, "pref_global_camcorder_antishake_key"

    const-string v1, "6012"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const-string v0, "pref_camera_guideline_key"

    const-string v1, "6013"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const-string v0, "pref_global_setup_gps_key"

    const-string v1, "6014"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    const-string v0, "pref_global_setup_review_key"

    const-string v1, "6015"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-string v0, "pref_global_camera_quick_shot_using_power_key"

    const-string v1, "6016"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const-string v0, "pref_global_camera_quick_shot"

    const-string v1, "6016"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    const-string v0, "pref_global_setup_voice_control_key"

    const-string v1, "6017"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const-string v0, "pref_global_setup_floating_camera_button_key"

    const-string v1, "6018"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string v0, "pref_global_setup_storage_key"

    const-string v1, "6019"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const-string v0, "pref_global_camera_shutter_sound_key"

    const-string v1, "6021"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const-string v0, "pref_camera_help_key"

    const-string v1, "6023"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const-string v0, "pref_camera_tap_to_take_pictures_key"

    const-string v1, "6071"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const-string v0, "pref_global_camera_detection_mode_key"

    const-string v1, "6072"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    const-string v0, "pref_camera_hrm_shutter_key"

    const-string v1, "6073"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    const-string v0, "pref_camera_qrcode_detection"

    const-string v1, "9051"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    return-void
.end method
