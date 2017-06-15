.class public Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;
.super Landroid/preference/PreferenceFragment;
.source "PreferenceSettingFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final CAMERA_DIM:Ljava/lang/String; = "camera"

.field private static final CAMERA_SETTING:Ljava/lang/String; = "setting"

.field protected static final CONTACT_US_KEY:Ljava/lang/String; = "contact_us"

.field protected static final DEPENDENCY_COMMON_KEY:Ljava/lang/String; = "common"

.field protected static final DEPENDENCY_FRONT_KEY:Ljava/lang/String; = "front"

.field protected static final DEPENDENCY_REAR_KEY:Ljava/lang/String; = "rear"

.field protected static final KEY_FOR_KEYBOARD_COVER_RESOLUTION_DISABLED:Ljava/lang/String; = "keyboard_cover_resolution_disabled"

.field protected static final LIST_KEY_FOR_FRONT_CAMCORDER_RESOLUTION:Ljava/lang/String; = "camcorder_resolution_front"

.field protected static final LIST_KEY_FOR_FRONT_CAMERA_RESOLUTION:Ljava/lang/String; = "camera_resolution_front"

.field protected static final LIST_KEY_FOR_FRONT_TIMER:Ljava/lang/String; = "front_timer"

.field protected static final LIST_KEY_FOR_QUICK_LAUNCH_USING_HOME_AND_POWER_KEY:Ljava/lang/String; = "quick_shot"

.field protected static final LIST_KEY_FOR_REAR_CAMCORDER_RESOLUTION:Ljava/lang/String; = "camcorder_resolution_rear"

.field protected static final LIST_KEY_FOR_REAR_CAMERA_RESOLUTION:Ljava/lang/String; = "camera_resolution_rear"

.field protected static final LIST_KEY_FOR_REAR_TIMER:Ljava/lang/String; = "rear_timer"

.field protected static final LIST_KEY_FOR_SHOOTING_METHOD:Ljava/lang/String; = "shooting_method"

.field private static final LIST_SCROLL_ANIMATION_DELAY:I = 0x64

.field private static final LIST_SCROLL_ANIMATION_DURATION:I = 0x190

.field protected static final LIST_TYPE:I = 0x0

.field private static final PREFERENCE_RES_ID:Ljava/lang/String; = "preference_res_id"

.field protected static final RESET_KEY:Ljava/lang/String; = "reset"

.field protected static final SPINNER_KEY_FOR_CAMERA_VOLUME_KEY:Ljava/lang/String; = "camera_volume_key_spinner"

.field protected static final SPINNER_KEY_FOR_FRONT_CAMCORDER_RESOLUTION:Ljava/lang/String; = "camcorder_front_resolution_spinner"

.field protected static final SPINNER_KEY_FOR_FRONT_CAMERA_RESOLUTION:Ljava/lang/String; = "camera_resolution_front_spinner"

.field protected static final SPINNER_KEY_FOR_REAR_CAMCORDER_RESOLUTION:Ljava/lang/String; = "camcorder_rear_resolution_spinner"

.field protected static final SPINNER_KEY_FOR_REAR_CAMERA_RESOLUTION:Ljava/lang/String; = "camera_resolution_rear_spinner"

.field protected static final SPINNER_TYPE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PrefSettingFragment"

.field private static mDimHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final mEventIdByPreferenceKeyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActivity:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

.field private mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

