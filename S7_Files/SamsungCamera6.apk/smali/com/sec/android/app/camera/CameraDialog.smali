.class public Lcom/sec/android/app/camera/CameraDialog;
.super Landroid/app/DialogFragment;
.source "CameraDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;,
        Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;,
        Lcom/sec/android/app/camera/CameraDialog$OnKeyListener;,
        Lcom/sec/android/app/camera/CameraDialog$CustomDialog;
    }
.end annotation


# static fields
.field private static final KEY_BURST_SHOT_STORAGE_TEXT_DIALOG_ENABLED:Ljava/lang/String; = "pref_global_burst_shot_storage_text_dialog_enabled"

.field private static final KEY_CHANGE_STORAGE_SETTING_DIALOG_ENABLED:Ljava/lang/String; = "pref_global_change_storage_setting_dialog_enabled"

.field private static final KEY_CHECK_NETWORK_PERMISSION_DIALOG_ENABLED:Ljava/lang/String; = "pref_global_check_network_permission_dialog_enabled"

.field private static final KEY_ID:Ljava/lang/String; = "id"

.field private static final KEY_LOCATION_TAG_FIRST_LAUNCH_CAMERA:Ljava/lang/String; = "location_tag_first_launch_camera_key"

.field private static final KEY_LOCATION_TAG_POPUP_DISPLAY_COUNT:Ljava/lang/String; = "location_tag_popup_display_count_key"

.field private static final KEY_MESSAGE:Ljava/lang/String; = "msg"

.field private static final KEY_QUICK_LAUNCH_DIALOG_ENABLED:Ljava/lang/String; = "pref_global_quick_launch_dialog_enabled"

.field private static final KEY_TITLE:Ljava/lang/String; = "title"

.field private static final NUM_LOCATION_TAG_POPUP_DISPLAY:I = 0x2

.field private static final TAG:Ljava/lang/String; = "CameraDialog"

.field private static mCameraDialogListener:Lcom/sec/android/app/camera/interfaces/CameraContext$CameraDialogListener;


