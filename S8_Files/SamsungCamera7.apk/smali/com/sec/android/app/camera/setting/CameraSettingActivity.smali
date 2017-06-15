.class public Lcom/sec/android/app/camera/setting/CameraSettingActivity;
.super Landroid/app/Activity;
.source "CameraSettingActivity.java"

# interfaces
.implements Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionSelectListener;
.implements Lcom/sec/android/app/camera/setting/TimerSettingFragment$TimerSelectListener;


# static fields
.field public static final RESULT_RESET:I = 0x64

.field protected static final TAG:Ljava/lang/String; = "CameraSettingActivity"


# instance fields
.field private mBackCameraId:I

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mCameraExecutorManager:Lcom/sec/android/app/camera/CameraExecutorManager;

.field private mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

.field private mFrontCameraId:I

.field private mIsAttachImageMode:Z

.field private mIsAttachVideoMode:Z

.field private mIsBackCamera:Z

.field private mIsDualBackCamera:Z

.field private mIsDualFrontCamera:Z

.field private mIsFromApplicationSettings:Z

.field private mIsFromSecureLocationSetting:Z

.field private mIsFrontCamera:Z

.field private mIsKeyboardCoverCamera:Z

.field private mIsSecureMode:Z

.field private mLayoutRes:I

.field private mLocationManager:Landroid/location/LocationManager;

.field private mMenuDimController:Lcom/sec/android/app/camera/DimController;

.field private mNeedToShowLocationDialog:Z

.field private mPreferenceFragment:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

.field private mSwitchHeader:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 68
    iput-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mCameraExecutorManager:Lcom/sec/android/app/camera/CameraExecutorManager;

    .line 69
    iput-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mPreferenceFragment:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    .line 70
    iput-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mLocationManager:Landroid/location/LocationManager;

    .line 71
    iput-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mIsFromSecureLocationSetting:Z

    .line 72
    iput-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mNeedToShowLocationDialog:Z

    .line 73
    iput-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mIsFromApplicationSettings:Z

    .line 74
    iput-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mIsSecureMode:Z

    .line 75
    iput-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mIsKeyboardCoverCamera:Z

    .line 76
    iput-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mIsAttachImageMode:Z

    .line 77
    iput-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mIsAttachVideoMode:Z

    .line 84
    iput-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    .line 85
    iput-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mMenuDimController:Lcom/sec/android/app/camera/DimController;

    .line 86
    new-instance v0, Lcom/sec/android/app/camera/setting/CameraSettingActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity$1;-><init>(Lcom/sec/android/app/camera/setting/CameraSettingActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 106
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mLayoutRes:I

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/setting/CameraSettingActivity;)Lcom/sec/android/app/camera/DimController;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mMenuDimController:Lcom/sec/android/app/camera/DimController;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/setting/CameraSettingActivity;)Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mPreferenceFragment:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/setting/CameraSettingActivity;)Lcom/sec/android/app/camera/setting/CameraSettingsImpl;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    return-object v0
.end method

.method private deinitIntentFilter()V
    .locals 4

    .prologue
    .line 883
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->MICRO_SD_SLOT:Z

    if-eqz v1, :cond_0

    .line 885
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 890
    :cond_0
    :goto_0
    return-void

    .line 886
    :catch_0
    move-exception v0

    .line 887
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "CameraSettingActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mBroadcastReceiver isn\'t registered : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initIntentFilter()V
    .locals 2

    .prologue
    .line 893
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->MICRO_SD_SLOT:Z

    if-eqz v1, :cond_0

    .line 895
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 898
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 899
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 900
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 901
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 903
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private initializeLocationManager()V
    .locals 1

    .prologue
    .line 906
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mLocationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 907
    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mLocationManager:Landroid/location/LocationManager;

    .line 909
    :cond_0
    return-void
.end method