.field private mDimArray:[Z

.field private mIsInitialized:Z

.field private mMenuDimController:Lcom/sec/android/app/camera/DimController;

.field private mPreferenceResId:I

.field private mQuickCameraDisableDialog:Landroid/app/AlertDialog;

.field private mStoragePreference:Landroid/preference/Preference;

.field private onSettingChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 96
    new-instance v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$1;

    invoke-direct {v0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mEventIdByPreferenceKeyMap:Ljava/util/HashMap;

    .line 134
    new-instance v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$2;

    invoke-direct {v0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$2;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mDimHashMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 372
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 173
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mIsInitialized:Z

    .line 175
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mQuickCameraDisableDialog:Landroid/app/AlertDialog;

    .line 177
    new-instance v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$3;-><init>(Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->onSettingChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 373
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;)Lcom/sec/android/app/camera/setting/CameraSettingsImpl;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->darkScreenTurnOffPopup()V

    return-void
.end method

.method static synthetic access$200()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mEventIdByPreferenceKeyMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;)Lcom/sec/android/app/camera/DimController;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mMenuDimController:Lcom/sec/android/app/camera/DimController;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;)Lcom/sec/android/app/camera/setting/CameraSettingActivity;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mActivity:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    return-object v0
.end method

.method private addPreference(Landroid/preference/Preference;)V
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 705
    invoke-virtual {p1}, Landroid/preference/Preference;->getDependency()Ljava/lang/String;

    move-result-object v0

    .line 706
    .local v0, "dep":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    instance-of v1, v1, Landroid/preference/PreferenceCategory;

    if-eqz v1, :cond_0

    .line 707
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, p1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 711
    :goto_0
    return-void

    .line 709
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private darkScreenTurnOffPopup()V
    .locals 9

    .prologue
    const v8, 0x7f09015b

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 714
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mQuickCameraDisableDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    .line 715
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mQuickCameraDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 718
    :cond_0
    const v2, 0x7f09026f

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 719
    .local v1, "title":Ljava/lang/String;
    const v2, 0x7f09026e

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0900e4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 721
    .local v0, "message":Ljava/lang/String;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 722
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 723
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f090270

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$6;

    invoke-direct {v4, p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$6;-><init>(Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 738
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f090129

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$5;

    invoke-direct {v3, p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$5;-><init>(Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;)V

    .line 739
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 747
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mQuickCameraDisableDialog:Landroid/app/AlertDialog;

    .line 748
    return-void
.end method

.method private getBackCamcorderResolution()I
    .locals 4

    .prologue
    .line 752
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mActivity:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->isDualBackCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 753
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_camcorder_dual_resolution_key"

    const-string v3, "1920x1080"

    .line 754
    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v3

    .line 753
    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 759
    .local v0, "camcorderResolution":I
    :goto_0
    return v0

    .line 756
    .end local v0    # "camcorderResolution":I
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_camcorder_rear_resolution_key"

    sget-object v3, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_RECORDING_DEFAULT_RESOLUTION:Ljava/lang/String;

    .line 757
    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v3

    .line 756
    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .restart local v0    # "camcorderResolution":I
    goto :goto_0
.end method

.method private getBackCameraResolution()I
    .locals 4

    .prologue
    .line 764
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mActivity:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->isKeyboardCoverCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 765
    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->KEYBOARD_COVER_BACK_CAMERA_RESOLUTION:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    .line 775
    .local v0, "cameraResolution":I
    :goto_0
    return v0

    .line 767
    .end local v0    # "cameraResolution":I
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mActivity:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->isDualBackCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 768
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_camera_dual_rear_resolution_key"

    sget-object v3, Lcom/sec/android/app/camera/feature/Feature;->DUAL_BACK_CAMERA_DEFAULT_PICTURESIZE:Ljava/lang/String;

    .line 769
    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v3

    .line 768
    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .restart local v0    # "cameraResolution":I
    goto :goto_0

    .line 771
    .end local v0    # "cameraResolution":I
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_camera_rear_resolution_key"

    sget-object v3, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_PICTURE_DEFAULT_RESOLUTION:Ljava/lang/String;

    .line 772
    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v3

    .line 771
    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .restart local v0    # "cameraResolution":I
    goto :goto_0
.end method

.method private getDim(I)Z
    .locals 1
    .param p1, "key"    # I

    .prologue
    .line 783
    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mDimArray:[Z

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 784
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mDimArray:[Z

    aget-boolean v0, v0, p1

    .line 786
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getFrontCamcorderResolution()I
    .locals 4

    .prologue
    .line 791
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mActivity:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->isDualFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 792
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_camcorder_dual_resolution_key"

    const-string v3, "1920x1080"

    .line 793
    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v3

    .line 792
    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 798
    .local v0, "camcorderResolution":I
    :goto_0
    return v0

    .line 795
    .end local v0    # "camcorderResolution":I
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_camcorder_front_resolution_key"

    sget-object v3, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_RECORDING_DEFAULT_RESOLUTION:Ljava/lang/String;

    .line 796
    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v3

    .line 795
    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .restart local v0    # "camcorderResolution":I
    goto :goto_0
.end method

.method private getFrontCameraResolution()I
    .locals 4

    .prologue
    .line 803
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mActivity:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->isKeyboardCoverCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 804
    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->KEYBOARD_COVER_FRONT_CAMERA_RESOLUTION:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    .line 814
    .local v0, "cameraResolution":I
    :goto_0
    return v0

    .line 806
    .end local v0    # "cameraResolution":I
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mActivity:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->isDualFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 807
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_camera_dual_front_resolution_key"

    sget-object v3, Lcom/sec/android/app/camera/feature/Feature;->DUAL_FRONT_CAMERA_DEFAULT_PICTURESIZE:Ljava/lang/String;

    .line 808
    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v3

    .line 807
    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .restart local v0    # "cameraResolution":I
    goto :goto_0

    .line 810
    .end local v0    # "cameraResolution":I
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_camera_front_resolution_key"

    sget-object v3, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_PICTURE_DEFAULT_RESOLUTION:Ljava/lang/String;

    .line 811
    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v3

    .line 810
    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .restart local v0    # "cameraResolution":I
    goto :goto_0
.end method

.method private getSettingDefaultValue(I)I
    .locals 2
    .param p1, "menuId"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 818
    sparse-switch p1, :sswitch_data_0

    .line 844
    const/16 v0, 0x7fff

    :goto_0
    :sswitch_0
    return v0

    .line 824
    :sswitch_1
    sget v0, Lcom/sec/android/app/camera/interfaces/CameraSettings;->DEFAULT_SELF_FLIP:I

    goto :goto_0

    :sswitch_2
    move v0, v1

    .line 828
    goto :goto_0

    .line 830
    :sswitch_3
    sget v0, Lcom/sec/android/app/camera/interfaces/CameraSettings;->DEFAULT_VIEW_MODE:I

    goto :goto_0

    .line 836
    :sswitch_4
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultQuickLaunch()I

    move-result v0

    goto :goto_0

    :sswitch_5
    move v0, v1

    .line 840
    goto :goto_0

    .line 842
    :sswitch_6
    sget v0, Lcom/sec/android/app/camera/interfaces/CameraSettings;->DEFAULT_VOLUME_KEY_AS:I

    goto :goto_0

    .line 818
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_5
        0x17 -> :sswitch_0
        0x1a -> :sswitch_4
        0x26 -> :sswitch_1
        0x2a -> :sswitch_0
        0x33 -> :sswitch_0
        0x47 -> :sswitch_0
        0x49 -> :sswitch_6
        0x138 -> :sswitch_3
        0xbbf -> :sswitch_2
    .end sparse-switch
.end method

.method private declared-synchronized initialize()Z
    .locals 28

    .prologue
    .line 852
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mPreferenceResId:I

    move/from16 v24, v0

    if-nez v24, :cond_1

    .line 853
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v24

    const v25, 0x7f090225

    invoke-virtual/range {v24 .. v25}, Landroid/app/ActionBar;->setTitle(I)V

    .line 854
    sget-boolean v24, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_PREVIEW_FIT_TO_FULL_SCREEN:Z

    if-nez v24, :cond_0

    .line 855
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v24

    const-string v25, "pref_global_camera_fullpreview_key"

    invoke-static/range {v24 .. v25}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->removePreferences(Landroid/content/Context;Ljava/lang/String;)V

    .line 857
    :cond_0
    const v24, 0x7f070004

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->addPreferencesFromResource(I)V

    .line 862
    :goto_0
    invoke-static {}, Lcom/sec/android/app/camera/setting/CameraResolutionListLoader;->getInstance()Lcom/sec/android/app/camera/setting/CameraResolutionListLoader;

    move-result-object v14

    .line 863
    .local v14, "loader":Lcom/sec/android/app/camera/setting/CameraResolutionListLoader;
    const-string v24, "camcorder_rear_resolution_spinner"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    if-eqz v24, :cond_4

    .line 864
    invoke-virtual {v14}, Lcom/sec/android/app/camera/setting/CameraResolutionListLoader;->getBackVideoIdList()[I

    move-result-object v24

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getListType(I)I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_6

    .line 865
    const-string v24, "camcorder_resolution_rear"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->removePreference(Ljava/lang/CharSequence;)V

    .line 868
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mActivity:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->isDualBackCamera()Z

    move-result v24

    if-eqz v24, :cond_2

    .line 869
    invoke-virtual {v14}, Lcom/sec/android/app/camera/setting/CameraResolutionListLoader;->getDualBackVideoIdList()[I

    move-result-object v4

    .line 873
    .local v4, "backVideoSizeValue":[I
    :goto_1
    array-length v0, v4

    move/from16 v24, v0

    move/from16 v0, v24

    new-array v3, v0, [Ljava/lang/String;

    .line 874
    .local v3, "backVideoSizeList":[Ljava/lang/String;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    array-length v0, v4

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v12, v0, :cond_3

    .line 875
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v24

    aget v25, v4, v12

    invoke-static/range {v24 .. v25}, Lcom/sec/android/app/camera/util/CameraResolution;->getVideoSizeFullString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v3, v12

    .line 874
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 859
    .end local v3    # "backVideoSizeList":[Ljava/lang/String;
    .end local v4    # "backVideoSizeValue":[I
    .end local v12    # "i":I
    .end local v14    # "loader":Lcom/sec/android/app/camera/setting/CameraResolutionListLoader;
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mPreferenceResId:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->addPreferencesFromResource(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 852
    :catchall_0
    move-exception v24

    monitor-exit p0

    throw v24

    .line 871
    .restart local v14    # "loader":Lcom/sec/android/app/camera/setting/CameraResolutionListLoader;
    :cond_2
    :try_start_1
    invoke-virtual {v14}, Lcom/sec/android/app/camera/setting/CameraResolutionListLoader;->getBackVideoIdList()[I

    move-result-object v4

    .restart local v4    # "backVideoSizeValue":[I
    goto :goto_1

    .line 877
    .restart local v3    # "backVideoSizeList":[Ljava/lang/String;
    .restart local v12    # "i":I
    :cond_3
    const-string v24, "camcorder_rear_resolution_spinner"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    check-cast v22, Lcom/sec/android/app/camera/setting/SpinnerPreference;

    .line 878
    .local v22, "resPref":Lcom/sec/android/app/camera/setting/SpinnerPreference;
    array-length v0, v3

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_5

    .line 879
    const-string v24, "camcorder_rear_resolution_spinner"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->removePreference(Ljava/lang/CharSequence;)V

    .line 892
    .end local v3    # "backVideoSizeList":[Ljava/lang/String;
    .end local v4    # "backVideoSizeValue":[I
    .end local v12    # "i":I
    .end local v22    # "resPref":Lcom/sec/android/app/camera/setting/SpinnerPreference;
    :cond_4
    :goto_3
    const-string v24, "camcorder_front_resolution_spinner"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    if-eqz v24, :cond_9

    .line 893
    invoke-virtual {v14}, Lcom/sec/android/app/camera/setting/CameraResolutionListLoader;->getFrontVideoSizeIdList()[I

    move-result-object v24

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getListType(I)I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_b

    .line 894
    const-string v24, "camcorder_resolution_front"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->removePreference(Ljava/lang/CharSequence;)V

    .line 897
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mActivity:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->isDualFrontCamera()Z

    move-result v24

    if-eqz v24, :cond_7

    .line 898
    invoke-virtual {v14}, Lcom/sec/android/app/camera/setting/CameraResolutionListLoader;->getDualFrontVideoIdList()[I

    move-result-object v10

    .line 902
    .local v10, "frontVideoSizeValue":[I
    :goto_4
    array-length v0, v10

    move/from16 v24, v0

    move/from16 v0, v24

    new-array v9, v0, [Ljava/lang/String;

    .line 903
    .local v9, "frontVideoSizeList":[Ljava/lang/String;
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_5
    array-length v0, v9

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v12, v0, :cond_8

    .line 904
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v24

    aget v25, v10, v12

    invoke-static/range {v24 .. v25}, Lcom/sec/android/app/camera/util/CameraResolution;->getVideoSizeFullString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v9, v12

    .line 903
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 881
    .end local v9    # "frontVideoSizeList":[Ljava/lang/String;
    .end local v10    # "frontVideoSizeValue":[I
    .restart local v3    # "backVideoSizeList":[Ljava/lang/String;
    .restart local v4    # "backVideoSizeValue":[I
    .restart local v22    # "resPref":Lcom/sec/android/app/camera/setting/SpinnerPreference;
    :cond_5
    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->setEntries([Ljava/lang/String;)V

    .line 882
    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->setEntryValues([I)V

    .line 883
    sget-object v24, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_RECORDING_DEFAULT_RESOLUTION:Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 884
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCamcorderResolution()I

    move-result v24

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->setSelection(I)V

    .line 885
    const v24, 0x7f0900e6

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->setTitleDescription(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 888
    .end local v3    # "backVideoSizeList":[Ljava/lang/String;
    .end local v4    # "backVideoSizeValue":[I
    .end local v12    # "i":I
    .end local v22    # "resPref":Lcom/sec/android/app/camera/setting/SpinnerPreference;
    :cond_6
    const-string v24, "camcorder_rear_resolution_spinner"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->removePreference(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 900
    :cond_7
    invoke-virtual {v14}, Lcom/sec/android/app/camera/setting/CameraResolutionListLoader;->getFrontVideoSizeIdList()[I

    move-result-object v10

    .restart local v10    # "frontVideoSizeValue":[I
    goto :goto_4

    .line 906
    .restart local v9    # "frontVideoSizeList":[Ljava/lang/String;
    .restart local v12    # "i":I
    :cond_8
    const-string v24, "camcorder_front_resolution_spinner"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    check-cast v22, Lcom/sec/android/app/camera/setting/SpinnerPreference;

    .line 907
    .restart local v22    # "resPref":Lcom/sec/android/app/camera/setting/SpinnerPreference;
    array-length v0, v9

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_a

    .line 908
    const-string v24, "camcorder_front_resolution_spinner"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->removePreference(Ljava/lang/CharSequence;)V

    .line 921
    .end local v9    # "frontVideoSizeList":[Ljava/lang/String;
    .end local v10    # "frontVideoSizeValue":[I
    .end local v12    # "i":I
    .end local v22    # "resPref":Lcom/sec/android/app/camera/setting/SpinnerPreference;
    :cond_9
    :goto_6
    const-string v24, "camera_resolution_rear_spinner"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    if-eqz v24, :cond_d

    .line 922
    invoke-virtual {v14}, Lcom/sec/android/app/camera/setting/CameraResolutionListLoader;->getBackPictureIdList()[I

    move-result-object v24

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getListType(I)I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_e

    .line 923
    const-string v24, "camera_resolution_rear"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->removePreference(Ljava/lang/CharSequence;)V

    .line 925
    invoke-virtual {v14}, Lcom/sec/android/app/camera/setting/CameraResolutionListLoader;->getBackPictureIdList()[I

    move-result-object v20

    .line 926
    .local v20, "pictureSizeValue":[I
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    .line 927
    .local v19, "pictureSizeList":[Ljava/lang/String;
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_7
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v12, v0, :cond_c

    .line 928
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v24

    aget v25, v20, v12

    invoke-static/range {v24 .. v25}, Lcom/sec/android/app/camera/util/CameraResolution;->getPictureSizeFullString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v19, v12

    .line 927
    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    .line 910
    .end local v19    # "pictureSizeList":[Ljava/lang/String;
    .end local v20    # "pictureSizeValue":[I
    .restart local v9    # "frontVideoSizeList":[Ljava/lang/String;
    .restart local v10    # "frontVideoSizeValue":[I
    .restart local v22    # "resPref":Lcom/sec/android/app/camera/setting/SpinnerPreference;
    :cond_a
    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->setEntries([Ljava/lang/String;)V

    .line 911
    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->setEntryValues([I)V

    .line 912
    sget-object v24, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_RECORDING_DEFAULT_RESOLUTION:Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 913
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCamcorderResolution()I

    move-result v24

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->setSelection(I)V

    .line 914
    const v24, 0x7f0900d1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->setTitleDescription(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 917
    .end local v9    # "frontVideoSizeList":[Ljava/lang/String;
    .end local v10    # "frontVideoSizeValue":[I
    .end local v12    # "i":I
    .end local v22    # "resPref":Lcom/sec/android/app/camera/setting/SpinnerPreference;
    :cond_b
    const-string v24, "camcorder_front_resolution_spinner"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->removePreference(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 930
    .restart local v12    # "i":I
    .restart local v19    # "pictureSizeList":[Ljava/lang/String;
    .restart local v20    # "pictureSizeValue":[I
    :cond_c
    const-string v24, "camera_resolution_rear_spinner"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    check-cast v22, Lcom/sec/android/app/camera/setting/SpinnerPreference;

    .line 931
    .restart local v22    # "resPref":Lcom/sec/android/app/camera/setting/SpinnerPreference;
    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->setEntries([Ljava/lang/String;)V

    .line 932
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->setEntryValues([I)V

    .line 933
    sget-object v24, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_PICTURE_DEFAULT_RESOLUTION:Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 934
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getBackCameraResolution()I

    move-result v24

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->setSelection(I)V

    .line 935
    const v24, 0x7f0900e8

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->setTitleDescription(Ljava/lang/String;)V

    .line 941
    .end local v12    # "i":I
    .end local v19    # "pictureSizeList":[Ljava/lang/String;
    .end local v20    # "pictureSizeValue":[I
    .end local v22    # "resPref":Lcom/sec/android/app/camera/setting/SpinnerPreference;
    :cond_d
    :goto_8
    const-string v24, "camera_resolution_front_spinner"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    if-eqz v24, :cond_10

    .line 942
    invoke-virtual {v14}, Lcom/sec/android/app/camera/setting/CameraResolutionListLoader;->getFrontPictureSizeIdList()[I

    move-result-object v24

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getListType(I)I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_36

    .line 943
    const-string v24, "camera_resolution_front"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->removePreference(Ljava/lang/CharSequence;)V

    .line 945
    invoke-virtual {v14}, Lcom/sec/android/app/camera/setting/CameraResolutionListLoader;->getFrontPictureSizeIdList()[I

    move-result-object v20

    .line 946
    .restart local v20    # "pictureSizeValue":[I
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    .line 947
    .restart local v19    # "pictureSizeList":[Ljava/lang/String;
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_9
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v12, v0, :cond_f

    .line 948
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v24

    aget v25, v20, v12

    invoke-static/range {v24 .. v25}, Lcom/sec/android/app/camera/util/CameraResolution;->getPictureSizeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v19, v12

    .line 947
    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    .line 937
    .end local v12    # "i":I
    .end local v19    # "pictureSizeList":[Ljava/lang/String;
    .end local v20    # "pictureSizeValue":[I
    :cond_e
    const-string v24, "camera_resolution_rear_spinner"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->removePreference(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 950
    .restart local v12    # "i":I
    .restart local v19    # "pictureSizeList":[Ljava/lang/String;
    .restart local v20    # "pictureSizeValue":[I
    :cond_f
    const-string v24, "camera_resolution_front_spinner"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    check-cast v22, Lcom/sec/android/app/camera/setting/SpinnerPreference;

    .line 951
    .restart local v22    # "resPref":Lcom/sec/android/app/camera/setting/SpinnerPreference;
    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->setEntries([Ljava/lang/String;)V

    .line 952
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->setResolutionEntryValues([I)V

    .line 953
    sget-object v24, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_PICTURE_DEFAULT_RESOLUTION:Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 954
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getFrontCameraResolution()I

    move-result v24

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->setSelection(I)V

    .line 955
    const v24, 0x7f0900d3

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->setTitleDescription(Ljava/lang/String;)V

    .line 961
    .end local v12    # "i":I
    .end local v19    # "pictureSizeList":[Ljava/lang/String;
    .end local v20    # "pictureSizeValue":[I
    .end local v22    # "resPref":Lcom/sec/android/app/camera/setting/SpinnerPreference;
    :cond_10
    :goto_a
    sget-boolean v24, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_MOTION_PHOTO:Z

    if-nez v24, :cond_11

    .line 962
    const-string v24, "pref_global_motion_photo_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->removePreference(Ljava/lang/CharSequence;)V

    .line 964
    :cond_11
    sget-boolean v24, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_OBJECT_TRACKING_AF:Z

    if-nez v24, :cond_12

    .line 965
    const-string v24, "pref_global_setup_object_trackingaf_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->removePreference(Ljava/lang/CharSequence;)V

    .line 967
    :cond_12
    sget-boolean v24, Lcom/sec/android/app/camera/feature/Feature;->CAMCORDER_ANTISHAKE:Z

    if-nez v24, :cond_14

    .line 968
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mActivity:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->isBackCamera()Z

    move-result v24

    if-nez v24, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mActivity:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->isDualBackCamera()Z

    move-result v24

    if-eqz v24, :cond_14

    .line 969
    :cond_13
    const-string v24, "pref_global_camcorder_antishake_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->removePreference(Ljava/lang/CharSequence;)V

    .line 972
    :cond_14
    sget-boolean v24, Lcom/sec/android/app/camera/feature/Feature;->CAMCORDER_FRONT_ANTISHAKE:Z

    if-nez v24, :cond_16

    .line 973
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mActivity:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->isFrontCamera()Z

    move-result v24

    if-nez v24, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mActivity:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->isDualFrontCamera()Z

    move-result v24

    if-eqz v24, :cond_16

    .line 974
    :cond_15
    const-string v24, "pref_global_camcorder_antishake_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->removePreference(Ljava/lang/CharSequence;)V

    .line 977
    :cond_16
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v24

    const-string v25, "CscFeature_Camera_ShutterSoundMenu"

    invoke-virtual/range {v24 .. v25}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_17

    .line 978
    const-string v24, "pref_global_camera_shutter_sound_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->removePreference(Ljava/lang/CharSequence;)V

    .line 980
    :cond_17
    sget-boolean v24, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_PREVIEW_FIT_TO_FULL_SCREEN:Z

    if-nez v24, :cond_18

    .line 981
    const-string v24, "pref_global_camera_fullpreview_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->removePreference(Ljava/lang/CharSequence;)V

    .line 983
    :cond_18
    sget-boolean v24, Lcom/sec/android/app/camera/feature/Feature;->REAR_LENS_DISTORTION_CORRECTION:Z

    if-nez v24, :cond_19

    .line 984
    const-string v24, "pref_global_rear_lens_distortion_correction_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->removePreference(Ljava/lang/CharSequence;)V

    .line 986
    :cond_19
    sget-boolean v24, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_QUICK_LAUNCH_USING_HOME_KEY:Z

    if-eqz v24, :cond_37

    sget-boolean v24, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_QUICK_LAUNCH_USING_POWER_KEY:Z

    if-eqz v24, :cond_37

    .line 987
    const-string v24, "pref_global_camera_quick_shot_using_power_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->removePreference(Ljava/lang/CharSequence;)V

    .line 988
    const-string v24, "pref_global_camera_quick_shot"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->removePreference(Ljava/lang/CharSequence;)V

    .line 1000
    :goto_b
    sget-boolean v24, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_VOICE_COMMAND:Z

    if-nez v24, :cond_1a

    .line 1001
    const-string v24, "pref_global_setup_voice_control_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->removePreference(Ljava/lang/CharSequence;)V

    .line 1003
    :cond_1a
    sget-boolean v24, Lcom/sec/android/app/camera/feature/Feature;->HEART_RATE_SENSOR:Z

    if-nez v24, :cond_1b

    .line 1004
    const-string v24, "pref_camera_hrm_shutter_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->removePreference(Ljava/lang/CharSequence;)V

    .line 1006
    :cond_1b
    sget-boolean v24, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_FLOATING_CAMERA_BUTTON:Z

    if-nez v24, :cond_1c

    .line 1007
    const-string v24, "pref_global_setup_floating_camera_button_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->removePreference(Ljava/lang/CharSequence;)V

    .line 1009
    :cond_1c
    const-string v24, "pref_global_setup_storage_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mStoragePreference:Landroid/preference/Preference;

    .line 1010
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mStoragePreference:Landroid/preference/Preference;

    move-object/from16 v24, v0

    if-eqz v24, :cond_1e

    .line 1011
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mStoragePreference:Landroid/preference/Preference;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/preference/Preference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 1012
    sget-boolean v24, Lcom/sec/android/app/camera/feature/Feature;->MICRO_SD_SLOT:Z

    if-eqz v24, :cond_1d

    invoke-static {}, Lcom/sec/android/app/camera/util/StorageUtils;->isExternalSDStorageMounted()Z

    move-result v24

    if-nez v24, :cond_1e

    .line 1013
    :cond_1d
    const-string v24, "pref_global_setup_storage_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->removePreference(Ljava/lang/CharSequence;)V

    .line 1016
    :cond_1e
    const-string v24, "contact_us"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    if-eqz v24, :cond_20

    .line 1017
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v24

    const-string v25, "com.samsung.android.voc"

    invoke-static/range {v24 .. v25}, Lcom/sec/android/app/camera/util/Util;->isPkgExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_1f

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/camera/util/Util;->isSamsungManagerVersionSupported(Landroid/content/Context;)Z

    move-result v24

    if-nez v24, :cond_20

    .line 1018
    :cond_1f
    const-string v24, "contact_us"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->removePreference(Landroid/preference/Preference;)V

    .line 1021
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/camera/util/Util;->isQRCodeDetectionSupported(Landroid/content/Context;)Z

    move-result v24

    if-nez v24, :cond_21

    .line 1022
    const-string v24, "pref_camera_qrcode_detection"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->removePreference(Ljava/lang/CharSequence;)V

    .line 1024
    :cond_21
    sget-boolean v24, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SUPPORT_FOCUSMODE_MENU:Z

    if-nez v24, :cond_22

    .line 1025
    const-string v24, "pref_camera_focus_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->removePreference(Ljava/lang/CharSequence;)V

    .line 1028
    :cond_22
    const-string v24, "camera_volume_key_spinner"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    check-cast v22, Lcom/sec/android/app/camera/setting/SpinnerPreference;

    .line 1029
    .restart local v22    # "resPref":Lcom/sec/android/app/camera/setting/SpinnerPreference;
    if-eqz v22, :cond_23

    .line 1030
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0c0013

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->setEntries([Ljava/lang/String;)V

    .line 1031
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0c0014

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->setEntryValues([I)V

    .line 1032
    sget v24, Lcom/sec/android/app/camera/interfaces/CameraSettings;->DEFAULT_VOLUME_KEY_AS:I

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 1033
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v24

    const-string v25, "pref_global_camera_volume_key_as"

    sget v26, Lcom/sec/android/app/camera/interfaces/CameraSettings;->DEFAULT_VOLUME_KEY_AS:I

    invoke-static/range {v24 .. v26}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v24

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->setSelection(I)V

    .line 1036
    :cond_23
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mPreferenceResId:I

    move/from16 v24, v0

    if-nez v24, :cond_24

    .line 1037
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v24

    const-string v25, "com.samsung.helphub"

    invoke-static/range {v24 .. v25}, Lcom/sec/android/app/camera/util/Util;->isPkgExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_24

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v24

    const-string v25, "com.samsung.helphub"

    invoke-static/range {v24 .. v25}, Lcom/sec/android/app/camera/util/Util;->isPkgEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_24

    .line 1038
    new-instance v11, Landroid/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v11, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 1039
    .local v11, "helpPref":Landroid/preference/Preference;
    const v24, 0x7f0900d9

    move/from16 v0, v24

    invoke-virtual {v11, v0}, Landroid/preference/Preference;->setTitle(I)V

    .line 1040
    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1041
    const-string v24, "pref_camera_help_key"

    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 1042
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->addPreference(Landroid/preference/Preference;)V

    .line 1046
    .end local v11    # "helpPref":Landroid/preference/Preference;
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mMenuDimController:Lcom/sec/android/app/camera/DimController;

    move-object/from16 v25, v0

    const/16 v26, 0x13e

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isOwner()Z

    move-result v24

    if-eqz v24, :cond_3a

    const/16 v24, 0x0

    :goto_c
    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/DimController;->setButtonDim(II)V

    .line 1047
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mMenuDimController:Lcom/sec/android/app/camera/DimController;

    move-object/from16 v24, v0

    const/16 v25, 0x7f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getInterval()I

    move-result v26

    invoke-virtual/range {v24 .. v26}, Lcom/sec/android/app/camera/DimController;->setButtonDim(II)V

    .line 1048
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mMenuDimController:Lcom/sec/android/app/camera/DimController;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mDimArray:[Z

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/camera/DimController;->getDimArray([Z)V

    .line 1053
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_d
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v24

    move/from16 v0, v24

    if-ge v12, v0, :cond_56

    .line 1054
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v24

    move-object/from16 v0, v24

    instance-of v0, v0, Landroid/preference/PreferenceCategory;

    move/from16 v24, v0

    if-eqz v24, :cond_54

    .line 1055
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Landroid/preference/PreferenceCategory;

    .line 1056
    .local v15, "mCategory":Landroid/preference/PreferenceCategory;
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_e
    invoke-virtual {v15}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v24

    move/from16 v0, v24

    if-ge v13, v0, :cond_55

    .line 1057
    invoke-virtual {v15, v13}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v18

    .line 1058
    .local v18, "mPreference":Landroid/preference/Preference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->onSettingChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v24, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1059
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->refreshPreference(Landroid/preference/Preference;)V

    .line 1061
    invoke-virtual/range {v18 .. v18}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v16

    .line 1062
    .local v16, "mKey":Ljava/lang/String;
    move-object/from16 v0, v18

    instance-of v0, v0, Landroid/preference/ListPreference;

    move/from16 v24, v0

    if-eqz v24, :cond_25

    .line 1063
    move-object/from16 v0, v18

    check-cast v0, Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    .line 1064
    .local v17, "mListPref":Landroid/preference/ListPreference;
    invoke-virtual/range {v17 .. v17}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v24

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1066
    .end local v17    # "mListPref":Landroid/preference/ListPreference;
    :cond_25
    move-object/from16 v0, v18

    instance-of v0, v0, Landroid/preference/SwitchPreference;

    move/from16 v24, v0

    if-eqz v24, :cond_45

    .line 1067
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mActivity:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getMenuIdByPreferenceKey(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getSettingDefaultValue(I)I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setDefaultValue(Ljava/lang/Object;)V

    .line 1068
    const-string v24, "pref_global_camera_quick_shot_using_power_key"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_3d

    .line 1069
    const v24, 0x7f0901f4

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1070
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isOwner()Z

    move-result v24

    if-eqz v24, :cond_3c

    .line 1071
    move-object/from16 v0, v18

    check-cast v0, Landroid/preference/SwitchPreference;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getQuickLaunchType()I

    move-result v25

    const/16 v26, 0x3

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_3b

    const/16 v25, 0x1

    :goto_f
    invoke-virtual/range {v24 .. v25}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1125
    :cond_26
    :goto_10
    if-eqz v16, :cond_28

    const-string v24, "reset"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_28

    .line 1126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mDimArray:[Z

    move-object/from16 v24, v0

    if-eqz v24, :cond_27

    .line 1127
    const/16 v24, 0x16

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getDim(I)Z

    move-result v24

    if-nez v24, :cond_4c

    const/16 v24, 0x1

    :goto_11
    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1129
    :cond_27
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1132
    :cond_28
    if-eqz v16, :cond_29

    const-string v24, "contact_us"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_29

    .line 1133
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1135
    :cond_29
    if-eqz v16, :cond_2c

    const-string v24, "camcorder_resolution_rear"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_2a

    const-string v24, "camcorder_resolution_front"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_2c

    .line 1137
    :cond_2a
    const-string v24, "camcorder_resolution_rear"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_4d

    .line 1138
    move-object/from16 v0, v18

    check-cast v0, Lcom/sec/android/app/camera/setting/SettingPreference;

    move-object/from16 v24, v0

    const v25, 0x7f0900e6

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/camera/setting/SettingPreference;->setTitleDescription(Ljava/lang/String;)V

    .line 1139
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1140
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getBackCamcorderResolution()I

    move-result v6

    .line 1146
    .local v6, "camcorderResolution":I
    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isAttachVideoFixedResolution()Z

    move-result v24

    if-eqz v24, :cond_4e

    .line 1147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getAttachVideoFixedResolution()I

    move-result v6

    .line 1158
    :cond_2b
    :goto_13
    const/16 v24, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 1159
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-static {v0, v6}, Lcom/sec/android/app/camera/util/CameraResolution;->getVideoSizeFullString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1160
    move-object/from16 v0, v18

    check-cast v0, Lcom/sec/android/app/camera/setting/SettingPreference;

    move-object/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v0, v6}, Lcom/sec/android/app/camera/util/Util;->getVideoSizeStringForTTS(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/camera/setting/SettingPreference;->setSummaryDescription(Ljava/lang/String;)V

    .line 1162
    .end local v6    # "camcorderResolution":I
    :cond_2c
    if-eqz v16, :cond_2f

    const-string v24, "camera_resolution_rear"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_2d

    const-string v24, "camera_resolution_front"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_2f

    .line 1164
    :cond_2d
    const-string v24, "camera_resolution_rear"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_50

    .line 1165
    move-object/from16 v0, v18

    check-cast v0, Lcom/sec/android/app/camera/setting/SettingPreference;

    move-object/from16 v24, v0

    const v25, 0x7f0900e8

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/camera/setting/SettingPreference;->setTitleDescription(Ljava/lang/String;)V

    .line 1166
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1167
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getBackCameraResolution()I

    move-result v7

    .line 1173
    .local v7, "cameraResolution":I
    :goto_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mActivity:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->isKeyboardCoverCamera()Z

    move-result v24

    if-eqz v24, :cond_2e

    .line 1174
    const/16 v24, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1175
    const-string v24, "keyboard_cover_resolution_disabled"

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 1177
    :cond_2e
    const/16 v24, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 1178
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-static {v0, v7}, Lcom/sec/android/app/camera/util/CameraResolution;->getPictureSizeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1179
    move-object/from16 v0, v18

    check-cast v0, Lcom/sec/android/app/camera/setting/SettingPreference;

    move-object/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v0, v7}, Lcom/sec/android/app/camera/util/Util;->getPictureSizeStringForTTS(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/camera/setting/SettingPreference;->setSummaryDescription(Ljava/lang/String;)V

    .line 1182
    .end local v7    # "cameraResolution":I
    :cond_2f
    if-eqz v16, :cond_30

    const-string v24, "rear_timer"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_30

    .line 1183
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1184
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0c0012

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getBackTimer()I

    move-result v25

    invoke-interface/range {v24 .. v25}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 1185
    .local v23, "timerSummary":Ljava/lang/String;
    const/16 v24, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 1186
    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1188
    .end local v23    # "timerSummary":Ljava/lang/String;
    :cond_30
    if-eqz v16, :cond_31

    const-string v24, "front_timer"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_31

    .line 1189
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1190
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0c0012

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getFrontTimer()I

    move-result v25

    invoke-interface/range {v24 .. v25}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 1191
    .restart local v23    # "timerSummary":Ljava/lang/String;
    const/16 v24, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 1192
    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1195
    .end local v23    # "timerSummary":Ljava/lang/String;
    :cond_31
    if-eqz v16, :cond_33

    const-string v24, "shooting_method"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_33

    .line 1196
    const/16 v24, 0x1d

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getDim(I)Z

    move-result v24

    if-eqz v24, :cond_32

    const/16 v24, 0x13

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getDim(I)Z

    move-result v24

    if-eqz v24, :cond_32

    const/16 v24, 0x1e

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getDim(I)Z

    move-result v24

    if-nez v24, :cond_51

    :cond_32
    const/16 v24, 0x1

    :goto_15
    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1198
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1201
    :cond_33
    if-eqz v16, :cond_35

    const-string v24, "quick_shot"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_35

    .line 1202
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isOwner()Z

    move-result v24

    if-eqz v24, :cond_53

    .line 1203
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getListQuickLaunchSummary()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1204
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getQuickLaunchType()I

    move-result v21

    .line 1206
    .local v21, "quickLaunch":I
    check-cast v18, Lcom/sec/android/app/camera/setting/SwitchListPreference;

    .end local v18    # "mPreference":Landroid/preference/Preference;
    const/16 v24, 0x3

    move/from16 v0, v21

    move/from16 v1, v24

    if-eq v0, v1, :cond_34

    const/16 v24, 0x1

    move/from16 v0, v21

    move/from16 v1, v24

    if-ne v0, v1, :cond_52

    :cond_34
    const/16 v24, 0x1

    :goto_16
    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/SwitchListPreference;->setChecked(Z)V

    .line 1056
    .end local v21    # "quickLaunch":I
    :cond_35
    :goto_17
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_e

    .line 957
    .end local v12    # "i":I
    .end local v13    # "j":I
    .end local v15    # "mCategory":Landroid/preference/PreferenceCategory;
    .end local v16    # "mKey":Ljava/lang/String;
    .end local v22    # "resPref":Lcom/sec/android/app/camera/setting/SpinnerPreference;
    :cond_36
    const-string v24, "camera_resolution_front_spinner"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->removePreference(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 989
    :cond_37
    sget-boolean v24, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_QUICK_LAUNCH_USING_HOME_KEY:Z

    if-eqz v24, :cond_38

    .line 990
    const-string v24, "quick_shot"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->removePreference(Ljava/lang/CharSequence;)V

    .line 991
    const-string v24, "pref_global_camera_quick_shot_using_power_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->removePreference(Ljava/lang/CharSequence;)V

    goto/16 :goto_b

    .line 992
    :cond_38
    sget-boolean v24, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_QUICK_LAUNCH_USING_POWER_KEY:Z

    if-eqz v24, :cond_39

    .line 993
    const-string v24, "quick_shot"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->removePreference(Ljava/lang/CharSequence;)V

    .line 994
    const-string v24, "pref_global_camera_quick_shot"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->removePreference(Ljava/lang/CharSequence;)V

    goto/16 :goto_b

    .line 996
    :cond_39
    const-string v24, "pref_global_camera_quick_shot_using_power_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->removePreference(Ljava/lang/CharSequence;)V

    .line 997
    const-string v24, "pref_global_camera_quick_shot"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->removePreference(Ljava/lang/CharSequence;)V

    .line 998
    const-string v24, "quick_shot"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->removePreference(Ljava/lang/CharSequence;)V

    goto/16 :goto_b

    .line 1046
    .restart local v22    # "resPref":Lcom/sec/android/app/camera/setting/SpinnerPreference;
    :cond_3a
    const/16 v24, 0x1

    goto/16 :goto_c

    .line 1071
    .restart local v12    # "i":I
    .restart local v13    # "j":I
    .restart local v15    # "mCategory":Landroid/preference/PreferenceCategory;
    .restart local v16    # "mKey":Ljava/lang/String;
    .restart local v18    # "mPreference":Landroid/preference/Preference;
    :cond_3b
    const/16 v25, 0x0

    goto/16 :goto_f

    .line 1073
    :cond_3c
    const/16 v24, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1074
    move-object/from16 v0, v18

    check-cast v0, Landroid/preference/SwitchPreference;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_10

    .line 1076
    :cond_3d
    const-string v24, "pref_global_camera_quick_shot"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_40

    .line 1077
    const v24, 0x7f0901f5

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1078
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isOwner()Z

    move-result v24

    if-eqz v24, :cond_3f

    .line 1079
    move-object/from16 v0, v18

    check-cast v0, Landroid/preference/SwitchPreference;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getQuickLaunchType()I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_3e

    const/16 v25, 0x1

    :goto_18
    invoke-virtual/range {v24 .. v25}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_10

    :cond_3e
    const/16 v25, 0x0

    goto :goto_18

    .line 1081
    :cond_3f
    const/16 v24, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1082
    move-object/from16 v0, v18

    check-cast v0, Landroid/preference/SwitchPreference;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_10

    .line 1084
    :cond_40
    const-string v24, "pref_global_setup_review_key"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_42

    .line 1085
    sget-boolean v24, Lcom/sec/android/app/camera/feature/Feature;->SALES_CODE_VZW:Z

    if-eqz v24, :cond_41

    .line 1086
    const v24, 0x7f09020e

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_10

    .line 1088
    :cond_41
    const v24, 0x7f09020d

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_10

    .line 1090
    :cond_42
    const-string v24, "pref_global_setup_voice_control_key"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_43

    .line 1091
    new-instance v24, Lcom/samsung/android/speech/SemSpeechRecognizer;

    invoke-direct/range {v24 .. v24}, Lcom/samsung/android/speech/SemSpeechRecognizer;-><init>()V

    const/16 v25, 0x7

    invoke-virtual/range {v24 .. v25}, Lcom/samsung/android/speech/SemSpeechRecognizer;->getCommandStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 1092
    .local v5, "bargeInCommands":[Ljava/lang/String;
    if-eqz v5, :cond_26

    .line 1094
    const v24, 0x7f090285

    const/16 v25, 0x5

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x0

    aget-object v27, v5, v27

    aput-object v27, v25, v26

    const/16 v26, 0x1

    const/16 v27, 0x1

    aget-object v27, v5, v27

    aput-object v27, v25, v26

    const/16 v26, 0x2

    const/16 v27, 0x2

    aget-object v27, v5, v27

    aput-object v27, v25, v26

    const/16 v26, 0x3

    const/16 v27, 0x3

    aget-object v27, v5, v27

    aput-object v27, v25, v26

    const/16 v26, 0x4

    const/16 v27, 0x4

    aget-object v27, v5, v27

    aput-object v27, v25, v26

    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_10

    .line 1097
    .end local v5    # "bargeInCommands":[Ljava/lang/String;
    :cond_43
    const-string v24, "pref_global_setup_floating_camera_button_key"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_44

    .line 1098
    const v24, 0x7f090179

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_10

    .line 1099
    :cond_44
    const-string v24, "pref_global_setup_self_flip_key"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_26

    .line 1100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mActivity:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getMenuIdByPreferenceKey(Ljava/lang/String;)I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getSettingValue(I)I

    move-result v8

    .line 1101
    .local v8, "flip":I
    move-object/from16 v0, v18

    check-cast v0, Landroid/preference/SwitchPreference;

    move-object/from16 v24, v0

    invoke-static {v8}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v25

    invoke-virtual/range {v24 .. v25}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_10

    .line 1103
    .end local v8    # "flip":I
    :cond_45
    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/sec/android/app/camera/setting/SpinnerPreference;

    move/from16 v24, v0

    if-eqz v24, :cond_26

    .line 1104
    const/16 v24, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 1105
    const-string v24, "camcorder_rear_resolution_spinner"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_46

    const-string v24, "camcorder_front_resolution_spinner"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_47

    .line 1106
    :cond_46
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCamcorderResolution()I

    move-result v25

    invoke-static/range {v24 .. v25}, Lcom/sec/android/app/camera/util/CameraResolution;->getVideoSizeFullString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_10

    .line 1107
    :cond_47
    const-string v24, "camera_resolution_rear_spinner"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_48

    const-string v24, "camera_resolution_front_spinner"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_4b

    .line 1109
    :cond_48
    const-string v24, "camera_resolution_rear_spinner"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_4a

    .line 1110
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getBackCameraResolution()I

    move-result v7

    .line 1114
    .restart local v7    # "cameraResolution":I
    :goto_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mActivity:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->isKeyboardCoverCamera()Z

    move-result v24

    if-eqz v24, :cond_49

    .line 1115
    const/16 v24, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1116
    const-string v24, "keyboard_cover_resolution_disabled"

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 1118
    :cond_49
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-static {v0, v7}, Lcom/sec/android/app/camera/util/CameraResolution;->getPictureSizeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1119
    move-object/from16 v0, v18

    check-cast v0, Lcom/sec/android/app/camera/setting/SpinnerPreference;

    move-object/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v0, v7}, Lcom/sec/android/app/camera/util/Util;->getPictureSizeStringForTTS(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->setSummaryDescription(Ljava/lang/String;)V

    goto/16 :goto_10

    .line 1112
    .end local v7    # "cameraResolution":I
    :cond_4a
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getFrontCameraResolution()I

    move-result v7

    .restart local v7    # "cameraResolution":I
    goto :goto_19

    .line 1121
    .end local v7    # "cameraResolution":I
    :cond_4b
    move-object/from16 v0, v18

    check-cast v0, Lcom/sec/android/app/camera/setting/SpinnerPreference;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->getEntry()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_10

    .line 1127
    :cond_4c
    const/16 v24, 0x0

    goto/16 :goto_11

    .line 1142
    :cond_4d
    move-object/from16 v0, v18

    check-cast v0, Lcom/sec/android/app/camera/setting/SettingPreference;

    move-object/from16 v24, v0

    const v25, 0x7f0900d1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/camera/setting/SettingPreference;->setTitleDescription(Ljava/lang/String;)V

    .line 1143
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1144
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getFrontCamcorderResolution()I

    move-result v6

    .restart local v6    # "camcorderResolution":I
    goto/16 :goto_12

    .line 1148
    :cond_4e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mActivity:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->isKeyboardCoverCamera()Z

    move-result v24

    if-eqz v24, :cond_4f

    .line 1149
    const-string v24, "1440x1440"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v6

    .line 1150
    const/16 v24, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1151
    const-string v24, "keyboard_cover_resolution_disabled"

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    goto/16 :goto_13

    .line 1153
    :cond_4f
    invoke-virtual/range {v18 .. v18}, Landroid/preference/Preference;->isEnabled()Z

    move-result v24

    if-nez v24, :cond_2b

    .line 1154
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v24

    const-string v25, "pref_overridden_camcorder_resolution"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    move-object/from16 v27, v0

    .line 1155
    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraId()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultCamcorderResolution(I)I

    move-result v26

    .line 1154
    invoke-static/range {v24 .. v26}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    goto/16 :goto_13

    .line 1169
    .end local v6    # "camcorderResolution":I
    :cond_50
    move-object/from16 v0, v18

    check-cast v0, Lcom/sec/android/app/camera/setting/SettingPreference;

    move-object/from16 v24, v0

    const v25, 0x7f0900d3

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/camera/setting/SettingPreference;->setTitleDescription(Ljava/lang/String;)V

    .line 1170
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1171
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getFrontCameraResolution()I

    move-result v7

    .restart local v7    # "cameraResolution":I
    goto/16 :goto_14

    .line 1196
    .end local v7    # "cameraResolution":I
    :cond_51
    const/16 v24, 0x0

    goto/16 :goto_15

    .line 1206
    .end local v18    # "mPreference":Landroid/preference/Preference;
    .restart local v21    # "quickLaunch":I
    :cond_52
    const/16 v24, 0x0

    goto/16 :goto_16

    .line 1208
    .end local v21    # "quickLaunch":I
    .restart local v18    # "mPreference":Landroid/preference/Preference;
    :cond_53
    const/16 v24, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1209
    check-cast v18, Lcom/sec/android/app/camera/setting/SwitchListPreference;

    .end local v18    # "mPreference":Landroid/preference/Preference;
    const/16 v24, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/SwitchListPreference;->setChecked(Z)V

    goto/16 :goto_17

    .line 1214
    .end local v13    # "j":I
    .end local v15    # "mCategory":Landroid/preference/PreferenceCategory;
    .end local v16    # "mKey":Ljava/lang/String;
    :cond_54
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v18

    .line 1215
    .restart local v18    # "mPreference":Landroid/preference/Preference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->onSettingChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v24, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1216
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->refreshPreference(Landroid/preference/Preference;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1053
    .end local v18    # "mPreference":Landroid/preference/Preference;
    :cond_55
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_d

    .line 1220
    :cond_56
    const/16 v24, 0x1

    monitor-exit p0

    return v24
.end method

.method public static newInstance(Lcom/sec/android/app/camera/setting/CameraSettingsImpl;Lcom/sec/android/app/camera/DimController;)Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;
    .locals 3
    .param p0, "settings"    # Lcom/sec/android/app/camera/setting/CameraSettingsImpl;
    .param p1, "dim"    # Lcom/sec/android/app/camera/DimController;

    .prologue
    .line 376
    new-instance v1, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    invoke-direct {v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;-><init>()V

    .line 377
    .local v1, "fragment":Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 378
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "setting"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 379
    const-string v2, "camera"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 380
    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->setArguments(Landroid/os/Bundle;)V

    .line 381
    return-object v1
.end method

.method public static newInstance(Lcom/sec/android/app/camera/setting/CameraSettingsImpl;Lcom/sec/android/app/camera/DimController;I)Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;
    .locals 3
    .param p0, "settings"    # Lcom/sec/android/app/camera/setting/CameraSettingsImpl;
    .param p1, "dim"    # Lcom/sec/android/app/camera/DimController;
    .param p2, "preferenceResId"    # I

    .prologue
    .line 385
    new-instance v1, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    invoke-direct {v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;-><init>()V

    .line 386
    .local v1, "fragment":Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 387
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "setting"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 388
    const-string v2, "camera"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 389
    const-string v2, "preference_res_id"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 390
    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->setArguments(Landroid/os/Bundle;)V

    .line 391
    return-object v1
.end method

.method private refreshPreference(Landroid/preference/Preference;)V
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 1224
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->checkCurrentPreferenceDependency(Landroid/preference/Preference;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1225
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 1226
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mDimArray:[Z

    if-eqz v1, :cond_0

    .line 1227
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->setDim(Ljava/lang/String;)V

    .line 1229
    :cond_0
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->setChecked(Ljava/lang/String;)V

    .line 1231
    .end local v0    # "key":Ljava/lang/String;
    :cond_1
    iget-boolean v1, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mIsInitialized:Z

    if-eqz v1, :cond_2

    .line 1232
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->refreshSummary(Landroid/preference/Preference;)V

    .line 1233
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->setChecked(Ljava/lang/String;)V

    .line 1235
    :cond_2
    return-void
.end method

.method private refreshSummary(Landroid/preference/Preference;)V
    .locals 8
    .param p1, "pref"    # Landroid/preference/Preference;

    .prologue
    const v5, 0x7f0c0012

    .line 1238
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 1239
    .local v2, "key":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 1299
    .end local p1    # "pref":Landroid/preference/Preference;
    :cond_0
    :goto_0
    return-void

    .line 1242
    .restart local p1    # "pref":Landroid/preference/Preference;
    :cond_1
    instance-of v4, p1, Lcom/sec/android/app/camera/setting/SpinnerPreference;

    if-eqz v4, :cond_3

    .line 1243
    const/4 v4, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v4, :pswitch_data_0

    move-object v4, p1

    .line 1257
    check-cast v4, Lcom/sec/android/app/camera/setting/SpinnerPreference;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->getEntry()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    move-object v4, p1

    .line 1258
    check-cast v4, Lcom/sec/android/app/camera/setting/SpinnerPreference;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->getEntry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1243
    :sswitch_0
    const-string v5, "camcorder_rear_resolution_spinner"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v4, 0x0

    goto :goto_1

    :sswitch_1
    const-string v5, "camcorder_front_resolution_spinner"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :sswitch_2
    const-string v5, "camera_resolution_rear_spinner"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v4, 0x2

    goto :goto_1

    :sswitch_3
    const-string v5, "camera_resolution_front_spinner"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v4, 0x3

    goto :goto_1

    .line 1246
    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCamcorderResolution()I

    move-result v5

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/CameraResolution;->getVideoSizeFullString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1249
    :pswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getBackCameraResolution()I

    move-result v5

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/CameraResolution;->getPictureSizeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1250
    check-cast p1, Lcom/sec/android/app/camera/setting/SpinnerPreference;

    .end local p1    # "pref":Landroid/preference/Preference;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getBackCameraResolution()I

    move-result v5

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->getPictureSizeStringForTTS(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->setSummaryDescription(Ljava/lang/String;)V

    goto :goto_0

    .line 1253
    .restart local p1    # "pref":Landroid/preference/Preference;
    :pswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getFrontCameraResolution()I

    move-result v5

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/CameraResolution;->getPictureSizeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1254
    check-cast p1, Lcom/sec/android/app/camera/setting/SpinnerPreference;

    .end local p1    # "pref":Landroid/preference/Preference;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getFrontCameraResolution()I

    move-result v5

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->getPictureSizeStringForTTS(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->setSummaryDescription(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1262
    .restart local p1    # "pref":Landroid/preference/Preference;
    :cond_3
    const-string v4, "camera_resolution_rear"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1263
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getBackCameraResolution()I

    move-result v1

    .line 1264
    .local v1, "cameraResolution":I
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getPictureSizeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1265
    check-cast p1, Lcom/sec/android/app/camera/setting/SettingPreference;

    .end local p1    # "pref":Landroid/preference/Preference;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/sec/android/app/camera/util/Util;->getPictureSizeStringForTTS(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/sec/android/app/camera/setting/SettingPreference;->setSummaryDescription(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1266
    .end local v1    # "cameraResolution":I
    .restart local p1    # "pref":Landroid/preference/Preference;
    :cond_4
    const-string v4, "camera_resolution_front"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1267
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getFrontCameraResolution()I

    move-result v1

    .line 1268
    .restart local v1    # "cameraResolution":I
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getPictureSizeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1269
    check-cast p1, Lcom/sec/android/app/camera/setting/SettingPreference;

    .end local p1    # "pref":Landroid/preference/Preference;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/sec/android/app/camera/util/Util;->getPictureSizeStringForTTS(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/sec/android/app/camera/setting/SettingPreference;->setSummaryDescription(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1270
    .end local v1    # "cameraResolution":I
    .restart local p1    # "pref":Landroid/preference/Preference;
    :cond_5
    const-string v4, "camcorder_resolution_rear"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "camcorder_resolution_front"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1272
    :cond_6
    const-string v4, "camcorder_resolution_rear"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1273
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getBackCamcorderResolution()I

    move-result v0

    .line 1278
    .local v0, "camcorderResolution":I
    :goto_2
    iget-object v4, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isAttachVideoFixedResolution()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1279
    iget-object v4, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getAttachVideoFixedResolution()I

    move-result v0

    .line 1288
    :cond_7
    :goto_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getVideoSizeFullString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1289
    check-cast p1, Lcom/sec/android/app/camera/setting/SettingPreference;

    .end local p1    # "pref":Landroid/preference/Preference;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/sec/android/app/camera/util/Util;->getVideoSizeStringForTTS(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/sec/android/app/camera/setting/SettingPreference;->setSummaryDescription(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1275
    .end local v0    # "camcorderResolution":I
    .restart local p1    # "pref":Landroid/preference/Preference;
    :cond_8
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getFrontCamcorderResolution()I

    move-result v0

    .restart local v0    # "camcorderResolution":I
    goto :goto_2

    .line 1280
    :cond_9
    iget-object v4, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mActivity:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->isKeyboardCoverCamera()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1281
    const-string v4, "1440x1440"

    invoke-static {v4}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    goto :goto_3

    .line 1283
    :cond_a
    invoke-virtual {p1}, Landroid/preference/Preference;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_7

    .line 1284
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "pref_overridden_camcorder_resolution"

    iget-object v6, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    iget-object v7, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    .line 1285
    invoke-virtual {v7}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getCameraId()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getDefaultCamcorderResolution(I)I

    move-result v6

    .line 1284
    invoke-static {v4, v5, v6}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_3

    .line 1290
    .end local v0    # "camcorderResolution":I
    :cond_b
    const-string v4, "rear_timer"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1291
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getBackTimer()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1292
    .local v3, "timerSummary":Ljava/lang/String;
    invoke-virtual {p1, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1293
    .end local v3    # "timerSummary":Ljava/lang/String;
    :cond_c
    const-string v4, "front_timer"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1294
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getFrontTimer()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1295
    .restart local v3    # "timerSummary":Ljava/lang/String;
    invoke-virtual {p1, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1296
    .end local v3    # "timerSummary":Ljava/lang/String;
    :cond_d
    const-string v4, "quick_shot"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1297
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getListQuickLaunchSummary()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1243
    :sswitch_data_0
    .sparse-switch
        -0x585a6be4 -> :sswitch_0
        -0x4471dfe9 -> :sswitch_2
        -0xa292076 -> :sswitch_3
        0x53145aa1 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private removePreference(Landroid/preference/Preference;)V
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 1314
    invoke-virtual {p1}, Landroid/preference/Preference;->getDependency()Ljava/lang/String;

    move-result-object v0

    .line 1315
    .local v0, "dep":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    instance-of v1, v1, Landroid/preference/PreferenceCategory;

    if-eqz v1, :cond_0

    .line 1316
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, p1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1320
    :goto_0
    return-void

    .line 1318
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private removePreference(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/CharSequence;

    .prologue
    .line 1302
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 1303
    .local v1, "p":Landroid/preference/Preference;
    if-eqz v1, :cond_0

    .line 1304
    invoke-virtual {v1}, Landroid/preference/Preference;->getDependency()Ljava/lang/String;

    move-result-object v0

    .line 1305
    .local v0, "dep":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    instance-of v2, v2, Landroid/preference/PreferenceCategory;

    if-eqz v2, :cond_1

    .line 1306
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1311
    .end local v0    # "dep":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1308
    .restart local v0    # "dep":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private setChecked(Ljava/lang/String;)V
    .locals 9
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x3

    const/4 v4, 0x0

    const/4 v7, -0x1

    const/4 v5, 0x1

    .line 1326
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    instance-of v2, v2, Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_2

    .line 1327
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mActivity:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual {v2, p1}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getMenuIdByPreferenceKey(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v7, :cond_2

    .line 1328
    const-string v2, "pref_global_camera_quick_shot"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "pref_global_camera_quick_shot_using_power_key"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1329
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getQuickLaunchType()I

    move-result v1

    .line 1330
    .local v1, "quickLaunchValue":I
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iget-object v3, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    if-eq v1, v5, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    if-ne v1, v8, :cond_6

    :cond_1
    move v3, v5

    :goto_0
    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1336
    .end local v1    # "quickLaunchValue":I
    :cond_2
    :goto_1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    instance-of v2, v2, Lcom/sec/android/app/camera/setting/SpinnerPreference;

    if-eqz v2, :cond_3

    .line 1337
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mActivity:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual {v2, p1}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getMenuIdByPreferenceKey(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v7, :cond_3

    .line 1338
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/setting/SpinnerPreference;

    iget-object v3, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    iget-object v6, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mActivity:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual {v6, p1}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getMenuIdByPreferenceKey(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getSettingValue(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->setSelection(I)V

    .line 1341
    :cond_3
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    instance-of v2, v2, Lcom/sec/android/app/camera/setting/SwitchListPreference;

    if-eqz v2, :cond_5

    .line 1342
    const-string v2, "quick_shot"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1343
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mActivity:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual {v2, p1}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getMenuIdByPreferenceKey(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v7, :cond_5

    .line 1344
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    iget-object v3, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mActivity:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual {v3, p1}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getMenuIdByPreferenceKey(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getSettingValue(I)I

    move-result v2

    if-eq v2, v5, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    iget-object v3, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mActivity:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    .line 1345
    invoke-virtual {v3, p1}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getMenuIdByPreferenceKey(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getSettingValue(I)I

    move-result v2

    if-ne v2, v8, :cond_8

    :cond_4
    move v0, v5

    .line 1346
    .local v0, "checker":Z
    :goto_2
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/setting/SwitchListPreference;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/setting/SwitchListPreference;->setChecked(Z)V

    .line 1354
    .end local v0    # "checker":Z
    :cond_5
    :goto_3
    return-void

    .restart local v1    # "quickLaunchValue":I
    :cond_6
    move v3, v4

    .line 1330
    goto :goto_0

    .line 1332
    .end local v1    # "quickLaunchValue":I
    :cond_7
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iget-object v3, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    iget-object v6, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mActivity:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual {v6, p1}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getMenuIdByPreferenceKey(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getSettingValue(I)I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_1

    :cond_8
    move v0, v4

    .line 1345
    goto :goto_2

    .line 1349
    :cond_9
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mActivity:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual {v2, p1}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getMenuIdByPreferenceKey(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v7, :cond_5

    .line 1350
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/setting/SwitchListPreference;

    iget-object v3, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    iget-object v6, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mActivity:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual {v6, p1}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getMenuIdByPreferenceKey(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getSettingValue(I)I

    move-result v3

    if-eqz v3, :cond_a

    :goto_4
    invoke-virtual {v2, v5}, Lcom/sec/android/app/camera/setting/SwitchListPreference;->setChecked(Z)V

    goto :goto_3

    :cond_a
    move v5, v4

    goto :goto_4
.end method

.method private setDim(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1360
    const/4 v0, 0x0

    .line 1362
    .local v0, "isDim":Z
    sget-object v1, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mDimHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1363
    sget-object v1, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mDimHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getDim(I)Z

    move-result v0

    .line 1364
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1366
    :cond_0
    return-void

    .line 1364
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private startScrollAnimation()V
    .locals 6

    .prologue
    .line 1369
    iget-object v3, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mActivity:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->isFrontCamera()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mActivity:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->isDualFrontCamera()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1370
    :cond_0
    const-string v3, "PrefSettingFragment"

    const-string v4, "startScrollAnimation!"

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1371
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x102000a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 1373
    .local v1, "listView":Landroid/widget/ListView;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string v4, "rear"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    instance-of v3, v3, Landroid/preference/PreferenceCategory;

    if-eqz v3, :cond_3

    .line 1374
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string v4, "rear"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 1375
    .local v0, "category":Landroid/preference/PreferenceCategory;
    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v3

    add-int/lit8 v2, v3, 0x1

    .line 1379
    .end local v0    # "category":Landroid/preference/PreferenceCategory;
    .local v2, "position":I
    :goto_0
    if-eqz v1, :cond_2

    .line 1380
    iget-object v3, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mActivity:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->isFromApplicationSettings()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1381
    new-instance v3, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$7;

    invoke-direct {v3, p0, v2, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$7;-><init>(Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;ILandroid/widget/ListView;)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 1398
    :cond_1
    new-instance v3, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$8;

    invoke-direct {v3, p0, v1, v2}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$8;-><init>(Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;Landroid/widget/ListView;I)V

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v3, v4, v5}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1406
    .end local v1    # "listView":Landroid/widget/ListView;
    .end local v2    # "position":I
    :cond_2
    return-void

    .line 1377
    .restart local v1    # "listView":Landroid/widget/ListView;
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "position":I
    goto :goto_0
.end method


# virtual methods
.method protected checkCurrentPreferenceDependency(Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 589
    iget-object v3, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mActivity:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->isAttachImageMode()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mActivity:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->isAttachVideoMode()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    move v1, v2

    .line 596
    :cond_1
    :goto_0
    return v1

    .line 592
    :cond_2
    invoke-virtual {p1}, Landroid/preference/Preference;->getDependency()Ljava/lang/String;

    move-result-object v0

    .line 593
    .local v0, "tag":Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mActivity:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->isBackCamera()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mActivity:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->isDualBackCamera()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 594
    :cond_3
    const-string v3, "rear"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "common"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_4
    move v1, v2

    goto :goto_0

    .line 596
    :cond_5
    const-string v3, "front"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "common"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_6
    move v1, v2

    goto :goto_0
.end method

.method public dismissCameraDialog(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;)V
    .locals 3
    .param p1, "id"    # Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    .prologue
    .line 395
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    .line 396
    .local v0, "fragment":Landroid/app/DialogFragment;
    if-nez v0, :cond_0

    .line 400
    :goto_0
    return-void

    .line 399
    :cond_0
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    goto :goto_0
.end method

.method protected getListQuickLaunchSummary()Ljava/lang/String;
    .locals 2

    .prologue
    .line 601
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getQuickLaunchType()I

    move-result v0

    .line 603
    .local v0, "quickLaunch":I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 604
    const v1, 0x7f090029

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 608
    :goto_0
    return-object v1

    .line 605
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 606
    const v1, 0x7f090028

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 608
    :cond_1
    const v1, 0x7f0901f0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected getListType(I)I
    .locals 1
    .param p1, "itemCount"    # I

    .prologue
    .line 613
    const/4 v0, 0x4

    if-le p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected getResolutionMenuType(Ljava/lang/String;)I
    .locals 4
    .param p1, "resolutionKey"    # Ljava/lang/String;

    .prologue
    .line 617
    invoke-static {}, Lcom/sec/android/app/camera/setting/CameraResolutionListLoader;->getInstance()Lcom/sec/android/app/camera/setting/CameraResolutionListLoader;

    move-result-object v1

    .line 618
    .local v1, "loader":Lcom/sec/android/app/camera/setting/CameraResolutionListLoader;
    const/4 v0, -0x1

    .line 619
    .local v0, "itemCount":I
    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 635
    :goto_1
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getListType(I)I

    move-result v2

    return v2

    .line 619
    :sswitch_0
    const-string v3, "pref_camera_rear_resolution_key"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :sswitch_1
    const-string v3, "pref_camera_front_resolution_key"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :sswitch_2
    const-string v3, "pref_camcorder_rear_resolution_key"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :sswitch_3
    const-string v3, "pref_camcorder_front_resolution_key"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x3

    goto :goto_0

    .line 621
    :pswitch_0
    invoke-virtual {v1}, Lcom/sec/android/app/camera/setting/CameraResolutionListLoader;->getBackPictureIdList()[I

    move-result-object v2

    array-length v0, v2

    .line 622
    goto :goto_1

    .line 624
    :pswitch_1
    invoke-virtual {v1}, Lcom/sec/android/app/camera/setting/CameraResolutionListLoader;->getFrontPictureSizeIdList()[I

    move-result-object v2

    array-length v0, v2

    .line 625
    goto :goto_1

    .line 627
    :pswitch_2
    invoke-virtual {v1}, Lcom/sec/android/app/camera/setting/CameraResolutionListLoader;->getBackVideoIdList()[I

    move-result-object v2

    array-length v0, v2

    .line 628
    goto :goto_1

    .line 630
    :pswitch_3
    invoke-virtual {v1}, Lcom/sec/android/app/camera/setting/CameraResolutionListLoader;->getFrontVideoSizeIdList()[I

    move-result-object v2

    array-length v0, v2

    .line 631
    goto :goto_1

    .line 619
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7a463437 -> :sswitch_0
        -0x6166ca20 -> :sswitch_1
        -0x2ac50b7d -> :sswitch_3
        0x24642cc6 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected launchResolutionSpinnerMenu(Ljava/lang/String;)V
    .locals 4
    .param p1, "resolutionSpinnerKey"    # Ljava/lang/String;

    .prologue
    .line 639
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/setting/SpinnerPreference;

    .line 640
    .local v1, "resPref":Lcom/sec/android/app/camera/setting/SpinnerPreference;
    const/4 v0, -0x1

    .line 641
    .local v0, "index":I
    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 657
    :goto_1
    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->setSelection(I)V

    .line 658
    invoke-virtual {v1}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->showSpinnerMenu()V

    .line 659
    return-void

    .line 641
    :sswitch_0
    const-string v3, "camera_resolution_rear_spinner"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :sswitch_1
    const-string v3, "camera_resolution_front_spinner"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :sswitch_2
    const-string v3, "camcorder_rear_resolution_spinner"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :sswitch_3
    const-string v3, "camcorder_front_resolution_spinner"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x3

    goto :goto_0

    .line 643
    :pswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getBackCameraResolution()I

    move-result v0

    .line 644
    goto :goto_1

    .line 646
    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getFrontCameraResolution()I

    move-result v0

    .line 647
    goto :goto_1

    .line 649
    :pswitch_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getBackCamcorderResolution()I

    move-result v0

    .line 650
    goto :goto_1

    .line 652
    :pswitch_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getFrontCamcorderResolution()I

    move-result v0

    .line 653
    goto :goto_1

    .line 641
    nop

    :sswitch_data_0
    .sparse-switch
        -0x585a6be4 -> :sswitch_2
        -0x4471dfe9 -> :sswitch_0
        -0xa292076 -> :sswitch_1
        0x53145aa1 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 404
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 405
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "setting"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    .line 406
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "camera"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/DimController;

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mMenuDimController:Lcom/sec/android/app/camera/DimController;

    .line 407
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "preference_res_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mPreferenceResId:I

    .line 409
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mMenuDimController:Lcom/sec/android/app/camera/DimController;

    if-eqz v0, :cond_0

    .line 410
    const/16 v0, 0x25

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mDimArray:[Z

    .line 411
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mMenuDimController:Lcom/sec/android/app/camera/DimController;

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mDimArray:[Z

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/DimController;->getDimArray([Z)V

    .line 414
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mActivity:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    .line 415
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 8
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 419
    sget-object v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mEventIdByPreferenceKeyMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    .line 420
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    const/4 v0, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    :goto_1
    move v0, v2

    .line 463
    :goto_2
    return v0

    .line 420
    :sswitch_0
    const-string v7, "camera_resolution_rear"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v0, v2

    goto :goto_0

    :sswitch_1
    const-string v7, "camcorder_resolution_rear"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_2
    const-string v7, "camera_resolution_front"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v0, v3

    goto :goto_0

    :sswitch_3
    const-string v7, "camcorder_resolution_front"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v0, v4

    goto :goto_0

    :sswitch_4
    const-string v7, "rear_timer"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v0, v5

    goto :goto_0

    :sswitch_5
    const-string v7, "front_timer"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_6
    const-string v7, "quick_shot"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_7
    const-string v7, "shooting_method"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :sswitch_8
    const-string v7, "reset"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :sswitch_9
    const-string v7, "contact_us"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v0, 0x9

    goto :goto_0

    :sswitch_a
    const-string v7, "pref_camera_help_key"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    .line 422
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mActivity:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->onLaunchListFragment(I)V

    move v0, v1

    .line 423
    goto :goto_2

    .line 425
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mActivity:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->onLaunchListFragment(I)V

    move v0, v1

    .line 426
    goto :goto_2

    .line 428
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mActivity:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->onLaunchListFragment(I)V

    move v0, v1

    .line 429
    goto/16 :goto_2

    .line 431
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mActivity:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->onLaunchListFragment(I)V

    move v0, v1

    .line 432
    goto/16 :goto_2

    .line 434
    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mActivity:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->onLaunchTimerFragment(I)V

    goto/16 :goto_1

    .line 437
    :pswitch_5
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mActivity:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->onLaunchTimerFragment(I)V

    move v0, v1

    .line 438
    goto/16 :goto_2

    .line 440
    :pswitch_6
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mActivity:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->onLaunchQuickLaunchFragment()V

    move v0, v1

    .line 441
    goto/16 :goto_2

    .line 443
    :pswitch_7
    const-string v0, "605"

    invoke-static {v0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->setSAScreenId(Ljava/lang/String;)V

    .line 444
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0900ee

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 445
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mActivity:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    const v1, 0x7f070005

    const-string v3, "SHOOTING_METHOD"

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->addPreferenceFragment(ILjava/lang/String;)V

    move v0, v2

    .line 446
    goto/16 :goto_2

    .line 448
    :pswitch_8
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->CONFIRM_RESET:Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->showCameraDialog(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;)V

    move v0, v2

    .line 449
    goto/16 :goto_2

    .line 451
    :pswitch_9
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mActivity:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->isSecureCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->isSecureKeyguardLocked(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 452
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->SECURE_LOCK_IN_CONTACT_US:Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->showCameraDialog(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;)V

    :goto_3
    move v0, v2

    .line 456
    goto/16 :goto_2

    .line 454
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mActivity:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->startContactUsActivity()V

    goto :goto_3

    .line 458
    :pswitch_a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->showHelpHub(Landroid/content/Context;)V

    move v0, v2

    .line 459
    goto/16 :goto_2

    .line 420
    nop

    :sswitch_data_0
    .sparse-switch
        -0x56bbba51 -> :sswitch_5
        -0x2aff6ae5 -> :sswitch_3
        -0x24c30716 -> :sswitch_4
        -0x1a24038e -> :sswitch_1
        -0x1542abc3 -> :sswitch_0
        -0xd2e71e1 -> :sswitch_a
        0x6761d4f -> :sswitch_8
        0x8565b1d -> :sswitch_9
        0x641d1a0c -> :sswitch_6
        0x6c4a36b0 -> :sswitch_2
        0x6c781d3d -> :sswitch_7
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public onStart()V
    .locals 6

    .prologue
    const/16 v5, 0x1770

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 468
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStart()V

    .line 470
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mIsInitialized:Z

    if-nez v0, :cond_0

    .line 471
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->initialize()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mIsInitialized:Z

    .line 472
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->startScrollAnimation()V

    .line 487
    :goto_0
    return-void

    .line 474
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isAttachImageMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 475
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mMenuDimController:Lcom/sec/android/app/camera/DimController;

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/camera/DimController;->setButtonDim(II)V

    .line 479
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mMenuDimController:Lcom/sec/android/app/camera/DimController;

    const/16 v1, 0x7f

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getInterval()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/DimController;->setButtonDim(II)V

    .line 480
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->isScreenReaderActive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->isTalkBackServiceActive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 481
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mMenuDimController:Lcom/sec/android/app/camera/DimController;

    invoke-virtual {v0, v5, v4}, Lcom/sec/android/app/camera/DimController;->setButtonDim(II)V

    .line 485
    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->refreshMenu()V

    goto :goto_0

    .line 476
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isAttachVideoMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 477
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mMenuDimController:Lcom/sec/android/app/camera/DimController;

    const/4 v1, 0x2

    invoke-virtual {v0, v3, v1}, Lcom/sec/android/app/camera/DimController;->setButtonDim(II)V

    goto :goto_1

    .line 483
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mMenuDimController:Lcom/sec/android/app/camera/DimController;

    invoke-virtual {v0, v5, v3}, Lcom/sec/android/app/camera/DimController;->setButtonDim(II)V

    goto :goto_2
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mQuickCameraDisableDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mQuickCameraDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 493
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mQuickCameraDisableDialog:Landroid/app/AlertDialog;

    .line 495
    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->VIDEO_STABILIZATION:Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->dismissCameraDialog(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;)V

    .line 496
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->CONFIRM_RESET:Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->dismissCameraDialog(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;)V

    .line 497
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->GPS_EULA_FROM_SETTING:Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->dismissCameraDialog(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;)V

    .line 498
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->GPS_EULA_CHINA_FROM_SETTING:Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->dismissCameraDialog(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;)V

    .line 499
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->LOCATION_TAG_GUIDE_FROM_SETTING:Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->dismissCameraDialog(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;)V

    .line 500
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->LOCATION_TAG_GUIDE_CHINA_FROM_SETTING:Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->dismissCameraDialog(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;)V

    .line 501
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    .line 502
    return-void
.end method

.method protected refreshMenu()V
    .locals 5

    .prologue
    .line 665
    iget-object v3, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mMenuDimController:Lcom/sec/android/app/camera/DimController;

    iget-object v4, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mDimArray:[Z

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/DimController;->getDimArray([Z)V

    .line 666
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 667
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    instance-of v3, v3, Landroid/preference/PreferenceCategory;

    if-eqz v3, :cond_0

    .line 668
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 669
    .local v0, "category":Landroid/preference/PreferenceCategory;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 670
    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->refreshPreference(Landroid/preference/Preference;)V

    .line 669
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 673
    .end local v0    # "category":Landroid/preference/PreferenceCategory;
    .end local v2    # "j":I
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->refreshPreference(Landroid/preference/Preference;)V

    .line 666
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 677
    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mStoragePreference:Landroid/preference/Preference;

    if-eqz v3, :cond_3

    .line 678
    invoke-static {}, Lcom/sec/android/app/camera/util/StorageUtils;->isExternalSDStorageMounted()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 679
    iget-object v3, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mStoragePreference:Landroid/preference/Preference;

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->addPreference(Landroid/preference/Preference;)V

    .line 680
    iget-object v4, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mStoragePreference:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mStoragePreference:Landroid/preference/Preference;

    check-cast v3, Lcom/sec/android/app/camera/setting/SpinnerPreference;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->getEntry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 685
    :cond_3
    :goto_2
    return-void

    .line 682
    :cond_4
    iget-object v3, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mStoragePreference:Landroid/preference/Preference;

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->removePreference(Landroid/preference/Preference;)V

    goto :goto_2
.end method

.method protected refreshMenuForBixby()V
    .locals 5

    .prologue
    .line 688
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 689
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    instance-of v4, v4, Landroid/preference/PreferenceCategory;

    if-eqz v4, :cond_0

    .line 690
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 691
    .local v0, "category":Landroid/preference/PreferenceCategory;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 692
    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 693
    .local v3, "key":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->setChecked(Ljava/lang/String;)V

    .line 694
    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->refreshSummary(Landroid/preference/Preference;)V

    .line 691
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 697
    .end local v0    # "category":Landroid/preference/PreferenceCategory;
    .end local v2    # "j":I
    .end local v3    # "key":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 698
    .restart local v3    # "key":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->setChecked(Ljava/lang/String;)V

    .line 699
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->refreshSummary(Landroid/preference/Preference;)V

    .line 688
    .end local v3    # "key":Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 702
    :cond_2
    return-void
.end method

.method public scrollToRequestedCategory(Ljava/lang/String;)V
    .locals 8
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 510
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getView()Landroid/view/View;

    move-result-object v5

    const v6, 0x102000a

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 513
    .local v2, "listView":Landroid/widget/ListView;
    const-string v5, "rear"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 514
    const/4 v3, 0x0

    .line 526
    .local v3, "position":I
    :goto_0
    if-eqz v2, :cond_0

    .line 527
    new-instance v5, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$4;

    invoke-direct {v5, p0, v2, v3}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$4;-><init>(Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;Landroid/widget/ListView;I)V

    const-wide/16 v6, 0x64

    invoke-virtual {v2, v5, v6, v7}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 534
    :cond_0
    return-void

    .line 515
    .end local v3    # "position":I
    :cond_1
    const-string v5, "front"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 516
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    const-string v6, "rear"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    .line 517
    .local v4, "rearCategory":Landroid/preference/PreferenceCategory;
    invoke-virtual {v4}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v5

    add-int/lit8 v3, v5, 0x1

    .line 518
    .restart local v3    # "position":I
    goto :goto_0

    .line 519
    .end local v3    # "position":I
    .end local v4    # "rearCategory":Landroid/preference/PreferenceCategory;
    :cond_2
    const/4 v1, 0x0

    .line 520
    .local v1, "frontPosition":I
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    const-string v6, "rear"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    .line 521
    .restart local v4    # "rearCategory":Landroid/preference/PreferenceCategory;
    invoke-virtual {v4}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v5

    add-int/lit8 v1, v5, 0x1

    .line 522
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    const-string v6, "front"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 523
    .local v0, "frontCategory":Landroid/preference/PreferenceCategory;
    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v5

    add-int/2addr v5, v1

    add-int/lit8 v3, v5, 0x1

    .restart local v3    # "position":I
    goto :goto_0
.end method

.method public setGPS(Z)V
    .locals 2
    .param p1, "gps"    # Z

    .prologue
    .line 542
    const-string v1, "pref_global_setup_gps_key"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    .line 543
    .local v0, "mGpsPref":Landroid/preference/SwitchPreference;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eq p1, v1, :cond_0

    .line 544
    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 546
    :cond_0
    return-void
.end method

.method public showCameraDialog(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;)V
    .locals 7
    .param p1, "id"    # Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    .prologue
    .line 568
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    .line 569
    .local v3, "ft":Landroid/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->ordinal()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Landroid/app/DialogFragment;

    .line 570
    .local v2, "fragment":Landroid/app/DialogFragment;
    if-eqz v2, :cond_0

    .line 571
    invoke-virtual {v2}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 573
    :cond_0
    invoke-static {p1}, Lcom/sec/android/app/camera/CameraDialog;->newInstance(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;)Lcom/sec/android/app/camera/CameraDialog;

    move-result-object v0

    .line 575
    .local v0, "dialog":Landroid/app/DialogFragment;
    :try_start_0
    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->ordinal()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 579
    :goto_0
    return-void

    .line 576
    :catch_0
    move-exception v1

    .line 577
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string v4, "PrefSettingFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "showCameraDialog : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public showCameraDialog(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "id"    # Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 549
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    .line 550
    .local v3, "ft":Landroid/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->ordinal()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Landroid/app/DialogFragment;

    .line 551
    .local v2, "fragment":Landroid/app/DialogFragment;
    if-eqz v2, :cond_0

    .line 552
    invoke-virtual {v2}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 554
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/sec/android/app/camera/CameraDialog;->newInstance(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/camera/CameraDialog;

    move-result-object v0

    .line 556
    .local v0, "dialog":Landroid/app/DialogFragment;
    :try_start_0
    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->ordinal()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 560
    :goto_0
    return-void

    .line 557
    :catch_0
    move-exception v1

    .line 558
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string v4, "PrefSettingFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "showCameraDialog : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