# instance fields
.field private mSeparatedShootingModeMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/CameraDialog;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/CameraDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CameraDialog;->setQuickLaunchDialogEnabled(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/android/app/camera/CameraDialog;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/CameraDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CameraDialog;->setLocationTagDialogEnabled(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/android/app/camera/CameraDialog;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/CameraDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CameraDialog;->setBurstShotsStorageDialogEnabled(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/sec/android/app/camera/CameraDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/CameraDialog;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraDialog;->mSeparatedShootingModeMessage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/CameraDialog;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/CameraDialog;
    .param p1, "x1"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CameraDialog;->showCameraDialog(I)V

    return-void
.end method

.method static synthetic access$400()Lcom/sec/android/app/camera/interfaces/CameraContext$CameraDialogListener;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/sec/android/app/camera/CameraDialog;->mCameraDialogListener:Lcom/sec/android/app/camera/interfaces/CameraContext$CameraDialogListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/CameraDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/CameraDialog;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraDialog;->dismissCameraDialog()V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/CameraDialog;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/CameraDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CameraDialog;->setChangeStorageSettingDialogEnabled(Z)V

    return-void
.end method

.method private dismissCameraDialog()V
    .locals 1

    .prologue
    .line 837
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraDialog;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 838
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraDialog;->dismissAllowingStateLoss()V

    .line 840
    :cond_0
    return-void
.end method

.method private isAllowAppPermissionDialogEnabled()Z
    .locals 3

    .prologue
    .line 843
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_check_network_permission_dialog_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isBurstShotsStorageDialogEnabled()Z
    .locals 3

    .prologue
    .line 857
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_burst_shot_storage_text_dialog_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isChangeStorageSettingDialogEnabled()Z
    .locals 3

    .prologue
    .line 868
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_change_storage_setting_dialog_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected static isLocationTagDialogEnabled(Landroid/content/Context;Z)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isFirstLaunchCamera"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 131
    if-eqz p1, :cond_0

    .line 132
    const-string v3, "location_tag_first_launch_camera_key"

    invoke-static {p0, v3, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    .line 140
    :goto_0
    return v2

    .line 134
    :cond_0
    const-string v4, "location_tag_popup_display_count_key"

    invoke-static {p0, v4, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 135
    .local v0, "locationTagDisplayCount":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "locationTagDisplayCount":I
    .local v1, "locationTagDisplayCount":I
    const/4 v4, 0x2

    if-ge v0, v4, :cond_1

    .line 136
    const-string v3, "location_tag_popup_display_count_key"

    invoke-static {p0, v3, v1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    move v2, v3

    .line 140
    goto :goto_0
.end method

.method protected static isQuickLaunchDialogEnabled(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 144
    const-string v0, "pref_global_quick_launch_dialog_enabled"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static newInstance(I)Lcom/sec/android/app/camera/CameraDialog;
    .locals 3
    .param p0, "id"    # I

    .prologue
    .line 101
    new-instance v1, Lcom/sec/android/app/camera/CameraDialog;

    invoke-direct {v1}, Lcom/sec/android/app/camera/CameraDialog;-><init>()V

    .line 102
    .local v1, "fragment":Lcom/sec/android/app/camera/CameraDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 103
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "id"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 104
    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/CameraDialog;->setArguments(Landroid/os/Bundle;)V

    .line 105
    return-object v1
.end method

.method public static newInstance(ILjava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/camera/CameraDialog;
    .locals 3
    .param p0, "id"    # I
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 109
    new-instance v1, Lcom/sec/android/app/camera/CameraDialog;

    invoke-direct {v1}, Lcom/sec/android/app/camera/CameraDialog;-><init>()V

    .line 110
    .local v1, "fragment":Lcom/sec/android/app/camera/CameraDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 111
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "id"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 112
    const-string v2, "title"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v2, "msg"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/CameraDialog;->setArguments(Landroid/os/Bundle;)V

    .line 115
    return-object v1
.end method

.method public static resetChangeStorageSettingDialogEnabled(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 122
    const-string v0, "pref_global_change_storage_setting_dialog_enabled"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 123
    return-void
.end method

.method private setAllowAppPermissionDialogEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 850
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_check_network_permission_dialog_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 851
    const-string v0, "CameraDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAllowAppPermissionDialogEnabled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_check_network_permission_dialog_enabled"

    invoke-static {v0, v1, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 854
    :cond_0
    return-void
.end method

.method private setBurstShotsStorageDialogEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 861
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_burst_shot_storage_text_dialog_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 862
    const-string v0, "CameraDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBurstShotsStorageDialogEnabled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_burst_shot_storage_text_dialog_enabled"

    invoke-static {v0, v1, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 865
    :cond_0
    return-void
.end method

.method public static setCameraDialogListener(Lcom/sec/android/app/camera/interfaces/CameraContext$CameraDialogListener;)V
    .locals 0
    .param p0, "listener"    # Lcom/sec/android/app/camera/interfaces/CameraContext$CameraDialogListener;

    .prologue
    .line 127
    sput-object p0, Lcom/sec/android/app/camera/CameraDialog;->mCameraDialogListener:Lcom/sec/android/app/camera/interfaces/CameraContext$CameraDialogListener;

    .line 128
    return-void
.end method

.method private setChangeStorageSettingDialogEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 875
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_change_storage_setting_dialog_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 876
    const-string v0, "CameraDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setChangeStorageSettingDialogEnabled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_change_storage_setting_dialog_enabled"

    invoke-static {v0, v1, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 879
    :cond_0
    return-void
.end method

.method private setLocationTagDialogEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 882
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    .line 889
    :cond_0
    :goto_0
    return-void

    .line 885
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "location_tag_first_launch_camera_key"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 886
    const-string v0, "CameraDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLocationTagDialogEnabled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "location_tag_first_launch_camera_key"

    invoke-static {v0, v1, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private setQuickLaunchDialogEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 892
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_quick_launch_dialog_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 893
    const-string v0, "CameraDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setQuickLaunchDialogEnabled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_quick_launch_dialog_enabled"

    invoke-static {v0, v1, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 896
    :cond_0
    return-void
.end method

.method private showCameraDialog(I)V
    .locals 5
    .param p1, "id"    # I

    .prologue
    .line 904
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraDialog;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 905
    .local v2, "ft":Landroid/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraDialog;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Landroid/app/DialogFragment;

    .line 906
    .local v1, "fragment":Landroid/app/DialogFragment;
    if-eqz v1, :cond_0

    .line 907
    invoke-virtual {v1}, Landroid/app/DialogFragment;->dismiss()V

    .line 909
    :cond_0
    invoke-static {p1}, Lcom/sec/android/app/camera/CameraDialog;->newInstance(I)Lcom/sec/android/app/camera/CameraDialog;

    move-result-object v0

    .line 910
    .local v0, "dialog":Landroid/app/DialogFragment;
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 911
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 912
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 154
    .local v0, "id":I
    sget-object v1, Lcom/sec/android/app/camera/CameraDialog;->mCameraDialogListener:Lcom/sec/android/app/camera/interfaces/CameraContext$CameraDialogListener;

    if-eqz v1, :cond_0

    .line 155
    sget-object v1, Lcom/sec/android/app/camera/CameraDialog;->mCameraDialogListener:Lcom/sec/android/app/camera/interfaces/CameraContext$CameraDialogListener;

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/CameraContext$CameraDialogListener;->onCancelDialog(I)V

    .line 158
    :cond_0
    sparse-switch v0, :sswitch_data_0

    .line 168
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraDialog;->dismissCameraDialog()V

    .line 169
    return-void

    .line 160
    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 163
    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v1

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    goto :goto_0

    .line 158
    nop

    :sswitch_data_0
    .sparse-switch
        0x1d9 -> :sswitch_1
        0x1e1 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 32
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 176
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v27

    const-string v28, "id"

    invoke-virtual/range {v27 .. v28}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 177
    .local v8, "id":I
    new-instance v5, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;-><init>(Lcom/sec/android/app/camera/CameraDialog;Landroid/content/Context;)V

    .line 178
    .local v5, "builder":Lcom/sec/android/app/camera/CameraDialog$CustomDialog;
    invoke-virtual {v5, v8}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setKeyId(I)V

    .line 179
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v10

    .line 180
    .local v10, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v27

    const-string v28, "title"

    invoke-virtual/range {v27 .. v28}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 181
    .local v26, "title":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v27

    const-string v28, "msg"

    invoke-virtual/range {v27 .. v28}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 182
    .local v16, "message":Ljava/lang/String;
    const-string v27, "CameraDialog"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "onCreateDialog id = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " msg = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    sparse-switch v8, :sswitch_data_0

    .line 742
    :goto_0
    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->create()Landroid/app/AlertDialog;

    move-result-object v27

    :goto_1
    return-object v27

    .line 185
    :sswitch_0
    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 186
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 187
    const v27, 0x104000a

    const/16 v28, 0x0

    move/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 190
    :sswitch_1
    const v27, 0x7f0a01b3

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 191
    const v27, 0x7f0a033f

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 192
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x104000a

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    new-instance v28, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 193
    const/high16 v27, 0x1040000

    new-instance v28, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 196
    :sswitch_2
    const v27, 0x7f0a01b2

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 197
    const v27, 0x7f0a033e

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 198
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x104000a

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    new-instance v28, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 201
    :sswitch_3
    const v27, 0x7f0a0280

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 202
    const v27, 0x7f0a01a4

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 204
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v27

    check-cast v27, Lcom/sec/android/app/camera/Camera;

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/app/camera/Camera;->getMemoryStatus()I

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_5

    .line 205
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v27

    check-cast v27, Lcom/sec/android/app/camera/Camera;

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStorage()I

    move-result v27

    if-nez v27, :cond_7

    invoke-static {}, Lcom/sec/android/app/camera/util/StorageUtils;->isStorageMounted()Z

    move-result v27

    if-eqz v27, :cond_7

    sget-boolean v27, Lcom/sec/android/app/camera/Camera;->mIsRecordKey:Z

    if-nez v27, :cond_0

    .line 206
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v27

    check-cast v27, Lcom/sec/android/app/camera/Camera;

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/app/camera/Camera;->isExternalMemoryAvailable()Z

    move-result v27

    if-eqz v27, :cond_7

    .line 207
    :cond_0
    const-string v27, "CameraDialog"

    const-string v28, "change_to_card_memory"

    invoke-static/range {v27 .. v28}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const-string v7, ""

    .line 210
    .local v7, "description":Ljava/lang/String;
    sget-boolean v27, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LOW_PERFORMANCE_CONTINUOUS:Z

    if-nez v27, :cond_6

    .line 211
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "\n- "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const v28, 0x7f0a00c4

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 215
    :goto_2
    sget-boolean v27, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SUPPORT_PICTURE_FORMAT:Z

    if-eqz v27, :cond_1

    .line 216
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "\n- "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const v28, 0x7f0a00e3

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 218
    :cond_1
    sget-boolean v27, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_VIDEO_COLLAGE:Z

    if-nez v27, :cond_2

    sget-boolean v27, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_VIDEO_COLLAGE:Z

    if-eqz v27, :cond_3

    .line 219
    :cond_2
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "\n- "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const v28, 0x7f0a008e

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 222
    :cond_3
    const v27, 0x7f0a0137

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 223
    const-string v27, ""

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_4

    .line 224
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "\n\n"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const v28, 0x7f0a0138

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 225
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 227
    :cond_4
    const v27, 0x7f0a0129

    new-instance v28, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 238
    .end local v7    # "description":Ljava/lang/String;
    :cond_5
    :goto_3
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 239
    const v27, 0x7f0a01d8

    new-instance v28, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 240
    new-instance v27, Lcom/sec/android/app/camera/CameraDialog$OnKeyListener;

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnKeyListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 213
    .restart local v7    # "description":Ljava/lang/String;
    :cond_6
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "\n- "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const v28, 0x7f0a0091

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_2

    .line 228
    .end local v7    # "description":Ljava/lang/String;
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v27

    check-cast v27, Lcom/sec/android/app/camera/Camera;

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStorage()I

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_8

    .line 229
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v27

    check-cast v27, Lcom/sec/android/app/camera/Camera;

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/sec/android/app/camera/Camera;->getStorageStatus(I)I

    move-result v27

    if-nez v27, :cond_8

    .line 230
    const-string v27, "CameraDialog"

    const-string v28, "change_to_phone_memory"

    invoke-static/range {v27 .. v28}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const v27, 0x7f0a0139

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 232
    const v27, 0x7f0a0129

    new-instance v28, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_3

    .line 234
    :cond_8
    const-string v27, "CameraDialog"

    const-string v28, "not enough space"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    const v27, 0x7f0a01d5

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_3

    .line 243
    :sswitch_4
    const v27, 0x7f0a012c

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 244
    const v27, 0x7f0a012d

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 245
    const v27, 0x7f0a0157

    const/16 v28, 0x0

    move/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 246
    new-instance v27, Lcom/sec/android/app/camera/CameraDialog$OnKeyListener;

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnKeyListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 249
    :sswitch_5
    const v27, 0x7f0a012b

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 250
    const v27, 0x7f0a012d

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 251
    const v27, 0x7f0a0157

    const/16 v28, 0x0

    move/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 252
    new-instance v27, Lcom/sec/android/app/camera/CameraDialog$OnKeyListener;

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnKeyListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 255
    :sswitch_6
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->isChangeStorageSettingDialogEnabled()Z

    move-result v27

    if-nez v27, :cond_9

    .line 256
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->dismissCameraDialog()V

    .line 257
    const/16 v27, 0x0

    goto/16 :goto_1

    .line 259
    :cond_9
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0a022b

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "\n\n"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0a022c

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 260
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v27

    check-cast v27, Lcom/sec/android/app/camera/Camera;

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isEasyCamera()Z

    move-result v27

    if-nez v27, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v27

    check-cast v27, Lcom/sec/android/app/camera/Camera;

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v27

    if-nez v27, :cond_a

    .line 261
    sget-boolean v27, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LOW_PERFORMANCE_CONTINUOUS:Z

    if-nez v27, :cond_b

    .line 262
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "\n\n"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0a0229

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 267
    :cond_a
    :goto_4
    const v27, 0x7f0a022d

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v27

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 268
    const v27, 0x104000a

    new-instance v28, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 269
    const/high16 v27, 0x1040000

    new-instance v28, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 264
    :cond_b
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "\n\n"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0a022a

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    goto :goto_4

    .line 272
    :sswitch_7
    const-string v27, "CameraDialog"

    const-string v28, "FLIP_OPEN_DLG"

    invoke-static/range {v27 .. v28}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v27

    check-cast v27, Lcom/sec/android/app/camera/Camera;

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_d

    .line 274
    const v27, 0x7f0a0280

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 275
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v27

    check-cast v27, Lcom/sec/android/app/camera/Camera;

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecording()Z

    move-result v27

    if-nez v27, :cond_c

    const v27, 0x7f0a0217

    :goto_5
    move/from16 v0, v27

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 276
    const v27, 0x104000a

    new-instance v28, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 277
    new-instance v27, Lcom/sec/android/app/camera/CameraDialog$OnKeyListener;

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnKeyListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 275
    :cond_c
    const v27, 0x7f0a0215

    goto :goto_5

    .line 279
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->dismissCameraDialog()V

    .line 280
    const/16 v27, 0x0

    goto/16 :goto_1

    .line 284
    :sswitch_8
    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 285
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 286
    const v27, 0x104000a

    const/16 v28, 0x0

    move/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 289
    :sswitch_9
    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 290
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 291
    const v27, 0x104000a

    const/16 v28, 0x0

    move/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 292
    const/high16 v27, 0x1040000

    new-instance v28, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 295
    :sswitch_a
    const v27, 0x7f0a00d5

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 296
    const v27, 0x7f0a01c6

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 297
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 298
    const v27, 0x104000a

    new-instance v28, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 302
    :sswitch_b
    const v27, 0x7f0a00d5

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 303
    const v27, 0x7f0a01c7

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 304
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 305
    const v27, 0x104000a

    new-instance v28, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 309
    :sswitch_c
    const v27, 0x7f0a00d5

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 310
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/sec/android/app/camera/util/Util;->isWifiOnly(Landroid/content/Context;)Z

    move-result v27

    if-eqz v27, :cond_e

    .line 311
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const v28, 0x7f0a01c6

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "\n\n"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const v28, 0x7f0a0104

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 315
    :goto_6
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 316
    const v27, 0x104000a

    new-instance v28, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 313
    :cond_e
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const v28, 0x7f0a01c6

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "\n\n"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const v28, 0x7f0a0103

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_6

    .line 320
    :sswitch_d
    const v27, 0x7f0a00d5

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 321
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/sec/android/app/camera/util/Util;->isWifiOnly(Landroid/content/Context;)Z

    move-result v27

    if-eqz v27, :cond_f

    .line 322
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const v28, 0x7f0a01c7

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "\n\n"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const v28, 0x7f0a0104

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 326
    :goto_7
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 327
    const v27, 0x104000a

    new-instance v28, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 324
    :cond_f
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const v28, 0x7f0a01c7

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "\n\n"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const v28, 0x7f0a0103

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_7

    .line 331
    :sswitch_e
    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 332
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 333
    const v27, 0x7f0a0157

    const/16 v28, 0x0

    move/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 334
    new-instance v27, Lcom/sec/android/app/camera/CameraDialog$OnKeyListener;

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnKeyListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 337
    :sswitch_f
    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 338
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 339
    const v27, 0x7f0a0157

    new-instance v28, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 340
    new-instance v27, Lcom/sec/android/app/camera/CameraDialog$OnKeyListener;

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnKeyListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 343
    :sswitch_10
    const v27, 0x7f0a0280

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 344
    const v27, 0x7f0a0117

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 345
    const v27, 0x7f0a0157

    const/16 v28, 0x0

    move/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 346
    new-instance v27, Lcom/sec/android/app/camera/CameraDialog$OnKeyListener;

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnKeyListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 349
    :sswitch_11
    const v27, 0x7f0a00e5

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 350
    const v27, 0x7f0a01eb

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 352
    const v27, 0x7f0a01d8

    new-instance v28, Lcom/sec/android/app/camera/CameraDialog$1;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraDialog$1;-><init>(Lcom/sec/android/app/camera/CameraDialog;)V

    move/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 361
    :sswitch_12
    const v27, 0x7f0a00f9

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 362
    const v27, 0x7f0a0105

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 363
    const v27, 0x104000a

    new-instance v28, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 367
    :sswitch_13
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v27

    check-cast v27, Lcom/sec/android/app/camera/Camera;

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v27

    if-nez v27, :cond_10

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isKNOXMode()Z

    move-result v27

    if-eqz v27, :cond_11

    .line 368
    :cond_10
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->dismissCameraDialog()V

    .line 369
    const/16 v27, 0x0

    goto/16 :goto_1

    .line 371
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v27

    check-cast v27, Lcom/sec/android/app/camera/Camera;

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraVoiceCommand()I

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_12

    .line 372
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->dismissCameraDialog()V

    .line 373
    const/16 v27, 0x0

    goto/16 :goto_1

    .line 375
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/sec/android/app/camera/util/Util;->isSamsungTalkBackEnabled(Landroid/content/Context;)Z

    move-result v27

    if-eqz v27, :cond_13

    .line 376
    const v27, 0x7f0a0272

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 380
    :goto_8
    const v27, 0x7f0a0168

    new-instance v28, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 381
    const/high16 v27, 0x1040000

    new-instance v28, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 378
    :cond_13
    const v27, 0x7f0a0236

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_8

    .line 385
    :sswitch_14
    const v27, 0x7f0a00fc

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 386
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/sec/android/app/camera/util/Util;->isSamsungTalkBackEnabled(Landroid/content/Context;)Z

    move-result v27

    if-eqz v27, :cond_14

    .line 387
    const v27, 0x7f0a0273

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 391
    :goto_9
    const v27, 0x104000a

    new-instance v28, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 392
    const/high16 v27, 0x1040000

    new-instance v28, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 389
    :cond_14
    const v27, 0x7f0a0237

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_9

    .line 396
    :sswitch_15
    const v27, 0x7f0a01fd

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 397
    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 398
    const v27, 0x7f0a01fc

    new-instance v28, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 399
    const/high16 v27, 0x1040000

    new-instance v28, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 403
    :sswitch_16
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->isBurstShotsStorageDialogEnabled()Z

    move-result v27

    if-nez v27, :cond_15

    .line 404
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->dismissCameraDialog()V

    .line 405
    const/16 v27, 0x0

    goto/16 :goto_1

    .line 407
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v27

    check-cast v27, Lcom/sec/android/app/camera/Camera;

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v27

    if-nez v27, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v27

    check-cast v27, Lcom/sec/android/app/camera/Camera;

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/app/camera/Camera;->isVideoCaptureIntent()Z

    move-result v27

    if-eqz v27, :cond_17

    .line 408
    :cond_16
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->dismissCameraDialog()V

    .line 409
    const/16 v27, 0x0

    goto/16 :goto_1

    .line 411
    :cond_17
    const v27, 0x7f040004

    const/16 v28, 0x0

    move/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v10, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 412
    .local v12, "layout":Landroid/view/View;
    const v27, 0x7f100011

    move/from16 v0, v27

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    .line 413
    .local v25, "textView":Landroid/widget/TextView;
    const v27, 0x7f100012

    move/from16 v0, v27

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    .line 415
    .local v6, "checkBox":Landroid/widget/CheckBox;
    invoke-virtual {v5, v12}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 416
    const v27, 0x7f0a00f3

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 417
    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 418
    const v27, 0x7f0a0136

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 419
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v6, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 421
    new-instance v27, Lcom/sec/android/app/camera/CameraDialog$2;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraDialog$2;-><init>(Lcom/sec/android/app/camera/CameraDialog;)V

    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 428
    const v27, 0x104000a

    new-instance v28, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 429
    const/high16 v27, 0x1040000

    new-instance v28, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 433
    .end local v6    # "checkBox":Landroid/widget/CheckBox;
    .end local v12    # "layout":Landroid/view/View;
    .end local v25    # "textView":Landroid/widget/TextView;
    :sswitch_17
    const v27, 0x7f04000c

    const/16 v28, 0x0

    move/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v10, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 434
    .restart local v12    # "layout":Landroid/view/View;
    const v27, 0x7f100011

    move/from16 v0, v27

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    .line 435
    .restart local v25    # "textView":Landroid/widget/TextView;
    const/16 v17, 0x0

    .line 436
    .local v17, "msgText":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v27

    check-cast v27, Lcom/sec/android/app/camera/Camera;

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/app/camera/Camera;->isGPSProviderEnabled()Z

    move-result v27

    if-eqz v27, :cond_1a

    .line 437
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/sec/android/app/camera/util/Util;->isWifiOnly(Landroid/content/Context;)Z

    move-result v27

    if-eqz v27, :cond_19

    .line 438
    const v27, 0x7f0a01b7

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x7f0a017b

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 449
    :goto_a
    sget-boolean v27, Lcom/sec/android/app/camera/feature/Feature;->REPLACE_WIFI_STRING:Z

    if-eqz v27, :cond_18

    .line 450
    const-string v27, "Wi-Fi"

    const-string v28, "WLAN"

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v17

    .line 452
    :cond_18
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const v28, 0x7f0a01ba

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "\n\n"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 454
    const v27, 0x7f100031

    move/from16 v0, v27

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 455
    .local v13, "learnMore":Landroid/widget/TextView;
    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 456
    new-instance v27, Lcom/sec/android/app/camera/CameraDialog$3;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraDialog$3;-><init>(Lcom/sec/android/app/camera/CameraDialog;)V

    move-object/from16 v0, v27

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 462
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "<u>"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const v28, 0x7f0a0179

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "</u>"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 464
    invoke-virtual {v5, v12}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 465
    const v27, 0x7f0a00d5

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 466
    const v27, 0x7f0a0168

    new-instance v28, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 467
    const/high16 v27, 0x1040000

    new-instance v28, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 440
    .end local v13    # "learnMore":Landroid/widget/TextView;
    :cond_19
    const v27, 0x7f0a01b7

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x7f0a017a

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_a

    .line 443
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/sec/android/app/camera/util/Util;->isWifiOnly(Landroid/content/Context;)Z

    move-result v27

    if-eqz v27, :cond_1b

    .line 444
    const v27, 0x7f0a01b9

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x7f0a017b

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_a

    .line 446
    :cond_1b
    const v27, 0x7f0a01b9

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x7f0a017a

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_a

    .line 471
    .end local v12    # "layout":Landroid/view/View;
    .end local v17    # "msgText":Ljava/lang/String;
    .end local v25    # "textView":Landroid/widget/TextView;
    :sswitch_18
    const v27, 0x7f04000c

    const/16 v28, 0x0

    move/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v10, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 472
    .restart local v12    # "layout":Landroid/view/View;
    const v27, 0x7f100011

    move/from16 v0, v27

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    .line 473
    .restart local v25    # "textView":Landroid/widget/TextView;
    const/16 v17, 0x0

    .line 474
    .restart local v17    # "msgText":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v27

    check-cast v27, Lcom/sec/android/app/camera/Camera;

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/app/camera/Camera;->isGPSProviderEnabled()Z

    move-result v27

    if-eqz v27, :cond_1e

    .line 475
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/sec/android/app/camera/util/Util;->isWifiOnly(Landroid/content/Context;)Z

    move-result v27

    if-eqz v27, :cond_1d

    .line 476
    const v27, 0x7f0a01b7

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x7f0a017b

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 487
    :goto_b
    sget-boolean v27, Lcom/sec/android/app/camera/feature/Feature;->REPLACE_WIFI_STRING:Z

    if-eqz v27, :cond_1c

    .line 488
    const-string v27, "Wi-Fi"

    const-string v28, "WLAN"

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v17

    .line 490
    :cond_1c
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const v28, 0x7f0a01b8

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "\n\n"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 492
    const v27, 0x7f100031

    move/from16 v0, v27

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 493
    .restart local v13    # "learnMore":Landroid/widget/TextView;
    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 494
    new-instance v27, Lcom/sec/android/app/camera/CameraDialog$4;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraDialog$4;-><init>(Lcom/sec/android/app/camera/CameraDialog;)V

    move-object/from16 v0, v27

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 500
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "<u>"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const v28, 0x7f0a0179

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "</u>"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 502
    invoke-virtual {v5, v12}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 503
    const v27, 0x7f0a00d5

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 504
    const v27, 0x7f0a0168

    new-instance v28, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 505
    const/high16 v27, 0x1040000

    new-instance v28, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 478
    .end local v13    # "learnMore":Landroid/widget/TextView;
    :cond_1d
    const v27, 0x7f0a01b7

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x7f0a017a

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_b

    .line 481
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/sec/android/app/camera/util/Util;->isWifiOnly(Landroid/content/Context;)Z

    move-result v27

    if-eqz v27, :cond_1f

    .line 482
    const v27, 0x7f0a01b9

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x7f0a017b

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_b

    .line 484
    :cond_1f
    const v27, 0x7f0a01b9

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x7f0a017a

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_b

    .line 509
    .end local v12    # "layout":Landroid/view/View;
    .end local v17    # "msgText":Ljava/lang/String;
    .end local v25    # "textView":Landroid/widget/TextView;
    :sswitch_19
    const v27, 0x7f04000c

    const/16 v28, 0x0

    move/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v10, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 510
    .restart local v12    # "layout":Landroid/view/View;
    const v27, 0x7f100011

    move/from16 v0, v27

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    .line 511
    .restart local v25    # "textView":Landroid/widget/TextView;
    const/16 v17, 0x0

    .line 512
    .restart local v17    # "msgText":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v27

    check-cast v27, Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->isProviderEnabled()Z

    move-result v27

    if-eqz v27, :cond_22

    .line 513
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/sec/android/app/camera/util/Util;->isWifiOnly(Landroid/content/Context;)Z

    move-result v27

    if-eqz v27, :cond_21

    .line 514
    const v27, 0x7f0a01b7

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x7f0a017b

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 525
    :goto_c
    sget-boolean v27, Lcom/sec/android/app/camera/feature/Feature;->REPLACE_WIFI_STRING:Z

    if-eqz v27, :cond_20

    .line 526
    const-string v27, "Wi-Fi"

    const-string v28, "WLAN"

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v17

    .line 528
    :cond_20
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const v28, 0x7f0a01b8

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "\n\n"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 530
    const v27, 0x7f100031

    move/from16 v0, v27

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 531
    .restart local v13    # "learnMore":Landroid/widget/TextView;
    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 532
    new-instance v27, Lcom/sec/android/app/camera/CameraDialog$5;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraDialog$5;-><init>(Lcom/sec/android/app/camera/CameraDialog;)V

    move-object/from16 v0, v27

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 538
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "<u>"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const v28, 0x7f0a0179

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "</u>"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 540
    invoke-virtual {v5, v12}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 541
    const v27, 0x7f0a00d5

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 542
    const v27, 0x7f0a0168

    new-instance v28, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 543
    const/high16 v27, 0x1040000

    new-instance v28, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 516
    .end local v13    # "learnMore":Landroid/widget/TextView;
    :cond_21
    const v27, 0x7f0a01b7

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x7f0a017a

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_c

    .line 519
    :cond_22
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/sec/android/app/camera/util/Util;->isWifiOnly(Landroid/content/Context;)Z

    move-result v27

    if-eqz v27, :cond_23

    .line 520
    const v27, 0x7f0a01b9

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x7f0a017b

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_c

    .line 522
    :cond_23
    const v27, 0x7f0a01b9

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x7f0a017a

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_c

    .line 547
    .end local v12    # "layout":Landroid/view/View;
    .end local v17    # "msgText":Ljava/lang/String;
    .end local v25    # "textView":Landroid/widget/TextView;
    :sswitch_1a
    const v27, 0x7f04000c

    const/16 v28, 0x0

    move/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v10, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 548
    .restart local v12    # "layout":Landroid/view/View;
    const v27, 0x7f100011

    move/from16 v0, v27

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    .line 549
    .restart local v25    # "textView":Landroid/widget/TextView;
    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 550
    const v27, 0x7f100031

    move/from16 v0, v27

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 551
    .restart local v13    # "learnMore":Landroid/widget/TextView;
    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 552
    new-instance v27, Lcom/sec/android/app/camera/CameraDialog$6;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraDialog$6;-><init>(Lcom/sec/android/app/camera/CameraDialog;)V

    move-object/from16 v0, v27

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 558
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "<u>"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const v28, 0x7f0a0179

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "</u>"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 560
    invoke-virtual {v5, v12}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 561
    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 562
    const v27, 0x104000a

    new-instance v28, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 563
    const/high16 v27, 0x1040000

    new-instance v28, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 567
    .end local v12    # "layout":Landroid/view/View;
    .end local v13    # "learnMore":Landroid/widget/TextView;
    .end local v25    # "textView":Landroid/widget/TextView;
    :sswitch_1b
    const v27, 0x7f0a00e5

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 568
    const v27, 0x7f0a01ed

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 569
    const v27, 0x7f0a01ec

    new-instance v28, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 570
    const v27, 0x7f0a0160

    new-instance v28, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 574
    :sswitch_1c
    const v27, 0x7f0a0266

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 575
    const v27, 0x7f0a020e

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 576
    const v27, 0x104000a

    new-instance v28, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 577
    const/high16 v27, 0x1040000

    new-instance v28, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 581
    :sswitch_1d
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/CameraDialog;->mSeparatedShootingModeMessage:Ljava/lang/String;

    .line 582
    const v27, 0x7f0a0266

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 583
    const v27, 0x7f0a0211

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aput-object v26, v28, v29

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 584
    const v27, 0x104000a

    new-instance v28, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 585
    const/high16 v27, 0x1040000

    new-instance v28, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 589
    :sswitch_1e
    const v27, 0x7f0a0266

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 590
    const v27, 0x7f0a020f

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 591
    const v27, 0x104000a

    new-instance v28, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 592
    const/high16 v27, 0x1040000

    new-instance v28, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 596
    :sswitch_1f
    const v27, 0x7f0a0266

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 597
    const v27, 0x7f0a0210

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 598
    const v27, 0x104000a

    new-instance v28, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 599
    const/high16 v27, 0x1040000

    new-instance v28, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 603
    :sswitch_20
    const v27, 0x7f0a0124

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 604
    const v27, 0x7f0a012d

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v27

    const v28, 0x7f0a0157

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 605
    new-instance v27, Lcom/sec/android/app/camera/CameraDialog$OnKeyListener;

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnKeyListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 609
    :sswitch_21
    const v27, 0x7f0a013d

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 610
    const v27, 0x7f0a013c

    const/16 v28, 0x0

    move/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 611
    const v27, 0x7f0a020b

    const/16 v28, 0x0

    move/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 615
    :sswitch_22
    const v27, 0x7f0a013f

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 616
    const v27, 0x7f0a013e

    const/16 v28, 0x0

    move/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 617
    const v27, 0x7f0a013a

    const/16 v28, 0x0

    move/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 621
    :sswitch_23
    const v27, 0x7f0a013b

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 622
    const v27, 0x7f0a0129

    const/16 v28, 0x0

    move/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 623
    const v27, 0x7f0a013c

    const/16 v28, 0x0

    move/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 627
    :sswitch_24
    const v27, 0x7f0a0111

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 628
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 629
    const v27, 0x104000a

    new-instance v28, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 633
    :sswitch_25
    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 634
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 635
    const v27, 0x104000a

    new-instance v28, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 639
    :sswitch_26
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 640
    const v27, 0x104000a

    new-instance v28, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 644
    :sswitch_27
    const v27, 0x7f0a0234

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 645
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const v28, 0x7f0a0233

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "\n\n"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const v28, 0x7f0a0232

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 646
    const v27, 0x7f0a0230

    new-instance v28, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 647
    const v27, 0x7f0a0231

    new-instance v28, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 652
    :sswitch_28
    const v27, 0x7f040010

    const/16 v28, 0x0

    move/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v10, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 653
    .restart local v12    # "layout":Landroid/view/View;
    const v27, 0x7f100011

    move/from16 v0, v27

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    .line 655
    .restart local v25    # "textView":Landroid/widget/TextView;
    const v27, 0x7f0a0112

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 656
    .local v23, "spannableText":Ljava/lang/String;
    new-instance v24, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 657
    .local v24, "stringBuilder":Landroid/text/SpannableStringBuilder;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v27

    sget-object v28, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 658
    .local v9, "index":I
    const/16 v27, -0x1

    move/from16 v0, v27

    if-eq v9, v0, :cond_24

    .line 659
    new-instance v27, Landroid/text/style/StyleSpan;

    const/16 v28, 0x1

    invoke-direct/range {v27 .. v28}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v28

    add-int v28, v28, v9

    const/16 v29, 0x21

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v9, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 661
    :cond_24
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 663
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 664
    .local v21, "permissionStringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 665
    .local v20, "permissionDrawableList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/drawable/Drawable;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/sec/android/app/camera/util/PermissionUtils;->getRequiredPermissions(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v29, v0

    const/16 v27, 0x0

    :goto_d
    move/from16 v0, v27

    move/from16 v1, v29

    if-ge v0, v1, :cond_26

    aget-object v19, v28, v27

    .line 666
    .local v19, "permission":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v30

    const/16 v31, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_25

    .line 667
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/PermissionUtils;->getPermissionGroupString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 668
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/PermissionUtils;->getPermissionGroupDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v30

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 665
    :cond_25
    add-int/lit8 v27, v27, 0x1

    goto :goto_d

    .line 671
    .end local v19    # "permission":Ljava/lang/String;
    :cond_26
    new-instance v4, Lcom/sec/android/app/camera/RequestPermissionActivity$PermissionListAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v27

    const v28, 0x7f040011

    move-object/from16 v0, v27

    move/from16 v1, v28

    move-object/from16 v2, v21

    move-object/from16 v3, v20

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/sec/android/app/camera/RequestPermissionActivity$PermissionListAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 672
    .local v4, "adapter":Landroid/widget/ListAdapter;
    const v27, 0x7f10003b

    move/from16 v0, v27

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ListView;

    .line 673
    .local v14, "listView":Landroid/widget/ListView;
    invoke-virtual {v14, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 675
    const/4 v11, 0x0

    .line 676
    .local v11, "itemHeight":I
    const/16 v27, 0x0

    const/16 v28, 0x0

    move/from16 v0, v27

    move-object/from16 v1, v28

    invoke-interface {v4, v0, v1, v14}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    .line 677
    .local v15, "mView":Landroid/view/View;
    const/16 v27, 0x0

    const/16 v28, 0x0

    .line 678
    invoke-static/range {v27 .. v28}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v27

    const/16 v28, 0x0

    const/16 v29, 0x0

    .line 679
    invoke-static/range {v28 .. v29}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v28

    .line 677
    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v15, v0, v1}, Landroid/view/View;->measure(II)V

    .line 680
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v27

    add-int v11, v11, v27

    .line 682
    invoke-virtual {v14}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    .line 683
    .local v18, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v27

    mul-int v27, v27, v11

    .line 684
    invoke-virtual {v14}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v28

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v29

    add-int/lit8 v29, v29, -0x1

    mul-int v28, v28, v29

    add-int v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, v18

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 685
    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 686
    invoke-virtual {v14}, Landroid/widget/ListView;->requestLayout()V

    .line 688
    invoke-virtual {v5, v12}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 689
    const v27, 0x7f0a021d

    new-instance v28, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 690
    const/high16 v27, 0x1040000

    new-instance v28, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 691
    new-instance v27, Lcom/sec/android/app/camera/CameraDialog$OnKeyListener;

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnKeyListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 695
    .end local v4    # "adapter":Landroid/widget/ListAdapter;
    .end local v9    # "index":I
    .end local v11    # "itemHeight":I
    .end local v12    # "layout":Landroid/view/View;
    .end local v14    # "listView":Landroid/widget/ListView;
    .end local v15    # "mView":Landroid/view/View;
    .end local v18    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local v20    # "permissionDrawableList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/drawable/Drawable;>;"
    .end local v21    # "permissionStringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v23    # "spannableText":Ljava/lang/String;
    .end local v24    # "stringBuilder":Landroid/text/SpannableStringBuilder;
    .end local v25    # "textView":Landroid/widget/TextView;
    :sswitch_29
    const v27, 0x7f04000c

    const/16 v28, 0x0

    move/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v10, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 696
    .restart local v12    # "layout":Landroid/view/View;
    const v27, 0x7f100011

    move/from16 v0, v27

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    .line 698
    .restart local v25    # "textView":Landroid/widget/TextView;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const v28, 0x7f0a01b8

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "\n\n"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 700
    const v27, 0x7f100031

    move/from16 v0, v27

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 701
    .restart local v13    # "learnMore":Landroid/widget/TextView;
    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 702
    new-instance v27, Lcom/sec/android/app/camera/CameraDialog$7;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraDialog$7;-><init>(Lcom/sec/android/app/camera/CameraDialog;)V

    move-object/from16 v0, v27

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 708
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "<u>"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const v28, 0x7f0a0179

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "</u>"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 710
    invoke-virtual {v5, v12}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 711
    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 712
    const v27, 0x7f0a0168

    new-instance v28, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 713
    const/high16 v27, 0x1040000

    new-instance v28, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 717
    .end local v12    # "layout":Landroid/view/View;
    .end local v13    # "learnMore":Landroid/widget/TextView;
    .end local v25    # "textView":Landroid/widget/TextView;
    :sswitch_2a
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->isAllowAppPermissionDialogEnabled()Z

    move-result v27

    if-nez v27, :cond_27

    .line 718
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->dismissCameraDialog()V

    .line 719
    const/16 v27, 0x0

    goto/16 :goto_1

    .line 721
    :cond_27
    const v27, 0x7f040004

    const/16 v28, 0x0

    move/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v10, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 722
    .restart local v12    # "layout":Landroid/view/View;
    const v27, 0x7f100011

    move/from16 v0, v27

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    .line 723
    .restart local v25    # "textView":Landroid/widget/TextView;
    const v27, 0x7f100012

    move/from16 v0, v27

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    .line 724
    .restart local v6    # "checkBox":Landroid/widget/CheckBox;
    invoke-virtual {v5, v12}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 725
    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 726
    const v27, 0x7f0a01e2

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 727
    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-virtual {v6, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 728
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v27

    const-string v28, "pref_global_check_network_permission_dialog_enabled"

    const/16 v29, 0x0

    invoke-static/range {v27 .. v29}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 729
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f0a01df

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    const v31, 0x7f0a0126

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v31

    aput-object v31, v29, v30

    invoke-virtual/range {v27 .. v29}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    .line 730
    .local v22, "permissiondecribe":Ljava/lang/String;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "\n\n"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "- "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const v28, 0x7f0a01e0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 731
    new-instance v27, Lcom/sec/android/app/camera/CameraDialog$8;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraDialog$8;-><init>(Lcom/sec/android/app/camera/CameraDialog;)V

    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 737
    const v27, 0x104000a

    new-instance v28, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 738
    const/high16 v27, 0x1040000

    new-instance v28, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 183
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
        0xc9 -> :sswitch_2
        0x190 -> :sswitch_8
        0x191 -> :sswitch_3
        0x192 -> :sswitch_4
        0x193 -> :sswitch_5
        0x194 -> :sswitch_6
        0x195 -> :sswitch_7
        0x197 -> :sswitch_15
        0x199 -> :sswitch_9
        0x19c -> :sswitch_1a
        0x19d -> :sswitch_17
        0x19e -> :sswitch_18
        0x19f -> :sswitch_19
        0x1a0 -> :sswitch_a
        0x1a1 -> :sswitch_c
        0x1a2 -> :sswitch_b
        0x1a3 -> :sswitch_d
        0x1a4 -> :sswitch_e
        0x1a5 -> :sswitch_f
        0x1a6 -> :sswitch_10
        0x1ae -> :sswitch_12
        0x1d1 -> :sswitch_13
        0x1d2 -> :sswitch_14
        0x1d6 -> :sswitch_16
        0x1d7 -> :sswitch_1b
        0x1d8 -> :sswitch_1c
        0x1d9 -> :sswitch_1d
        0x1da -> :sswitch_1e
        0x1db -> :sswitch_1f
        0x1dc -> :sswitch_20
        0x1dd -> :sswitch_21
        0x1de -> :sswitch_22
        0x1df -> :sswitch_23
        0x1e0 -> :sswitch_28
        0x1e1 -> :sswitch_24
        0x1e2 -> :sswitch_11
        0x1e3 -> :sswitch_25
        0x1e4 -> :sswitch_26
        0x1e5 -> :sswitch_27
        0x1e6 -> :sswitch_29
        0x1e7 -> :sswitch_2a
        0x1e8 -> :sswitch_28
    .end sparse-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 750
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 751
    .local v0, "id":I
    sparse-switch v0, :sswitch_data_0

    .line 768
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/DialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 759
    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 760
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 761
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    goto :goto_0

    .line 751
    :sswitch_data_0
    .sparse-switch
        0x190 -> :sswitch_0
        0x1a4 -> :sswitch_0
        0x1a6 -> :sswitch_0
        0x1e0 -> :sswitch_0
        0x1e2 -> :sswitch_0
        0x1e4 -> :sswitch_0
        0x1e8 -> :sswitch_0
    .end sparse-switch
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v4, 0x0

    .line 790
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 791
    .local v1, "id":I
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 792
    .local v0, "cameraContext":Landroid/app/Activity;
    sparse-switch v1, :sswitch_data_0

    .line 831
    :cond_0
    :goto_0
    return-void

    .line 799
    :sswitch_0
    if-eqz v0, :cond_0

    move-object v2, v0

    .line 800
    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->isInLockTaskMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 801
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Landroid/os/Process;->killProcess(I)V

    goto :goto_0

    .line 803
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 808
    :sswitch_1
    sput-boolean v4, Lcom/sec/android/app/camera/Camera;->mIsRecordKey:Z

    .line 809
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->MICRO_SD_SLOT:Z

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    move-object v2, v0

    .line 810
    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->isInLockTaskMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 811
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Landroid/os/Process;->killProcess(I)V

    goto :goto_0

    .line 813
    :cond_2
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 819
    :sswitch_2
    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/CameraDialog;->setLocationTagDialogEnabled(Z)V

    goto :goto_0

    .line 822
    :sswitch_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 823
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/sec/android/app/camera/menu/OverlayHelp;->isInteractionGuideEnabled(Landroid/content/Context;Lcom/sec/android/app/camera/interfaces/CameraSettings;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 824
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->showLocationTagDialog()V

    goto :goto_0

    .line 792
    nop

    :sswitch_data_0
    .sparse-switch
        0x190 -> :sswitch_0
        0x191 -> :sswitch_1
        0x192 -> :sswitch_0
        0x193 -> :sswitch_0
        0x1a2 -> :sswitch_2
        0x1a3 -> :sswitch_2
        0x1a4 -> :sswitch_0
        0x1a6 -> :sswitch_0
        0x1d7 -> :sswitch_3
        0x1dc -> :sswitch_0
    .end sparse-switch
.end method