# virtual methods
.method protected addPreferenceFragment(ILjava/lang/String;)V
    .locals 4
    .param p1, "preferenceResId"    # I
    .param p2, "fragmentName"    # Ljava/lang/String;

    .prologue
    .line 682
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    iget-object v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mMenuDimController:Lcom/sec/android/app/camera/DimController;

    invoke-static {v2, v3, p1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->newInstance(Lcom/sec/android/app/camera/setting/CameraSettingsImpl;Lcom/sec/android/app/camera/DimController;I)Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    move-result-object v1

    .line 684
    .local v1, "preferenceFragment":Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 685
    .local v0, "ft":Landroid/app/FragmentTransaction;
    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mLayoutRes:I

    invoke-virtual {v0, v2, v1, p2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 686
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 687
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 688
    return-void
.end method

.method public finish()V
    .locals 0

    .prologue
    .line 111
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 112
    return-void
.end method

.method public getCurrentSubFragment()I
    .locals 7

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const-string v6, "TIMER_FRAGMENT"

    invoke-virtual {v5, v6}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/setting/TimerSettingFragment;

    .line 116
    .local v4, "tf":Lcom/sec/android/app/camera/setting/TimerSettingFragment;
    if-eqz v4, :cond_1

    .line 117
    invoke-virtual {v4}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->getTimerType()I

    move-result v5

    if-nez v5, :cond_0

    .line 118
    const/4 v5, 0x1

    .line 145
    :goto_0
    return v5

    .line 120
    :cond_0
    const/4 v5, 0x2

    goto :goto_0

    .line 123
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const-string v6, "QUICKLAUNCH_FRAGMENT"

    invoke-virtual {v5, v6}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;

    .line 124
    .local v3, "qf":Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;
    if-eqz v3, :cond_2

    .line 125
    const/16 v5, 0xa

    goto :goto_0

    .line 127
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const-string v6, "LIST_FRAGMENT"

    invoke-virtual {v5, v6}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;

    .line 128
    .local v0, "lf":Lcom/sec/android/app/camera/setting/ListSettingFragment;
    if-eqz v0, :cond_3

    .line 129
    invoke-virtual {v0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getListType()I

    move-result v1

    .line 130
    .local v1, "listType":I
    packed-switch v1, :pswitch_data_0

    .line 141
    .end local v1    # "listType":I
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const-string v6, "SHOOTING_METHOD"

    invoke-virtual {v5, v6}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    .line 142
    .local v2, "pf":Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;
    if-eqz v2, :cond_4

    .line 143
    const/4 v5, 0x7

    goto :goto_0

    .line 132
    .end local v2    # "pf":Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;
    .restart local v1    # "listType":I
    :pswitch_0
    const/4 v5, 0x3

    goto :goto_0

    .line 134
    :pswitch_1
    const/4 v5, 0x4

    goto :goto_0

    .line 136
    :pswitch_2
    const/4 v5, 0x5

    goto :goto_0

    .line 138
    :pswitch_3
    const/4 v5, 0x6

    goto :goto_0

    .line 145
    .end local v1    # "listType":I
    .restart local v2    # "pf":Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;
    :cond_4
    const/4 v5, -0x1

    goto :goto_0

    .line 130
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected getFeatureValueByPreferenceKeyForLogging(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "preferenceKey"    # Ljava/lang/String;

    .prologue
    .line 697
    const-string v0, "pref_global_camera_quick_shot_using_power_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_global_camera_quick_shot"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 698
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mIsFromApplicationSettings:Z

    if-eqz v0, :cond_1

    .line 699
    const-string v0, "Z041"

    .line 710
    :goto_0
    return-object v0

    .line 701
    :cond_1
    const-string v0, "Z117"

    goto :goto_0

    .line 703
    :cond_2
    const-string v0, "pref_global_motion_photo_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 704
    const-string v0, "Z131"

    goto :goto_0

    .line 705
    :cond_3
    const-string v0, "pref_camera_rear_resolution_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "camera_resolution_rear_spinner"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 706
    :cond_4
    const-string v0, "Z089"

    goto :goto_0

    .line 707
    :cond_5
    const-string v0, "pref_camera_front_resolution_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "camera_resolution_front_spinner"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 708
    :cond_6
    const-string v0, "Z090"

    goto :goto_0

    .line 710
    :cond_7
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getMenuIdByPreferenceKey(Ljava/lang/String;)I
    .locals 1
    .param p1, "preferenceKey"    # Ljava/lang/String;

    .prologue
    .line 714
    const-string v0, "pref_global_camera_volume_key_as"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "camera_volume_key_spinner"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 715
    :cond_0
    const/16 v0, 0x49

    .line 762
    :goto_0
    return v0

    .line 716
    :cond_1
    const-string v0, "pref_camera_rear_resolution_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "pref_camera_front_resolution_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 717
    :cond_2
    const/4 v0, 0x4

    goto :goto_0

    .line 718
    :cond_3
    const-string v0, "pref_camcorder_rear_resolution_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "pref_camcorder_front_resolution_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 719
    :cond_4
    const/16 v0, 0xbb9

    goto :goto_0

    .line 720
    :cond_5
    const-string v0, "pref_global_setup_storage_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 721
    const/16 v0, 0x16

    goto :goto_0

    .line 722
    :cond_6
    const-string v0, "pref_global_setup_voice_control_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 723
    const/16 v0, 0x47

    goto :goto_0

    .line 724
    :cond_7
    const-string v0, "pref_global_camera_detection_mode_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 725
    const/16 v0, 0x7d

    goto :goto_0

    .line 726
    :cond_8
    const-string v0, "pref_global_camcorder_antishake_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 727
    const/16 v0, 0xbbf

    goto :goto_0

    .line 728
    :cond_9
    const-string v0, "pref_global_rear_lens_distortion_correction_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 729
    const/16 v0, 0x33

    goto :goto_0

    .line 730
    :cond_a
    const-string v0, "pref_global_setup_self_flip_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 731
    const/16 v0, 0x26

    goto :goto_0

    .line 732
    :cond_b
    const-string v0, "pref_camera_guideline_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 733
    const/16 v0, 0x13

    goto :goto_0

    .line 734
    :cond_c
    const-string v0, "pref_global_setup_object_trackingaf_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 735
    const/16 v0, 0x17

    goto :goto_0

    .line 736
    :cond_d
    const-string v0, "pref_global_setup_gps_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 737
    const/16 v0, 0x14

    goto/16 :goto_0

    .line 738
    :cond_e
    const-string v0, "pref_global_setup_review_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 739
    const/16 v0, 0x11

    goto/16 :goto_0

    .line 740
    :cond_f
    const-string v0, "pref_global_motion_photo_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 741
    const/16 v0, 0x2a

    goto/16 :goto_0

    .line 742
    :cond_10
    const-string v0, "pref_global_camera_shutter_sound_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 743
    const/16 v0, 0x15

    goto/16 :goto_0

    .line 744
    :cond_11
    const-string v0, "pref_global_camera_fullpreview_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 745
    const/16 v0, 0x138

    goto/16 :goto_0

    .line 746
    :cond_12
    const-string v0, "pref_global_camera_picture_format"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 747
    const/16 v0, 0x13b

    goto/16 :goto_0

    .line 748
    :cond_13
    const-string v0, "pref_camera_qrcode_detection"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 749
    const/16 v0, 0x13c

    goto/16 :goto_0

    .line 750
    :cond_14
    const-string v0, "pref_camera_tap_to_take_pictures_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 751
    const/16 v0, 0x73

    goto/16 :goto_0

    .line 752
    :cond_15
    const-string v0, "pref_camera_hrm_shutter_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 753
    const/16 v0, 0x74

    goto/16 :goto_0

    .line 754
    :cond_16
    const-string v0, "pref_camera_focus_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 755
    const/4 v0, 0x5

    goto/16 :goto_0

    .line 756
    :cond_17
    const-string v0, "pref_global_setup_floating_camera_button_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 757
    const/16 v0, 0xb5

    goto/16 :goto_0

    .line 758
    :cond_18
    const-string v0, "pref_global_camera_quick_shot_using_power_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "pref_global_camera_quick_shot"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "quick_shot"

    .line 759
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 760
    :cond_19
    const/16 v0, 0x1a

    goto/16 :goto_0

    .line 762
    :cond_1a
    const/4 v0, -0x1

    goto/16 :goto_0
.end method

.method public getSwitchBar()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mSwitchHeader:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method protected isAttachImageMode()Z
    .locals 1

    .prologue
    .line 766
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mIsAttachImageMode:Z

    return v0
.end method

.method protected isAttachVideoMode()Z
    .locals 1

    .prologue
    .line 770
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mIsAttachVideoMode:Z

    return v0
.end method

.method protected isBackCamera()Z
    .locals 1

    .prologue
    .line 774
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mIsBackCamera:Z

    return v0
.end method

.method protected isDualBackCamera()Z
    .locals 1

    .prologue
    .line 778
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mIsDualBackCamera:Z

    return v0
.end method

.method protected isDualFrontCamera()Z
    .locals 1

    .prologue
    .line 782
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mIsDualFrontCamera:Z

    return v0
.end method

.method protected isFromApplicationSettings()Z
    .locals 1

    .prologue
    .line 786
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mIsFromApplicationSettings:Z

    return v0
.end method

.method protected isFrontCamera()Z
    .locals 1

    .prologue
    .line 790
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mIsFrontCamera:Z

    return v0
.end method

.method protected isKeyboardCoverCamera()Z
    .locals 1

    .prologue
    .line 794
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mIsKeyboardCoverCamera:Z

    return v0
.end method

.method public isNetworkProviderEnabled()Z
    .locals 2

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->initializeLocationManager()V

    .line 154
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isProviderEnabled()Z
    .locals 2

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->initializeLocationManager()V

    .line 159
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected isSecureCamera()Z
    .locals 1

    .prologue
    .line 798
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mIsSecureMode:Z

    return v0
.end method

.method protected isSupportedCameraResolutionForDual(I)Z
    .locals 1
    .param p1, "resolution"    # I

    .prologue
    .line 808
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isSupportedCameraResolutionForDual(I)Z

    move-result v0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    .line 816
    const-string v1, "CameraSettingActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityResult requestCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    packed-switch p1, :pswitch_data_0

    .line 839
    :goto_0
    return-void

    .line 819
    :pswitch_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    if-eqz p3, :cond_0

    .line 820
    invoke-static {}, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->values()[Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    move-result-object v1

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "location_dialog_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    aget-object v0, v1, v2

    .line 821
    .local v0, "id":Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;
    sget-object v1, Lcom/sec/android/app/camera/setting/CameraSettingActivity$3;->$SwitchMap$com$sec$android$app$camera$interfaces$CameraContext$DialogID:[I

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 824
    :pswitch_1
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->setGPS(Z)V

    .line 825
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->setHighAccuracyLocationMode()V

    goto :goto_0

    .line 829
    :pswitch_2
    iput-boolean v4, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mNeedToShowLocationDialog:Z

    goto :goto_0

    .line 835
    .end local v0    # "id":Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->setGPS(Z)V

    goto :goto_0

    .line 817
    nop

    :pswitch_data_0
    .packed-switch 0x7ea
        :pswitch_0
    .end packed-switch

    .line 821
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v5, 0x0

    .line 164
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 165
    const v3, 0x7f0f000c

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 166
    .local v2, "v":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 167
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a015b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 168
    .local v1, "size":I
    invoke-virtual {v2, v1, v5, v1, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 170
    const v3, 0x7f0f0010

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 171
    .local v0, "frameView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020244

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 173
    .end local v0    # "frameView":Landroid/view/View;
    .end local v1    # "size":I
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v4, 0x400

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 177
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 178
    const-string v0, "CameraSettingActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-static {p0}, Lcom/sec/android/app/camera/util/PermissionUtils;->startCheckRuntimePermission(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    :goto_0
    return-void

    .line 185
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 186
    .local v7, "intent":Landroid/content/Intent;
    const-string v0, "camera-parcel"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 187
    .local v6, "bundle":Landroid/os/Bundle;
    if-nez v6, :cond_1

    .line 188
    const-string v0, "CameraSettingActivity"

    const-string v1, "Finish. Bundle is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->finish()V

    goto :goto_0

    .line 193
    :cond_1
    const-string v0, "setting"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    .line 194
    const-string v0, "dim"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/DimController;

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mMenuDimController:Lcom/sec/android/app/camera/DimController;

    .line 196
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mMenuDimController:Lcom/sec/android/app/camera/DimController;

    if-nez v0, :cond_3

    .line 197
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->finish()V

    goto :goto_0

    .line 201
    :cond_3
    const-string v0, "camera_back"

    invoke-virtual {v6, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mIsBackCamera:Z

    .line 202
    const-string v0, "camera_front"

    invoke-virtual {v6, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mIsFrontCamera:Z

    .line 203
    const-string v0, "camera_dualback"

    invoke-virtual {v6, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mIsDualBackCamera:Z

    .line 204
    const-string v0, "camera_dualfront"

    invoke-virtual {v6, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mIsDualFrontCamera:Z

    .line 206
    const-string v0, "camera_back_id"

    invoke-virtual {v6, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mBackCameraId:I

    .line 207
    const-string v0, "camera_front_id"

    invoke-virtual {v6, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mFrontCameraId:I

    .line 209
    const-string v0, "secure"

    invoke-virtual {v6, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mIsSecureMode:Z

    .line 210
    const-string v0, "keyboardCover"

    invoke-virtual {v6, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mIsKeyboardCoverCamera:Z

    .line 211
    const-string v0, "attachVideo"

    invoke-virtual {v6, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mIsAttachVideoMode:Z

    .line 212
    const-string v0, "attachImage"

    invoke-virtual {v6, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mIsAttachImageMode:Z

    .line 214
    const-string v0, "fromApplicationSettings"

    invoke-virtual {v7, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 215
    iput-boolean v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mIsFromApplicationSettings:Z

    .line 217
    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->initIntentFilter()V

    .line 219
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 221
    const v0, 0x7f040002

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->setContentView(I)V

    .line 222
    const v0, 0x7f0f0010

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mLayoutRes:I

    .line 224
    const v0, 0x7f0f000d

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mSwitchHeader:Landroid/widget/RelativeLayout;

    .line 226
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-lez v0, :cond_5

    .line 227
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 229
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mMenuDimController:Lcom/sec/android/app/camera/DimController;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->newInstance(Lcom/sec/android/app/camera/setting/CameraSettingsImpl;Lcom/sec/android/app/camera/DimController;)Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mPreferenceFragment:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    .line 230
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mLayoutRes:I

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mPreferenceFragment:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 232
    new-instance v0, Lcom/sec/android/app/camera/CameraExecutorManager;

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    iget-object v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mMenuDimController:Lcom/sec/android/app/camera/DimController;

    iget v4, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mBackCameraId:I

    iget v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mFrontCameraId:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/CameraExecutorManager;-><init>(Landroid/content/Context;Lcom/sec/android/app/camera/interfaces/CameraSettings;Lcom/sec/android/app/camera/DimController;II)V

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mCameraExecutorManager:Lcom/sec/android/app/camera/CameraExecutorManager;

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 237
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 238
    const-string v0, "CameraSettingActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->deinitIntentFilter()V

    .line 240
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mCameraExecutorManager:Lcom/sec/android/app/camera/CameraExecutorManager;

    .line 241
    return-void
.end method

.method public onFrontTimerSelect(I)V
    .locals 5
    .param p1, "newTimer"    # I

    .prologue
    .line 245
    const-string v2, "CameraSettingActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onFrontTimerSelect : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    invoke-virtual {v2, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setFrontTimer(I)V

    .line 247
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0012

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getFrontTimer()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 248
    .local v1, "timerSummary":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mPreferenceFragment:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    const-string v3, "front_timer"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/setting/SettingPreference;

    .line 249
    .local v0, "settingPreference":Lcom/sec/android/app/camera/setting/SettingPreference;
    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/SettingPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 250
    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/SettingPreference;->setSummaryDescription(Ljava/lang/String;)V

    .line 251
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mPreferenceFragment:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->refreshMenu()V

    .line 252
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 256
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 257
    const-string v1, "CameraSettingActivity"

    const-string v2, "BACK KEY PRESSED!"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 260
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mSwitchHeader:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 262
    const-string v1, "601"

    invoke-static {v1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->setSAScreenId(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const v2, 0x7f090225

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(I)V

    .line 264
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStack()V

    .line 271
    :goto_0
    return v0

    .line 267
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->finish()V

    goto :goto_0

    .line 271
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLaunchListFragment(I)V
    .locals 4
    .param p1, "listType"    # I

    .prologue
    .line 842
    const-string v2, "CameraSettingActivity"

    const-string v3, "onLaunchListFragment"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    invoke-static {p1}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->newInstance(I)Lcom/sec/android/app/camera/setting/ListSettingFragment;

    move-result-object v1

    .line 845
    .local v1, "resolutionFragment":Lcom/sec/android/app/camera/setting/ListSettingFragment;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 846
    .local v0, "ft":Landroid/app/FragmentTransaction;
    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mLayoutRes:I

    const-string v3, "LIST_FRAGMENT"

    invoke-virtual {v0, v2, v1, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 847
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 848
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 849
    return-void
.end method

.method protected onLaunchQuickLaunchFragment()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 852
    const-string v6, "CameraSettingActivity"

    const-string v7, "onLaunchQuickLaunchFragment"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    invoke-static {}, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;->newInstance()Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;

    move-result-object v2

    .line 855
    .local v2, "quickLaunchSettingFragment":Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;
    iget-object v6, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getQuickLaunchType()I

    move-result v3

    .line 856
    .local v3, "quickLaunchValue":I
    const v6, 0x7f0f000f

    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    .line 857
    .local v1, "mSwitchView":Landroid/widget/Switch;
    if-eq v3, v4, :cond_0

    const/4 v6, 0x3

    if-ne v3, v6, :cond_1

    :cond_0
    :goto_0
    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 858
    iget-object v4, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mSwitchHeader:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 860
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 861
    .local v0, "ft":Landroid/app/FragmentTransaction;
    iget v4, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mLayoutRes:I

    const-string v5, "QUICKLAUNCH_FRAGMENT"

    invoke-virtual {v0, v4, v2, v5}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 862
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 863
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 864
    return-void

    .end local v0    # "ft":Landroid/app/FragmentTransaction;
    :cond_1
    move v4, v5

    .line 857
    goto :goto_0
.end method

.method protected onLaunchTimerFragment(I)V
    .locals 4
    .param p1, "timerType"    # I

    .prologue
    .line 867
    const-string v2, "CameraSettingActivity"

    const-string v3, "onLaunchTimerFragment"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    invoke-static {p1}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->newInstance(I)Lcom/sec/android/app/camera/setting/TimerSettingFragment;

    move-result-object v1

    .line 870
    .local v1, "timerFragment":Lcom/sec/android/app/camera/setting/TimerSettingFragment;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 871
    .local v0, "ft":Landroid/app/FragmentTransaction;
    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mLayoutRes:I

    const-string v3, "TIMER_FRAGMENT"

    invoke-virtual {v0, v2, v1, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 872
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 873
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 874
    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 6
    .param p1, "isInMultiWindowMode"    # Z

    .prologue
    const/4 v5, 0x0

    .line 276
    invoke-super {p0, p1}, Landroid/app/Activity;->onMultiWindowModeChanged(Z)V

    .line 277
    if-eqz p1, :cond_0

    .line 278
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0901df

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090225

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 279
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->finish()V

    .line 281
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 285
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_1

    .line 286
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 287
    const-string v1, "1251"

    invoke-static {v1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    .line 289
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mSwitchHeader:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 291
    const-string v1, "601"

    invoke-static {v1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->setSAScreenId(Ljava/lang/String;)V

    .line 292
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const v2, 0x7f090225

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(I)V

    .line 293
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStack()V

    .line 300
    :goto_0
    return v0

    .line 296
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->finish()V

    goto :goto_0

    .line 300
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 305
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 306
    const-string v0, "CameraSettingActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mMenuDimController:Lcom/sec/android/app/camera/DimController;

    if-eqz v0, :cond_2

    .line 309
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->isAttachVideoMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->isAttachImageMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mMenuDimController:Lcom/sec/android/app/camera/DimController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/DimController;->restoreUserSettingValues()V

    .line 312
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mMenuDimController:Lcom/sec/android/app/camera/DimController;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/DimController;->saveDim(Landroid/content/Context;)V

    .line 314
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mCameraExecutorManager:Lcom/sec/android/app/camera/CameraExecutorManager;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraExecutorManager;->release()V

    .line 315
    return-void
.end method

.method public onResolutionSelect(II)V
    .locals 10
    .param p1, "newResolution"    # I
    .param p2, "listType"    # I

    .prologue
    const/16 v9, 0xbb9

    .line 319
    const-string v6, "CameraSettingActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onResolutionSelect resolution : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " listType : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    const/4 v5, 0x0

    .line 321
    .local v5, "resolutionPreference":Lcom/sec/android/app/camera/setting/SettingPreference;
    const/16 v4, 0x63

    .line 322
    .local v4, "menuId":I
    const/4 v2, 0x0

    .line 323
    .local v2, "featureId":Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 401
    :goto_0
    if-eqz v2, :cond_0

    .line 402
    invoke-static {v4, p1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v6

    invoke-static {v6}, Lcom/sec/android/app/camera/command/CmdIdStringMapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 404
    .local v1, "extraValue":Ljava/lang/String;
    invoke-static {v2, v1}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 405
    .local v0, "cv":Landroid/content/ContentValues;
    invoke-static {p0, v0}, Lcom/sec/android/app/camera/util/Util;->broadcastGeneralEventForLogging(Landroid/content/Context;Landroid/content/ContentValues;)V

    .line 408
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v1    # "extraValue":Ljava/lang/String;
    :cond_0
    return-void

    .line 325
    :pswitch_0
    const-string v6, "pref_camera_rear_resolution_key"

    invoke-static {p0, v6, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 326
    iget-object v6, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    invoke-virtual {v6, p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->saveDualCameraRearResolution(Landroid/content/Context;I)V

    .line 327
    iget-object v6, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mPreferenceFragment:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    const-string v7, "camera_resolution_rear"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .end local v5    # "resolutionPreference":Lcom/sec/android/app/camera/setting/SettingPreference;
    check-cast v5, Lcom/sec/android/app/camera/setting/SettingPreference;

    .line 328
    .restart local v5    # "resolutionPreference":Lcom/sec/android/app/camera/setting/SettingPreference;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getPictureSizeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/android/app/camera/setting/SettingPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 329
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, p1}, Lcom/sec/android/app/camera/util/Util;->getPictureSizeStringForTTS(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/android/app/camera/setting/SettingPreference;->setSummaryDescription(Ljava/lang/String;)V

    .line 331
    const-string v6, "pref_camera_rear_resolution_key"

    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getMenuIdByPreferenceKey(Ljava/lang/String;)I

    move-result v4

    .line 332
    const-string v6, "pref_camera_rear_resolution_key"

    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getFeatureValueByPreferenceKeyForLogging(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 334
    iget-object v6, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isStickerMode()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->isBackCamera()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 335
    iget-object v6, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->overrideStickerCamcorderResolution()V

    .line 337
    :cond_1
    const-string v6, "6041"

    iget-object v7, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraResolution()I

    move-result v7

    invoke-static {v7}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 340
    :pswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->isDualFrontCamera()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 341
    const-string v6, "pref_camera_dual_front_resolution_key"

    invoke-static {p0, v6, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 347
    :goto_1
    iget-object v6, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mPreferenceFragment:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    const-string v7, "camera_resolution_front"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .end local v5    # "resolutionPreference":Lcom/sec/android/app/camera/setting/SettingPreference;
    check-cast v5, Lcom/sec/android/app/camera/setting/SettingPreference;

    .line 348
    .restart local v5    # "resolutionPreference":Lcom/sec/android/app/camera/setting/SettingPreference;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getPictureSizeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/android/app/camera/setting/SettingPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 349
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, p1}, Lcom/sec/android/app/camera/util/Util;->getPictureSizeStringForTTS(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/android/app/camera/setting/SettingPreference;->setSummaryDescription(Ljava/lang/String;)V

    .line 351
    const-string v6, "pref_camera_front_resolution_key"

    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getMenuIdByPreferenceKey(Ljava/lang/String;)I

    move-result v4

    .line 352
    const-string v6, "pref_camera_rear_resolution_key"

    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getFeatureValueByPreferenceKeyForLogging(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 354
    iget-object v6, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isStickerMode()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->isFrontCamera()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 355
    iget-object v6, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->overrideStickerCamcorderResolution()V

    .line 357
    :cond_2
    const-string v6, "6043"

    iget-object v7, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraResolution()I

    move-result v7

    invoke-static {v7}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 343
    :cond_3
    const-string v6, "pref_camera_front_resolution_key"

    invoke-static {p0, v6, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 344
    const-string v6, "pref_camera_dual_front_resolution_key"

    invoke-static {p0, v6, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_1

    .line 360
    :pswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->isDualBackCamera()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 361
    const-string v6, "pref_camcorder_dual_resolution_key"

    invoke-static {p0, v6, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 365
    :goto_2
    iget-object v6, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mPreferenceFragment:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    const-string v7, "camcorder_resolution_rear"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .end local v5    # "resolutionPreference":Lcom/sec/android/app/camera/setting/SettingPreference;
    check-cast v5, Lcom/sec/android/app/camera/setting/SettingPreference;

    .line 366
    .restart local v5    # "resolutionPreference":Lcom/sec/android/app/camera/setting/SettingPreference;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getVideoSizeFullString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/android/app/camera/setting/SettingPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 367
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, p1}, Lcom/sec/android/app/camera/util/Util;->getVideoSizeStringForTTS(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/android/app/camera/setting/SettingPreference;->setSummaryDescription(Ljava/lang/String;)V

    .line 369
    iget-object v6, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mPreferenceFragment:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    invoke-virtual {v6, v5}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->checkCurrentPreferenceDependency(Landroid/preference/Preference;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 370
    invoke-virtual {p0, v9, p1}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->setButtonDim(II)V

    .line 371
    iget-object v6, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mPreferenceFragment:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->refreshMenu()V

    .line 373
    :cond_4
    const-string v6, "6051"

    iget-object v7, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCamcorderResolution()I

    move-result v7

    invoke-static {v7}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 363
    :cond_5
    const-string v6, "pref_camcorder_rear_resolution_key"

    invoke-static {p0, v6, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_2

    .line 376
    :pswitch_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->isDualFrontCamera()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 377
    const-string v6, "pref_camcorder_dual_resolution_key"

    invoke-static {p0, v6, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 381
    :goto_3
    iget-object v6, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mPreferenceFragment:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    const-string v7, "camcorder_resolution_front"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .end local v5    # "resolutionPreference":Lcom/sec/android/app/camera/setting/SettingPreference;
    check-cast v5, Lcom/sec/android/app/camera/setting/SettingPreference;

    .line 382
    .restart local v5    # "resolutionPreference":Lcom/sec/android/app/camera/setting/SettingPreference;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getVideoSizeFullString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/android/app/camera/setting/SettingPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 383
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, p1}, Lcom/sec/android/app/camera/util/Util;->getVideoSizeStringForTTS(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/android/app/camera/setting/SettingPreference;->setSummaryDescription(Ljava/lang/String;)V

    .line 385
    iget-object v6, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mPreferenceFragment:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    invoke-virtual {v6, v5}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->checkCurrentPreferenceDependency(Landroid/preference/Preference;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 386
    invoke-virtual {p0, v9, p1}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->setButtonDim(II)V

    .line 387
    iget-object v6, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mPreferenceFragment:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->refreshMenu()V

    .line 391
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->isDualFrontCamera()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 392
    const-string v6, "pref_camcorder_dual_resolution_key"

    iget-object v7, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    iget-object v8, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraId()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultCamcorderResolution(I)I

    move-result v7

    invoke-static {p0, v6, v7}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    .line 396
    .local v3, "frontResolution":I
    :goto_4
    const-string v6, "6061"

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 379
    .end local v3    # "frontResolution":I
    :cond_7
    const-string v6, "pref_camcorder_front_resolution_key"

    invoke-static {p0, v6, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_3

    .line 394
    :cond_8
    const-string v6, "pref_camcorder_front_resolution_key"

    iget-object v7, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    iget-object v8, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraId()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultCamcorderResolution(I)I

    move-result v7

    invoke-static {p0, v6, v7}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    .restart local v3    # "frontResolution":I
    goto :goto_4

    .line 323
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onResume()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 412
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 413
    const-string v2, "CameraSettingActivity"

    const-string v3, "onResume"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-boolean v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mIsFromApplicationSettings:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->isInMultiWindowMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 415
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0901df

    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090225

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 416
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->finish()V

    .line 419
    :cond_0
    const-string v2, "601"

    invoke-static {v2}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->setSAScreenId(Ljava/lang/String;)V

    .line 420
    iget-boolean v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mIsFromSecureLocationSetting:Z

    if-eqz v2, :cond_2

    .line 421
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->isNetworkProviderEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 422
    invoke-virtual {p0, v7}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->setGPS(Z)V

    .line 423
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mPreferenceFragment:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    if-eqz v2, :cond_1

    .line 424
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mPreferenceFragment:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    sget-object v3, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->LOCATION_TAG_GUIDE_FROM_SETTING:Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->showCameraDialog(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;)V

    .line 427
    :cond_1
    iput-boolean v7, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mIsFromSecureLocationSetting:Z

    .line 430
    :cond_2
    iget-boolean v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mNeedToShowLocationDialog:Z

    if-eqz v2, :cond_4

    .line 431
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mPreferenceFragment:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    if-eqz v2, :cond_3

    .line 432
    iget-object v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mPreferenceFragment:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->COUNTRY_CHINA:Z

    if-eqz v2, :cond_8

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->GPS_EULA_CHINA_FROM_SETTING:Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    :goto_0
    invoke-virtual {v3, v2}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->showCameraDialog(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;)V

    .line 434
    :cond_3
    iput-boolean v7, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mNeedToShowLocationDialog:Z

    .line 437
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->isSecureCamera()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 438
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v3, 0x80000

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 441
    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mPreferenceFragment:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    if-eqz v2, :cond_6

    .line 442
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getQuickLaunchType()I

    move-result v1

    .line 444
    .local v1, "quickLaunchValue":I
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_QUICK_LAUNCH_USING_POWER_KEY:Z

    if-eqz v2, :cond_a

    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_QUICK_LAUNCH_USING_HOME_KEY:Z

    if-nez v2, :cond_a

    .line 445
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mPreferenceFragment:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    const-string v3, "pref_global_camera_quick_shot_using_power_key"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    .line 446
    .local v0, "quickLaunchPref":Landroid/preference/SwitchPreference;
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 447
    const/4 v2, 0x2

    if-ne v1, v2, :cond_9

    .line 448
    invoke-virtual {v0, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 465
    .end local v0    # "quickLaunchPref":Landroid/preference/SwitchPreference;
    .end local v1    # "quickLaunchValue":I
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "fromApplicationSettings"

    invoke-virtual {v2, v3, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_7

    .line 466
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-ne v2, v8, :cond_c

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isKeyboardCoverCamera()Z

    move-result v2

    if-nez v2, :cond_c

    .line 467
    const-string v2, "CameraSettingActivity"

    const-string v3, "Mobile Keyboard mounted, finish"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->finish()V

    .line 474
    :cond_7
    :goto_2
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mCameraExecutorManager:Lcom/sec/android/app/camera/CameraExecutorManager;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->init()V

    .line 475
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mCameraExecutorManager:Lcom/sec/android/app/camera/CameraExecutorManager;

    new-instance v3, Lcom/sec/android/app/camera/setting/CameraSettingActivity$2;

    invoke-direct {v3, p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity$2;-><init>(Lcom/sec/android/app/camera/setting/CameraSettingActivity;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/CameraExecutorManager;->setExecutorCommandListener(Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorCommandListener;)V

    .line 623
    return-void

    .line 432
    :cond_8
    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->GPS_EULA_FROM_SETTING:Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    goto :goto_0

    .line 450
    .restart local v0    # "quickLaunchPref":Landroid/preference/SwitchPreference;
    .restart local v1    # "quickLaunchValue":I
    :cond_9
    invoke-virtual {v0, v8}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_1

    .line 453
    .end local v0    # "quickLaunchPref":Landroid/preference/SwitchPreference;
    :cond_a
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_QUICK_LAUNCH_USING_POWER_KEY:Z

    if-nez v2, :cond_6

    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_QUICK_LAUNCH_USING_HOME_KEY:Z

    if-eqz v2, :cond_6

    .line 454
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mPreferenceFragment:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    const-string v3, "pref_global_camera_quick_shot"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    .line 455
    .restart local v0    # "quickLaunchPref":Landroid/preference/SwitchPreference;
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 456
    if-nez v1, :cond_b

    .line 457
    invoke-virtual {v0, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_1

    .line 459
    :cond_b
    invoke-virtual {v0, v8}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_1

    .line 469
    .end local v0    # "quickLaunchPref":Landroid/preference/SwitchPreference;
    .end local v1    # "quickLaunchValue":I
    :cond_c
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isKeyboardCoverCamera()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 470
    const-string v2, "CameraSettingActivity"

    const-string v3, "Mobile Keyboard unmounted, finish"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->finish()V

    goto :goto_2
.end method

.method public onTimerSelect(I)V
    .locals 5
    .param p1, "newTimer"    # I

    .prologue
    .line 627
    const-string v2, "CameraSettingActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onTimerSelect : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    invoke-virtual {v2, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setBackTimer(I)V

    .line 629
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0012

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getTimer()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 630
    .local v1, "timerSummary":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mPreferenceFragment:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    const-string v3, "rear_timer"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/setting/SettingPreference;

    .line 631
    .local v0, "settingPreference":Lcom/sec/android/app/camera/setting/SettingPreference;
    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/SettingPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 632
    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/SettingPreference;->setSummaryDescription(Ljava/lang/String;)V

    .line 633
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mPreferenceFragment:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->refreshMenu()V

    .line 634
    return-void
.end method

.method public resetSetting()V
    .locals 3

    .prologue
    .line 637
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->clearPreferences(Landroid/content/Context;)V

    .line 639
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_QUICK_LAUNCH_USING_HOME_KEY:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_QUICK_LAUNCH_USING_POWER_KEY:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isOwner()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 640
    const-string v0, "CameraSettingActivity"

    const-string v1, "update setting db for double tab launch as default value"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "double_tab_launch"

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultQuickLaunch()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 642
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_QUICK_LAUNCH_USING_POWER_KEY:Z

    if-eqz v0, :cond_1

    .line 643
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lcd_curtain"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 647
    :cond_1
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->setResult(I)V

    .line 648
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->finish()V

    .line 649
    return-void
.end method

.method protected setButtonDim(II)V
    .locals 1
    .param p1, "menuid"    # I
    .param p2, "modeid"    # I

    .prologue
    .line 877
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mMenuDimController:Lcom/sec/android/app/camera/DimController;

    if-eqz v0, :cond_0

    .line 878
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mMenuDimController:Lcom/sec/android/app/camera/DimController;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/camera/DimController;->setButtonDim(II)V

    .line 880
    :cond_0
    return-void
.end method

.method public setGPS(Z)V
    .locals 1
    .param p1, "gps"    # Z

    .prologue
    .line 652
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mPreferenceFragment:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    if-eqz v0, :cond_0

    .line 653
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mPreferenceFragment:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->setGPS(Z)V

    .line 654
    :cond_0
    return-void
.end method

.method public setHighAccuracyLocationMode()V
    .locals 3

    .prologue
    .line 657
    const-string v0, "CameraSettingActivity"

    const-string v1, "setHighAccuracyLocationMode"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_mode"

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 659
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mIsFromSecureLocationSetting:Z

    .line 660
    return-void
.end method

.method public startContactUsActivity()V
    .locals 7

    .prologue
    .line 666
    const-string v3, "com.sec.android.app.camera"

    .line 667
    .local v3, "packageName":Ljava/lang/String;
    const-string v0, "dsd5xe2604"

    .line 668
    .local v0, "appId":Ljava/lang/String;
    const-string v1, "Camera"

    .line 670
    .local v1, "appName":Ljava/lang/String;
    const-string v4, "voc://view/contactUs"

    .line 671
    .local v4, "url":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 672
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "packageName"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 673
    const-string v5, "appId"

    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 674
    const-string v5, "appName"

    invoke-virtual {v2, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 676
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 677
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->startActivity(Landroid/content/Intent;)V

    .line 679
    :cond_0
    return-void
.end method
