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

.field private static final KEY_DIALOG_CHECK_BOX_VALUE_FOR_LOCATION_TAG:Ljava/lang/String; = "pref_global_dialog_check_box_value_for_location_tag"

.field private static final KEY_DIALOG_CHECK_BOX_VALUE_FOR_WATERMARK:Ljava/lang/String; = "pref_global_dialog_check_box_value_for_watermark"

.field private static final KEY_ID:Ljava/lang/String; = "id"

.field private static final KEY_LOCATION_TAG_FIRST_LAUNCH_CAMERA:Ljava/lang/String; = "location_tag_first_launch_camera_key"

.field private static final KEY_LOCATION_TAG_POPUP_DISPLAY_COUNT:Ljava/lang/String; = "location_tag_popup_display_count_key"

.field private static final KEY_MESSAGE:Ljava/lang/String; = "msg"

.field private static final KEY_QUICK_LAUNCH_DIALOG_ENABLED:Ljava/lang/String; = "pref_global_quick_launch_dialog_enabled"

.field private static final KEY_TITLE:Ljava/lang/String; = "title"

.field private static final NUM_LOCATION_TAG_POPUP_DISPLAY:I = 0x2

.field private static final TAG:Ljava/lang/String; = "CameraDialog"

.field private static mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/camera/interfaces/CameraContext$CameraDialogListener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mSeparatedShootingModeMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/CameraDialog;->mListeners:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/CameraDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/CameraDialog;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraDialog;->dismissCameraDialog()V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/android/app/camera/CameraDialog;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/CameraDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CameraDialog;->setChangeStorageSettingDialogEnabled(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/android/app/camera/CameraDialog;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/CameraDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CameraDialog;->setQuickLaunchDialogEnabled(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/sec/android/app/camera/CameraDialog;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/CameraDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CameraDialog;->setLocationTagDialogEnabled(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/sec/android/app/camera/CameraDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/CameraDialog;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraDialog;->getDialogCheckBoxValueForLocationTag()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/sec/android/app/camera/CameraDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/CameraDialog;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraDialog;->mSeparatedShootingModeMessage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/CameraDialog;
    .param p1, "x1"    # Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CameraDialog;->showCameraDialog(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/CameraDialog;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/CameraDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CameraDialog;->setDialogCheckBoxValueForLocationTag(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/CameraDialog;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/CameraDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CameraDialog;->setDialogCheckBoxValueForWatermark(Z)V

    return-void
.end method

.method static synthetic access$600()Ljava/util/List;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/sec/android/app/camera/CameraDialog;->mListeners:Ljava/util/List;

    return-object v0
.end method

.method private dismissCameraDialog()V
    .locals 1

    .prologue
    .line 1035
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraDialog;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1036
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraDialog;->dismissAllowingStateLoss()V

    .line 1038
    :cond_0
    return-void
.end method

.method private getDialogCheckBoxValueForLocationTag()Z
    .locals 3

    .prologue
    .line 1041
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_dialog_check_box_value_for_location_tag"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private getDialogCheckBoxValueForWatermark()Z
    .locals 3

    .prologue
    .line 1052
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_dialog_check_box_value_for_watermark"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isBurstShotsStorageDialogEnabled()Z
    .locals 3

    .prologue
    .line 1063
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
    const/4 v1, 0x1

    .line 1074
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "pref_global_change_storage_setting_dialog_enabled"

    invoke-static {v0, v2, v1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1075
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLDUModel()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->isShopDemo(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static isLocationTagDialogEnabled(Landroid/content/Context;Z)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isFirstLaunchCamera"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 163
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLDUModel()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p0}, Lcom/sec/android/app/camera/util/Util;->isShopDemo(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-boolean v4, Lcom/sec/android/app/camera/feature/Feature;->UNPACK_BINARY:Z

    if-eqz v4, :cond_1

    :cond_0
    move v2, v3

    .line 176
    :goto_0
    return v2

    .line 167
    :cond_1
    if-eqz p1, :cond_2

    .line 168
    const-string v3, "location_tag_first_launch_camera_key"

    invoke-static {p0, v3, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    goto :goto_0

    .line 170
    :cond_2
    const-string v4, "location_tag_popup_display_count_key"

    invoke-static {p0, v4, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 171
    .local v0, "locationTagDisplayCount":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "locationTagDisplayCount":I
    .local v1, "locationTagDisplayCount":I
    const/4 v4, 0x2

    if-ge v0, v4, :cond_3

    .line 172
    const-string v3, "location_tag_popup_display_count_key"

    invoke-static {p0, v3, v1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    move v2, v3

    .line 176
    goto :goto_0
.end method

.method protected static isQuickLaunchDialogEnabled(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 180
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLDUModel()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/sec/android/app/camera/util/Util;->isShopDemo(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->UNPACK_BINARY:Z

    if-eqz v0, :cond_1

    .line 181
    :cond_0
    const/4 v0, 0x0

    .line 184
    :goto_0
    return v0

    :cond_1
    const-string v0, "pref_global_quick_launch_dialog_enabled"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public static newInstance(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;)Lcom/sec/android/app/camera/CameraDialog;
    .locals 4
    .param p0, "id"    # Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 111
    if-nez p0, :cond_0

    .line 112
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 114
    :cond_0
    new-instance v1, Lcom/sec/android/app/camera/CameraDialog;

    invoke-direct {v1}, Lcom/sec/android/app/camera/CameraDialog;-><init>()V

    .line 115
    .local v1, "fragment":Lcom/sec/android/app/camera/CameraDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 116
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "id"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->ordinal()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 117
    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/CameraDialog;->setArguments(Landroid/os/Bundle;)V

    .line 118
    return-object v1
.end method

.method public static newInstance(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/camera/CameraDialog;
    .locals 4
    .param p0, "id"    # Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 131
    if-nez p0, :cond_0

    .line 132
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 134
    :cond_0
    new-instance v1, Lcom/sec/android/app/camera/CameraDialog;

    invoke-direct {v1}, Lcom/sec/android/app/camera/CameraDialog;-><init>()V

    .line 135
    .local v1, "fragment":Lcom/sec/android/app/camera/CameraDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 136
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "id"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->ordinal()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 137
    const-string v2, "title"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string v2, "msg"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/CameraDialog;->setArguments(Landroid/os/Bundle;)V

    .line 140
    return-object v1
.end method

.method public static registerCameraDialogListener(Lcom/sec/android/app/camera/interfaces/CameraContext$CameraDialogListener;)V
    .locals 2
    .param p0, "listener"    # Lcom/sec/android/app/camera/interfaces/CameraContext$CameraDialogListener;

    .prologue
    .line 144
    sget-object v1, Lcom/sec/android/app/camera/CameraDialog;->mListeners:Ljava/util/List;

    monitor-enter v1

    .line 145
    :try_start_0
    sget-object v0, Lcom/sec/android/app/camera/CameraDialog;->mListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    monitor-exit v1

    .line 147
    return-void

    .line 146
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static resetChangeStorageSettingDialogEnabled(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 153
    const-string v0, "pref_global_change_storage_setting_dialog_enabled"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 154
    return-void
.end method

.method private setBurstShotsStorageDialogEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 1067
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_burst_shot_storage_text_dialog_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 1068
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

    .line 1069
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_burst_shot_storage_text_dialog_enabled"

    invoke-static {v0, v1, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1071
    :cond_0
    return-void
.end method

.method private setChangeStorageSettingDialogEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 1082
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_change_storage_setting_dialog_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 1083
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

    .line 1084
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_change_storage_setting_dialog_enabled"

    invoke-static {v0, v1, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1086
    :cond_0
    return-void
.end method

.method private setDialogCheckBoxValueForLocationTag(Z)V
    .locals 3
    .param p1, "checked"    # Z

    .prologue
    .line 1045
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_dialog_check_box_value_for_location_tag"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 1046
    const-string v0, "CameraDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDialogCheckBoxValueForLocationTag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_dialog_check_box_value_for_location_tag"

    invoke-static {v0, v1, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1049
    :cond_0
    return-void
.end method

.method private setDialogCheckBoxValueForWatermark(Z)V
    .locals 3
    .param p1, "checked"    # Z

    .prologue
    .line 1056
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_dialog_check_box_value_for_watermark"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 1057
    const-string v0, "CameraDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDialogCheckBoxValueForWatermark "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_dialog_check_box_value_for_watermark"

    invoke-static {v0, v1, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1060
    :cond_0
    return-void
.end method

.method private setLocationTagDialogEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 1089
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "location_tag_first_launch_camera_key"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 1090
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

    .line 1091
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "location_tag_first_launch_camera_key"

    invoke-static {v0, v1, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1093
    :cond_0
    return-void
.end method

.method private setQuickLaunchDialogEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 1096
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_quick_launch_dialog_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 1097
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

    .line 1098
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_quick_launch_dialog_enabled"

    invoke-static {v0, v1, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1100
    :cond_0
    return-void
.end method

.method private showCameraDialog(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;)V
    .locals 5
    .param p1, "id"    # Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    .prologue
    .line 1108
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraDialog;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 1109
    .local v2, "ft":Landroid/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraDialog;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->ordinal()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Landroid/app/DialogFragment;

    .line 1110
    .local v1, "fragment":Landroid/app/DialogFragment;
    if-eqz v1, :cond_0

    .line 1111
    invoke-virtual {v1}, Landroid/app/DialogFragment;->dismiss()V

    .line 1113
    :cond_0
    invoke-static {p1}, Lcom/sec/android/app/camera/CameraDialog;->newInstance(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;)Lcom/sec/android/app/camera/CameraDialog;

    move-result-object v0

    .line 1114
    .local v0, "dialog":Landroid/app/DialogFragment;
    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1115
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1116
    return-void
.end method

.method public static unregisterCameraDialogListener(Lcom/sec/android/app/camera/interfaces/CameraContext$CameraDialogListener;)V
    .locals 2
    .param p0, "listener"    # Lcom/sec/android/app/camera/interfaces/CameraContext$CameraDialogListener;

    .prologue
    .line 157
    sget-object v1, Lcom/sec/android/app/camera/CameraDialog;->mListeners:Ljava/util/List;

    monitor-enter v1

    .line 158
    :try_start_0
    sget-object v0, Lcom/sec/android/app/camera/CameraDialog;->mListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 159
    monitor-exit v1

    .line 160
    return-void

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 192
    invoke-static {}, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->values()[Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "id"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    aget-object v0, v2, v3

    .line 193
    .local v0, "id":Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;
    sget-object v3, Lcom/sec/android/app/camera/CameraDialog;->mListeners:Ljava/util/List;

    monitor-enter v3

    .line 194
    :try_start_0
    sget-object v2, Lcom/sec/android/app/camera/CameraDialog;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/interfaces/CameraContext$CameraDialogListener;

    .line 195
    .local v1, "listener":Lcom/sec/android/app/camera/interfaces/CameraContext$CameraDialogListener;
    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/CameraContext$CameraDialogListener;->onCancelDialog(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;)V

    goto :goto_0

    .line 197
    .end local v1    # "listener":Lcom/sec/android/app/camera/interfaces/CameraContext$CameraDialogListener;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 198
    sget-object v2, Lcom/sec/android/app/camera/CameraDialog$12;->$SwitchMap$com$sec$android$app$camera$interfaces$CameraContext$DialogID:[I

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 212
    :goto_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraDialog;->dismissCameraDialog()V

    .line 213
    return-void

    .line 200
    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 203
    :pswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v2

    const/4 v3, -0x1

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    goto :goto_1

    .line 207
    :pswitch_2
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/CameraDialog;->setLocationTagDialogEnabled(Z)V

    goto :goto_1

    .line 198
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 35
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 220
    invoke-static {}, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->values()[Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    move-result-object v29

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v30

    const-string v31, "id"

    invoke-virtual/range {v30 .. v31}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v30

    aget-object v9, v29, v30

    .line 221
    .local v9, "id":Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;
    new-instance v5, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;-><init>(Lcom/sec/android/app/camera/CameraDialog;Landroid/content/Context;)V

    .line 222
    .local v5, "builder":Lcom/sec/android/app/camera/CameraDialog$CustomDialog;
    invoke-virtual {v5, v9}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setDialogId(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;)V

    .line 223
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v11

    .line 224
    .local v11, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v29

    const-string v30, "title"

    invoke-virtual/range {v29 .. v30}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 225
    .local v28, "title":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v29

    const-string v30, "msg"

    invoke-virtual/range {v29 .. v30}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 226
    .local v17, "message":Ljava/lang/String;
    const-string v29, "CameraDialog"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "onCreateDialog id = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " msg = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    sget-object v30, Lcom/sec/android/app/camera/CameraDialog;->mListeners:Ljava/util/List;

    monitor-enter v30

    .line 229
    :try_start_0
    sget-object v29, Lcom/sec/android/app/camera/CameraDialog;->mListeners:Ljava/util/List;

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v29

    :goto_0
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_0

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/sec/android/app/camera/interfaces/CameraContext$CameraDialogListener;

    .line 230
    .local v16, "listener":Lcom/sec/android/app/camera/interfaces/CameraContext$CameraDialogListener;
    move-object/from16 v0, v16

    invoke-interface {v0, v9}, Lcom/sec/android/app/camera/interfaces/CameraContext$CameraDialogListener;->onCreateDialog(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;)V

    goto :goto_0

    .line 232
    .end local v16    # "listener":Lcom/sec/android/app/camera/interfaces/CameraContext$CameraDialogListener;
    :catchall_0
    move-exception v29

    monitor-exit v30
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v29

    :cond_0
    :try_start_1
    monitor-exit v30
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 234
    sget-object v29, Lcom/sec/android/app/camera/CameraDialog$12;->$SwitchMap$com$sec$android$app$camera$interfaces$CameraContext$DialogID:[I

    invoke-virtual {v9}, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->ordinal()I

    move-result v30

    aget v29, v29, v30

    packed-switch v29, :pswitch_data_0

    .line 921
    :goto_1
    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->create()Landroid/app/AlertDialog;

    move-result-object v29

    :goto_2
    return-object v29

    .line 236
    :pswitch_0
    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 237
    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 238
    const v29, 0x104000a

    const/16 v30, 0x0

    move/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 241
    :pswitch_1
    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 242
    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 243
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f0901b5

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    new-instance v30, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 244
    const/high16 v29, 0x1040000

    new-instance v30, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 247
    :pswitch_2
    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 248
    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 249
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f0901b5

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    new-instance v30, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 250
    const/high16 v29, 0x1040000

    new-instance v30, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 253
    :pswitch_3
    const v29, 0x7f090291

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 254
    const v29, 0x7f0901a4

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 256
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v29

    check-cast v29, Lcom/sec/android/app/camera/Camera;

    invoke-virtual/range {v29 .. v29}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStorage()I

    move-result v25

    .line 257
    .local v25, "storageType":I
    invoke-static/range {v25 .. v25}, Lcom/sec/android/app/camera/util/StorageUtils;->getCachedStorageStatus(I)I

    move-result v29

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_1

    .line 258
    invoke-static/range {v25 .. v25}, Lcom/sec/android/app/camera/util/StorageUtils;->getAvailableStorage(I)J

    move-result-wide v30

    const-wide/32 v32, 0x1400000

    cmp-long v29, v30, v32

    if-gez v29, :cond_5

    .line 259
    :cond_1
    if-nez v25, :cond_7

    invoke-static {}, Lcom/sec/android/app/camera/util/StorageUtils;->isExternalSDStorageMounted()Z

    move-result v29

    if-eqz v29, :cond_7

    .line 260
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v29

    check-cast v29, Lcom/sec/android/app/camera/Camera;

    invoke-virtual/range {v29 .. v29}, Lcom/sec/android/app/camera/Camera;->isExternalMemoryAvailable()Z

    move-result v29

    if-eqz v29, :cond_7

    .line 261
    const-string v29, "CameraDialog"

    const-string v30, "change_to_card_memory"

    invoke-static/range {v29 .. v30}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    const-string v8, ""

    .line 264
    .local v8, "description":Ljava/lang/String;
    sget-boolean v29, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LOW_PERFORMANCE_CONTINUOUS:Z

    if-nez v29, :cond_6

    .line 265
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\n- "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const v30, 0x7f0900c3

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 269
    :goto_3
    sget-boolean v29, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SUPPORT_PICTURE_FORMAT:Z

    if-eqz v29, :cond_2

    .line 270
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\n- "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const v30, 0x7f0900e2

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 272
    :cond_2
    sget-boolean v29, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_VIDEO_COLLAGE:Z

    if-nez v29, :cond_3

    sget-boolean v29, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_VIDEO_COLLAGE:Z

    if-eqz v29, :cond_4

    .line 273
    :cond_3
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\n- "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const v30, 0x7f090090

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 276
    :cond_4
    const v29, 0x7f090136

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 277
    const-string v29, ""

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_5

    .line 278
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\n\n"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const v30, 0x7f090137

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 279
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 295
    .end local v8    # "description":Ljava/lang/String;
    :cond_5
    :goto_4
    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 296
    const v29, 0x7f090129

    new-instance v30, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 297
    const v29, 0x7f0901e1

    new-instance v30, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 298
    new-instance v29, Lcom/sec/android/app/camera/CameraDialog$OnKeyListener;

    const/16 v30, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnKeyListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 267
    .restart local v8    # "description":Ljava/lang/String;
    :cond_6
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\n- "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const v30, 0x7f090093

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3

    .line 281
    .end local v8    # "description":Ljava/lang/String;
    :cond_7
    const/16 v29, 0x1

    move/from16 v0, v25

    move/from16 v1, v29

    if-ne v0, v1, :cond_8

    const/16 v29, 0x0

    .line 282
    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/camera/util/StorageUtils;->getCachedStorageStatus(I)I

    move-result v29

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_8

    .line 283
    const-string v29, "CameraDialog"

    const-string v30, "change_to_phone_memory"

    invoke-static/range {v29 .. v30}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    const v29, 0x7f090138

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_4

    .line 286
    :cond_8
    const-string v29, "CameraDialog"

    const-string v30, "not enough space"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    const v29, 0x7f09015d

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 288
    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 289
    const v29, 0x7f0901de

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 290
    const v29, 0x7f0901e1

    new-instance v30, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 291
    new-instance v29, Lcom/sec/android/app/camera/CameraDialog$OnKeyListener;

    const/16 v30, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnKeyListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 301
    .end local v25    # "storageType":I
    :pswitch_4
    const v29, 0x7f09012c

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 302
    const v29, 0x7f09012d

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 303
    const v29, 0x7f090156

    const/16 v30, 0x0

    move/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 304
    new-instance v29, Lcom/sec/android/app/camera/CameraDialog$OnKeyListener;

    const/16 v30, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnKeyListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 307
    :pswitch_5
    const v29, 0x7f09012b

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 308
    const v29, 0x7f09012d

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 309
    const v29, 0x7f090156

    const/16 v30, 0x0

    move/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 310
    new-instance v29, Lcom/sec/android/app/camera/CameraDialog$OnKeyListener;

    const/16 v30, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnKeyListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 313
    :pswitch_6
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->isChangeStorageSettingDialogEnabled()Z

    move-result v29

    if-nez v29, :cond_9

    .line 314
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->dismissCameraDialog()V

    .line 315
    const/16 v29, 0x0

    goto/16 :goto_2

    .line 317
    :cond_9
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x7f090239

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\n\n"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x7f09023a

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 318
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v29

    check-cast v29, Lcom/sec/android/app/camera/Camera;

    invoke-virtual/range {v29 .. v29}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isEasyCamera()Z

    move-result v29

    if-nez v29, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v29

    check-cast v29, Lcom/sec/android/app/camera/Camera;

    invoke-virtual/range {v29 .. v29}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v29

    if-nez v29, :cond_a

    .line 319
    sget-boolean v29, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LOW_PERFORMANCE_CONTINUOUS:Z

    if-nez v29, :cond_b

    .line 320
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\n\n"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x7f090237

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 325
    :cond_a
    :goto_5
    const v29, 0x7f09023b

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v29

    const/16 v30, 0x1

    invoke-virtual/range {v29 .. v30}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 326
    const v29, 0x104000a

    new-instance v30, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 327
    const/high16 v29, 0x1040000

    new-instance v30, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 322
    :cond_b
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\n\n"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x7f090238

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    goto :goto_5

    .line 330
    :pswitch_7
    const-string v29, "CameraDialog"

    const-string v30, "FLIP_OPEN_DLG"

    invoke-static/range {v29 .. v30}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v29

    check-cast v29, Lcom/sec/android/app/camera/Camera;

    invoke-virtual/range {v29 .. v29}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v29

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_d

    .line 332
    const v29, 0x7f090291

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 333
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v29

    check-cast v29, Lcom/sec/android/app/camera/Camera;

    invoke-virtual/range {v29 .. v29}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecording()Z

    move-result v29

    if-nez v29, :cond_c

    const v29, 0x7f090220

    :goto_6
    move/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 334
    const v29, 0x104000a

    new-instance v30, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 335
    new-instance v29, Lcom/sec/android/app/camera/CameraDialog$OnKeyListener;

    const/16 v30, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnKeyListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 333
    :cond_c
    const v29, 0x7f09021e

    goto :goto_6

    .line 337
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->dismissCameraDialog()V

    .line 338
    const/16 v29, 0x0

    goto/16 :goto_2

    .line 342
    :pswitch_8
    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 343
    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 344
    const v29, 0x104000a

    const/16 v30, 0x0

    move/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 347
    :pswitch_9
    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 348
    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 349
    const v29, 0x104000a

    const/16 v30, 0x0

    move/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 350
    const/high16 v29, 0x1040000

    new-instance v30, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 353
    :pswitch_a
    const v29, 0x7f0900d4

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 354
    const v29, 0x7f0901cd

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 355
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 356
    const v29, 0x104000a

    new-instance v30, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 360
    :pswitch_b
    const v29, 0x7f0900d4

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 361
    const v29, 0x7f0901ce

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 362
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 363
    const v29, 0x104000a

    new-instance v30, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 367
    :pswitch_c
    const v29, 0x7f0900d4

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 368
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/camera/util/Util;->isWifiOnly(Landroid/content/Context;)Z

    move-result v29

    if-eqz v29, :cond_e

    .line 369
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const v30, 0x7f0901cd

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\n\n"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const v30, 0x7f090103

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 373
    :goto_7
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 374
    const v29, 0x104000a

    new-instance v30, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 371
    :cond_e
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const v30, 0x7f0901cd

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\n\n"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const v30, 0x7f090102

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_7

    .line 378
    :pswitch_d
    const v29, 0x7f0900d4

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 379
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/camera/util/Util;->isWifiOnly(Landroid/content/Context;)Z

    move-result v29

    if-eqz v29, :cond_f

    .line 380
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const v30, 0x7f0901ce

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\n\n"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const v30, 0x7f090103

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 384
    :goto_8
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 385
    const v29, 0x104000a

    new-instance v30, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 382
    :cond_f
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const v30, 0x7f0901ce

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\n\n"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const v30, 0x7f090102

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_8

    .line 389
    :pswitch_e
    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 390
    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 391
    const v29, 0x7f090156

    const/16 v30, 0x0

    move/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 392
    new-instance v29, Lcom/sec/android/app/camera/CameraDialog$OnKeyListener;

    const/16 v30, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnKeyListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 395
    :pswitch_f
    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 396
    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 397
    const v29, 0x7f090156

    new-instance v30, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 398
    new-instance v29, Lcom/sec/android/app/camera/CameraDialog$OnKeyListener;

    const/16 v30, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnKeyListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 401
    :pswitch_10
    const v29, 0x7f090291

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 402
    const v29, 0x7f090117

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 403
    const v29, 0x7f090156

    const/16 v30, 0x0

    move/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 404
    new-instance v29, Lcom/sec/android/app/camera/CameraDialog$OnKeyListener;

    const/16 v30, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnKeyListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 407
    :pswitch_11
    const v29, 0x7f0900e4

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 408
    const v29, 0x7f0901ef

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 409
    const v29, 0x104000a

    new-instance v30, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 412
    :pswitch_12
    const v29, 0x7f0900f8

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 413
    const v29, 0x7f090104

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 414
    const v29, 0x104000a

    new-instance v30, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 418
    :pswitch_13
    const v29, 0x7f090291

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 419
    const v29, 0x7f0901fc

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 420
    const v29, 0x104000a

    new-instance v30, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 424
    :pswitch_14
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v29

    check-cast v29, Lcom/sec/android/app/camera/Camera;

    invoke-virtual/range {v29 .. v29}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v29

    if-nez v29, :cond_10

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isKNOXMode()Z

    move-result v29

    if-eqz v29, :cond_11

    .line 425
    :cond_10
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->dismissCameraDialog()V

    .line 426
    const/16 v29, 0x0

    goto/16 :goto_2

    .line 428
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v29

    check-cast v29, Lcom/sec/android/app/camera/Camera;

    invoke-virtual/range {v29 .. v29}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraVoiceCommand()I

    move-result v29

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_12

    .line 429
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->dismissCameraDialog()V

    .line 430
    const/16 v29, 0x0

    goto/16 :goto_2

    .line 432
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/camera/util/Util;->isSamsungTalkBackEnabled(Landroid/content/Context;)Z

    move-result v29

    if-eqz v29, :cond_13

    .line 433
    const v29, 0x7f090283

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 437
    :goto_9
    const v29, 0x7f09016a

    new-instance v30, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 438
    const/high16 v29, 0x1040000

    new-instance v30, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 435
    :cond_13
    const v29, 0x7f090244

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_9

    .line 442
    :pswitch_15
    const v29, 0x7f0900fb

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 443
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/camera/util/Util;->isSamsungTalkBackEnabled(Landroid/content/Context;)Z

    move-result v29

    if-eqz v29, :cond_14

    .line 444
    const v29, 0x7f090284

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 448
    :goto_a
    const v29, 0x104000a

    new-instance v30, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 449
    const/high16 v29, 0x1040000

    new-instance v30, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 446
    :cond_14
    const v29, 0x7f090245

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_a

    .line 453
    :pswitch_16
    sget-boolean v29, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_QUICK_LAUNCH_USING_POWER_KEY:Z

    if-eqz v29, :cond_15

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isOwner()Z

    move-result v29

    if-eqz v29, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getContext()Landroid/content/Context;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/camera/util/Util;->isDarkScreen(Landroid/content/Context;)Z

    move-result v29

    if-eqz v29, :cond_15

    .line 454
    const v29, 0x7f090206

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 455
    const v29, 0x7f090207

    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    const v33, 0x7f09015b

    invoke-virtual/range {v32 .. v33}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v32

    aput-object v32, v30, v31

    const/16 v31, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    const v33, 0x7f0900e4

    invoke-virtual/range {v32 .. v33}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v32

    aput-object v32, v30, v31

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 459
    :goto_b
    const/16 v29, 0x1

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 460
    const v29, 0x7f090205

    new-instance v30, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 461
    const/high16 v29, 0x1040000

    new-instance v30, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 457
    :cond_15
    const v29, 0x7f090206

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_b

    .line 465
    :pswitch_17
    const v29, 0x7f040010

    const/16 v30, 0x0

    move/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v11, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    .line 466
    .local v13, "layout":Landroid/view/View;
    const v29, 0x7f0f0048

    move/from16 v0, v29

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    .line 467
    .local v27, "textView":Landroid/widget/TextView;
    const/16 v18, 0x0

    .line 468
    .local v18, "msgText":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v29

    check-cast v29, Lcom/sec/android/app/camera/Camera;

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->getInstance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/provider/CameraLocationManager;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->isGPSProviderEnabled()Z

    move-result v29

    if-eqz v29, :cond_18

    .line 469
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/camera/util/Util;->isWifiOnly(Landroid/content/Context;)Z

    move-result v29

    if-eqz v29, :cond_17

    .line 470
    const v29, 0x7f0901ba

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    const v33, 0x7f09017e

    invoke-virtual/range {v32 .. v33}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v32

    aput-object v32, v30, v31

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .line 481
    :goto_c
    sget-boolean v29, Lcom/sec/android/app/camera/feature/Feature;->REPLACE_WIFI_STRING:Z

    if-eqz v29, :cond_16

    .line 482
    const-string v29, "Wi-Fi"

    const-string v30, "WLAN"

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

    .line 484
    :cond_16
    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 486
    const v29, 0x7f0f0049

    move/from16 v0, v29

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 487
    .local v14, "learnMore":Landroid/widget/TextView;
    const/16 v29, 0x1

    move/from16 v0, v29

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 488
    new-instance v29, Lcom/sec/android/app/camera/CameraDialog$1;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraDialog$1;-><init>(Lcom/sec/android/app/camera/CameraDialog;)V

    move-object/from16 v0, v29

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 494
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "<u>"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const v30, 0x7f09017d

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "</u>"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 496
    invoke-virtual {v5, v13}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 497
    const v29, 0x7f0901be

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 498
    const v29, 0x7f090271

    new-instance v30, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 499
    const/high16 v29, 0x1040000

    new-instance v30, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 472
    .end local v14    # "learnMore":Landroid/widget/TextView;
    :cond_17
    const v29, 0x7f0901ba

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    const v33, 0x7f09019b

    invoke-virtual/range {v32 .. v33}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v32

    aput-object v32, v30, v31

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_c

    .line 475
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/camera/util/Util;->isWifiOnly(Landroid/content/Context;)Z

    move-result v29

    if-eqz v29, :cond_19

    .line 476
    const v29, 0x7f0901bc

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    const v33, 0x7f09017e

    invoke-virtual/range {v32 .. v33}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v32

    aput-object v32, v30, v31

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_c

    .line 478
    :cond_19
    const v29, 0x7f0901bc

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    const v33, 0x7f09019b

    invoke-virtual/range {v32 .. v33}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v32

    aput-object v32, v30, v31

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_c

    .line 505
    .end local v13    # "layout":Landroid/view/View;
    .end local v18    # "msgText":Ljava/lang/String;
    .end local v27    # "textView":Landroid/widget/TextView;
    :pswitch_18
    const v29, 0x7f040013

    const/16 v30, 0x0

    move/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v11, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    .line 506
    .restart local v13    # "layout":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v29

    check-cast v29, Lcom/sec/android/app/camera/Camera;

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->getInstance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/provider/CameraLocationManager;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->isGPSProviderEnabled()Z

    move-result v29

    if-eqz v29, :cond_1b

    .line 507
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const v30, 0x7f0901bb

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 511
    .restart local v18    # "msgText":Ljava/lang/String;
    :goto_d
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/camera/util/Util;->isWifiOnly(Landroid/content/Context;)Z

    move-result v29

    if-eqz v29, :cond_1c

    .line 512
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const v30, 0x7f0901ba

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    const v34, 0x7f09017e

    invoke-virtual/range {v33 .. v34}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v31, v32

    move-object/from16 v0, p0

    move/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 513
    const v29, 0x7f090103

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 518
    .local v21, "permissionMsgText":Ljava/lang/String;
    :goto_e
    sget-boolean v29, Lcom/sec/android/app/camera/feature/Feature;->REPLACE_WIFI_STRING:Z

    if-eqz v29, :cond_1a

    .line 519
    const-string v29, "Wi-Fi"

    const-string v30, "WLAN"

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

    .line 521
    :cond_1a
    const v29, 0x7f0f0048

    move/from16 v0, v29

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    .line 522
    .restart local v27    # "textView":Landroid/widget/TextView;
    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 524
    const v29, 0x7f0f0049

    move/from16 v0, v29

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 525
    .restart local v14    # "learnMore":Landroid/widget/TextView;
    const/16 v29, 0x1

    move/from16 v0, v29

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 526
    new-instance v29, Lcom/sec/android/app/camera/CameraDialog$2;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraDialog$2;-><init>(Lcom/sec/android/app/camera/CameraDialog;)V

    move-object/from16 v0, v29

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 532
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "<u>"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const v30, 0x7f09017d

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "</u>"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 534
    const v29, 0x7f0f004e

    move/from16 v0, v29

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    .end local v27    # "textView":Landroid/widget/TextView;
    check-cast v27, Landroid/widget/TextView;

    .line 535
    .restart local v27    # "textView":Landroid/widget/TextView;
    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 537
    const v29, 0x7f0f004f

    move/from16 v0, v29

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    .line 538
    .local v6, "checkBox":Landroid/widget/CheckBox;
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getDialogCheckBoxValueForLocationTag()Z

    move-result v29

    move/from16 v0, v29

    invoke-virtual {v6, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 539
    new-instance v29, Lcom/sec/android/app/camera/CameraDialog$3;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraDialog$3;-><init>(Lcom/sec/android/app/camera/CameraDialog;)V

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 547
    invoke-virtual {v5, v13}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 548
    const v29, 0x7f0901bf

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 549
    const v29, 0x104000a

    new-instance v30, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 550
    const/high16 v29, 0x1040000

    new-instance v30, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 509
    .end local v6    # "checkBox":Landroid/widget/CheckBox;
    .end local v14    # "learnMore":Landroid/widget/TextView;
    .end local v18    # "msgText":Ljava/lang/String;
    .end local v21    # "permissionMsgText":Ljava/lang/String;
    .end local v27    # "textView":Landroid/widget/TextView;
    :cond_1b
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const v30, 0x7f0901bd

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .restart local v18    # "msgText":Ljava/lang/String;
    goto/16 :goto_d

    .line 515
    :cond_1c
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const v30, 0x7f0901ba

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    const v34, 0x7f09019b

    invoke-virtual/range {v33 .. v34}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v31, v32

    move-object/from16 v0, p0

    move/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 516
    const v29, 0x7f090102

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v21

    .restart local v21    # "permissionMsgText":Ljava/lang/String;
    goto/16 :goto_e

    .line 554
    .end local v13    # "layout":Landroid/view/View;
    .end local v18    # "msgText":Ljava/lang/String;
    .end local v21    # "permissionMsgText":Ljava/lang/String;
    :pswitch_19
    const v29, 0x7f040010

    const/16 v30, 0x0

    move/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v11, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    .line 555
    .restart local v13    # "layout":Landroid/view/View;
    const v29, 0x7f0f0048

    move/from16 v0, v29

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    .line 556
    .restart local v27    # "textView":Landroid/widget/TextView;
    const/16 v18, 0x0

    .line 557
    .restart local v18    # "msgText":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v29

    check-cast v29, Lcom/sec/android/app/camera/Camera;

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->getInstance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/provider/CameraLocationManager;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->isGPSProviderEnabled()Z

    move-result v29

    if-eqz v29, :cond_1f

    .line 558
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/camera/util/Util;->isWifiOnly(Landroid/content/Context;)Z

    move-result v29

    if-eqz v29, :cond_1e

    .line 559
    const v29, 0x7f0901ba

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    const v33, 0x7f09017e

    invoke-virtual/range {v32 .. v33}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v32

    aput-object v32, v30, v31

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .line 570
    :goto_f
    sget-boolean v29, Lcom/sec/android/app/camera/feature/Feature;->REPLACE_WIFI_STRING:Z

    if-eqz v29, :cond_1d

    .line 571
    const-string v29, "Wi-Fi"

    const-string v30, "WLAN"

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

    .line 573
    :cond_1d
    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 575
    const v29, 0x7f0f0049

    move/from16 v0, v29

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 576
    .restart local v14    # "learnMore":Landroid/widget/TextView;
    const/16 v29, 0x1

    move/from16 v0, v29

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 577
    new-instance v29, Lcom/sec/android/app/camera/CameraDialog$4;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraDialog$4;-><init>(Lcom/sec/android/app/camera/CameraDialog;)V

    move-object/from16 v0, v29

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 583
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "<u>"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const v30, 0x7f09017d

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "</u>"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 585
    invoke-virtual {v5, v13}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 586
    const v29, 0x7f0901be

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 587
    const v29, 0x7f090271

    new-instance v30, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 588
    const/high16 v29, 0x1040000

    new-instance v30, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 561
    .end local v14    # "learnMore":Landroid/widget/TextView;
    :cond_1e
    const v29, 0x7f0901ba

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    const v33, 0x7f09019b

    invoke-virtual/range {v32 .. v33}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v32

    aput-object v32, v30, v31

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_f

    .line 564
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/camera/util/Util;->isWifiOnly(Landroid/content/Context;)Z

    move-result v29

    if-eqz v29, :cond_20

    .line 565
    const v29, 0x7f0901bc

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    const v33, 0x7f09017e

    invoke-virtual/range {v32 .. v33}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v32

    aput-object v32, v30, v31

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_f

    .line 567
    :cond_20
    const v29, 0x7f0901bc

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    const v33, 0x7f09019b

    invoke-virtual/range {v32 .. v33}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v32

    aput-object v32, v30, v31

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_f

    .line 592
    .end local v13    # "layout":Landroid/view/View;
    .end local v18    # "msgText":Ljava/lang/String;
    .end local v27    # "textView":Landroid/widget/TextView;
    :pswitch_1a
    const v29, 0x7f040010

    const/16 v30, 0x0

    move/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v11, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    .line 593
    .restart local v13    # "layout":Landroid/view/View;
    const v29, 0x7f0f0048

    move/from16 v0, v29

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    .line 594
    .restart local v27    # "textView":Landroid/widget/TextView;
    const/16 v18, 0x0

    .line 595
    .restart local v18    # "msgText":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v29

    check-cast v29, Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual/range {v29 .. v29}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->isProviderEnabled()Z

    move-result v29

    if-eqz v29, :cond_23

    .line 596
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/camera/util/Util;->isWifiOnly(Landroid/content/Context;)Z

    move-result v29

    if-eqz v29, :cond_22

    .line 597
    const v29, 0x7f0901ba

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    const v33, 0x7f09017e

    invoke-virtual/range {v32 .. v33}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v32

    aput-object v32, v30, v31

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .line 608
    :goto_10
    sget-boolean v29, Lcom/sec/android/app/camera/feature/Feature;->REPLACE_WIFI_STRING:Z

    if-eqz v29, :cond_21

    .line 609
    const-string v29, "Wi-Fi"

    const-string v30, "WLAN"

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

    .line 611
    :cond_21
    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 613
    const v29, 0x7f0f0049

    move/from16 v0, v29

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 614
    .restart local v14    # "learnMore":Landroid/widget/TextView;
    const/16 v29, 0x1

    move/from16 v0, v29

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 615
    new-instance v29, Lcom/sec/android/app/camera/CameraDialog$5;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraDialog$5;-><init>(Lcom/sec/android/app/camera/CameraDialog;)V

    move-object/from16 v0, v29

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 622
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "<u>"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const v30, 0x7f09017d

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "</u>"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 624
    invoke-virtual {v5, v13}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 625
    const v29, 0x7f0901be

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 626
    const v29, 0x7f090271

    new-instance v30, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 627
    const/high16 v29, 0x1040000

    new-instance v30, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 599
    .end local v14    # "learnMore":Landroid/widget/TextView;
    :cond_22
    const v29, 0x7f0901ba

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    const v33, 0x7f09019b

    invoke-virtual/range {v32 .. v33}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v32

    aput-object v32, v30, v31

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_10

    .line 602
    :cond_23
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/camera/util/Util;->isWifiOnly(Landroid/content/Context;)Z

    move-result v29

    if-eqz v29, :cond_24

    .line 603
    const v29, 0x7f0901bc

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    const v33, 0x7f09017e

    invoke-virtual/range {v32 .. v33}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v32

    aput-object v32, v30, v31

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_10

    .line 605
    :cond_24
    const v29, 0x7f0901bc

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    const v33, 0x7f09019b

    invoke-virtual/range {v32 .. v33}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v32

    aput-object v32, v30, v31

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_10

    .line 633
    .end local v13    # "layout":Landroid/view/View;
    .end local v18    # "msgText":Ljava/lang/String;
    .end local v27    # "textView":Landroid/widget/TextView;
    :pswitch_1b
    const v29, 0x7f040013

    const/16 v30, 0x0

    move/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v11, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    .line 634
    .restart local v13    # "layout":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v29

    check-cast v29, Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual/range {v29 .. v29}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->isProviderEnabled()Z

    move-result v29

    if-eqz v29, :cond_26

    .line 635
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const v30, 0x7f0901bb

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 639
    .restart local v18    # "msgText":Ljava/lang/String;
    :goto_11
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/camera/util/Util;->isWifiOnly(Landroid/content/Context;)Z

    move-result v29

    if-eqz v29, :cond_27

    .line 640
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const v30, 0x7f0901ba

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    const v34, 0x7f09017e

    invoke-virtual/range {v33 .. v34}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v31, v32

    move-object/from16 v0, p0

    move/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 641
    const v29, 0x7f090103

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 646
    .restart local v21    # "permissionMsgText":Ljava/lang/String;
    :goto_12
    sget-boolean v29, Lcom/sec/android/app/camera/feature/Feature;->REPLACE_WIFI_STRING:Z

    if-eqz v29, :cond_25

    .line 647
    const-string v29, "Wi-Fi"

    const-string v30, "WLAN"

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

    .line 649
    :cond_25
    const v29, 0x7f0f0048

    move/from16 v0, v29

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    .line 650
    .restart local v27    # "textView":Landroid/widget/TextView;
    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 652
    const v29, 0x7f0f0049

    move/from16 v0, v29

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 653
    .restart local v14    # "learnMore":Landroid/widget/TextView;
    const/16 v29, 0x1

    move/from16 v0, v29

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 654
    new-instance v29, Lcom/sec/android/app/camera/CameraDialog$6;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraDialog$6;-><init>(Lcom/sec/android/app/camera/CameraDialog;)V

    move-object/from16 v0, v29

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 661
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "<u>"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const v30, 0x7f09017d

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "</u>"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 663
    const v29, 0x7f0f004e

    move/from16 v0, v29

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    .end local v27    # "textView":Landroid/widget/TextView;
    check-cast v27, Landroid/widget/TextView;

    .line 664
    .restart local v27    # "textView":Landroid/widget/TextView;
    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 666
    const v29, 0x7f0f004f

    move/from16 v0, v29

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    .line 667
    .restart local v6    # "checkBox":Landroid/widget/CheckBox;
    const/16 v29, 0x8

    move/from16 v0, v29

    invoke-virtual {v6, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 669
    invoke-virtual {v5, v13}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 670
    const v29, 0x7f0901bf

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 671
    const v29, 0x104000a

    new-instance v30, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 672
    const/high16 v29, 0x1040000

    new-instance v30, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 637
    .end local v6    # "checkBox":Landroid/widget/CheckBox;
    .end local v14    # "learnMore":Landroid/widget/TextView;
    .end local v18    # "msgText":Ljava/lang/String;
    .end local v21    # "permissionMsgText":Ljava/lang/String;
    .end local v27    # "textView":Landroid/widget/TextView;
    :cond_26
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const v30, 0x7f0901bd

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .restart local v18    # "msgText":Ljava/lang/String;
    goto/16 :goto_11

    .line 643
    :cond_27
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const v30, 0x7f0901ba

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    const v34, 0x7f09019b

    invoke-virtual/range {v33 .. v34}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v31, v32

    move-object/from16 v0, p0

    move/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 644
    const v29, 0x7f090102

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v21

    .restart local v21    # "permissionMsgText":Ljava/lang/String;
    goto/16 :goto_12

    .line 676
    .end local v13    # "layout":Landroid/view/View;
    .end local v18    # "msgText":Ljava/lang/String;
    .end local v21    # "permissionMsgText":Ljava/lang/String;
    :pswitch_1c
    const v29, 0x7f040010

    const/16 v30, 0x0

    move/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v11, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    .line 677
    .restart local v13    # "layout":Landroid/view/View;
    const v29, 0x7f0f0048

    move/from16 v0, v29

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    .line 678
    .restart local v27    # "textView":Landroid/widget/TextView;
    const v29, 0x7f0901be

    move-object/from16 v0, v27

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 679
    const v29, 0x7f0f0049

    move/from16 v0, v29

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 680
    .restart local v14    # "learnMore":Landroid/widget/TextView;
    const/16 v29, 0x1

    move/from16 v0, v29

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 681
    new-instance v29, Lcom/sec/android/app/camera/CameraDialog$7;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraDialog$7;-><init>(Lcom/sec/android/app/camera/CameraDialog;)V

    move-object/from16 v0, v29

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 687
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "<u>"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const v30, 0x7f09017d

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "</u>"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 689
    invoke-virtual {v5, v13}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 690
    const v29, 0x7f090271

    new-instance v30, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 691
    const/high16 v29, 0x1040000

    new-instance v30, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 695
    .end local v13    # "layout":Landroid/view/View;
    .end local v14    # "learnMore":Landroid/widget/TextView;
    .end local v27    # "textView":Landroid/widget/TextView;
    :pswitch_1d
    const v29, 0x7f040013

    const/16 v30, 0x0

    move/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v11, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    .line 696
    .restart local v13    # "layout":Landroid/view/View;
    const v29, 0x7f0f0048

    move/from16 v0, v29

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    .line 697
    .restart local v27    # "textView":Landroid/widget/TextView;
    const v29, 0x7f0901bb

    move-object/from16 v0, v27

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 698
    const v29, 0x7f0f0049

    move/from16 v0, v29

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 699
    .restart local v14    # "learnMore":Landroid/widget/TextView;
    const/16 v29, 0x1

    move/from16 v0, v29

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 700
    new-instance v29, Lcom/sec/android/app/camera/CameraDialog$8;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraDialog$8;-><init>(Lcom/sec/android/app/camera/CameraDialog;)V

    move-object/from16 v0, v29

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 706
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "<u>"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const v30, 0x7f09017d

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "</u>"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 708
    const v29, 0x7f0f004e

    move/from16 v0, v29

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    .end local v27    # "textView":Landroid/widget/TextView;
    check-cast v27, Landroid/widget/TextView;

    .line 709
    .restart local v27    # "textView":Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/camera/util/Util;->isWifiOnly(Landroid/content/Context;)Z

    move-result v29

    if-eqz v29, :cond_28

    .line 710
    const v29, 0x7f090103

    move-object/from16 v0, v27

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 715
    :goto_13
    const v29, 0x7f0f004f

    move/from16 v0, v29

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    .line 716
    .restart local v6    # "checkBox":Landroid/widget/CheckBox;
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getDialogCheckBoxValueForLocationTag()Z

    move-result v29

    move/from16 v0, v29

    invoke-virtual {v6, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 717
    new-instance v29, Lcom/sec/android/app/camera/CameraDialog$9;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraDialog$9;-><init>(Lcom/sec/android/app/camera/CameraDialog;)V

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 725
    invoke-virtual {v5, v13}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 726
    const v29, 0x7f0901bf

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 727
    const v29, 0x104000a

    new-instance v30, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 728
    const/high16 v29, 0x1040000

    new-instance v30, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 712
    .end local v6    # "checkBox":Landroid/widget/CheckBox;
    :cond_28
    const v29, 0x7f090102

    move-object/from16 v0, v27

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_13

    .line 732
    .end local v13    # "layout":Landroid/view/View;
    .end local v14    # "learnMore":Landroid/widget/TextView;
    .end local v27    # "textView":Landroid/widget/TextView;
    :pswitch_1e
    const v29, 0x7f0900e4

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 733
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string v30, "double_tab_launch"

    const/16 v31, 0x3

    invoke-static/range {v29 .. v31}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v23

    .line 734
    .local v23, "quickLaunchValue":I
    const/16 v29, 0x3

    move/from16 v0, v23

    move/from16 v1, v29

    if-ne v0, v1, :cond_29

    .line 735
    const v29, 0x7f0901f2

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 739
    :goto_14
    const v29, 0x7f0901f1

    new-instance v30, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 740
    const v29, 0x7f090270

    new-instance v30, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 737
    :cond_29
    const v29, 0x7f0901f3

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_14

    .line 744
    .end local v23    # "quickLaunchValue":I
    :pswitch_1f
    const v29, 0x7f090276

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 745
    const v29, 0x7f090217

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 746
    const v29, 0x104000a

    new-instance v30, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 747
    const/high16 v29, 0x1040000

    new-instance v30, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 751
    :pswitch_20
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/CameraDialog;->mSeparatedShootingModeMessage:Ljava/lang/String;

    .line 752
    const v29, 0x7f090276

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 753
    const v29, 0x7f09021a

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aput-object v28, v30, v31

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 754
    const v29, 0x104000a

    new-instance v30, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 755
    const/high16 v29, 0x1040000

    new-instance v30, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 759
    :pswitch_21
    const v29, 0x7f090276

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 760
    const v29, 0x7f090218

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 761
    const v29, 0x104000a

    new-instance v30, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 762
    const/high16 v29, 0x1040000

    new-instance v30, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 766
    :pswitch_22
    const v29, 0x7f090276

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 767
    const v29, 0x7f090218

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 768
    const v29, 0x104000a

    new-instance v30, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 769
    const/high16 v29, 0x1040000

    new-instance v30, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 773
    :pswitch_23
    const v29, 0x7f090276

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 774
    const v29, 0x7f090219

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 775
    const v29, 0x104000a

    new-instance v30, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 776
    const/high16 v29, 0x1040000

    new-instance v30, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 780
    :pswitch_24
    const v29, 0x7f090276

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 781
    const v29, 0x7f09021a

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    const v33, 0x7f090282

    invoke-virtual/range {v32 .. v33}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v32

    aput-object v32, v30, v31

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 782
    const v29, 0x104000a

    new-instance v30, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 783
    const/high16 v29, 0x1040000

    new-instance v30, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 787
    :pswitch_25
    const v29, 0x7f090124

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 788
    const v29, 0x7f09012d

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v29

    const v30, 0x7f090156

    const/16 v31, 0x0

    invoke-virtual/range {v29 .. v31}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 789
    new-instance v29, Lcom/sec/android/app/camera/CameraDialog$OnKeyListener;

    const/16 v30, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnKeyListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 793
    :pswitch_26
    const v29, 0x7f09013c

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 794
    const v29, 0x7f09013b

    const/16 v30, 0x0

    move/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 795
    const v29, 0x7f090214

    const/16 v30, 0x0

    move/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 799
    :pswitch_27
    const v29, 0x7f09013e

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 800
    const v29, 0x7f09013d

    const/16 v30, 0x0

    move/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 801
    const v29, 0x7f090139

    const/16 v30, 0x0

    move/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 805
    :pswitch_28
    const v29, 0x7f09013a

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 806
    const v29, 0x7f090129

    const/16 v30, 0x0

    move/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 807
    const v29, 0x7f09013b

    const/16 v30, 0x0

    move/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 812
    :pswitch_29
    const v29, 0x7f040014

    const/16 v30, 0x0

    move/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v11, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    .line 813
    .restart local v13    # "layout":Landroid/view/View;
    const v29, 0x7f0f0048

    move/from16 v0, v29

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    .line 815
    .restart local v27    # "textView":Landroid/widget/TextView;
    const v29, 0x7f090111

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 816
    .local v24, "spannableText":Ljava/lang/String;
    new-instance v26, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 817
    .local v26, "stringBuilder":Landroid/text/SpannableStringBuilder;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v29

    sget-object v30, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 818
    .local v10, "index":I
    const/16 v29, -0x1

    move/from16 v0, v29

    if-eq v10, v0, :cond_2a

    .line 819
    new-instance v29, Landroid/text/style/StyleSpan;

    const/16 v30, 0x1

    invoke-direct/range {v29 .. v30}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v30

    add-int v30, v30, v10

    const/16 v31, 0x21

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v31

    invoke-virtual {v0, v1, v10, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 821
    :cond_2a
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 823
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 824
    .local v22, "permissionStringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 825
    .local v20, "permissionDrawableList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/drawable/Drawable;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/camera/util/PermissionUtils;->getRequiredPermissions(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v31, v0

    const/16 v29, 0x0

    :goto_15
    move/from16 v0, v29

    move/from16 v1, v31

    if-ge v0, v1, :cond_2c

    aget-object v19, v30, v29

    .line 826
    .local v19, "permission":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v32

    const/16 v33, -0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_2b

    .line 827
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/PermissionUtils;->getPermissionGroupString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 828
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/PermissionUtils;->getPermissionGroupDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v32

    move-object/from16 v0, v20

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 825
    :cond_2b
    add-int/lit8 v29, v29, 0x1

    goto :goto_15

    .line 831
    .end local v19    # "permission":Ljava/lang/String;
    :cond_2c
    new-instance v4, Lcom/sec/android/app/camera/RequestPermissionActivity$PermissionListAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v29

    const v30, 0x7f040015

    move-object/from16 v0, v29

    move/from16 v1, v30

    move-object/from16 v2, v22

    move-object/from16 v3, v20

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/sec/android/app/camera/RequestPermissionActivity$PermissionListAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 832
    .local v4, "adapter":Landroid/widget/ListAdapter;
    const v29, 0x7f0f0050

    move/from16 v0, v29

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ListView;

    .line 833
    .local v15, "listView":Landroid/widget/ListView;
    invoke-virtual {v15, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 834
    invoke-virtual {v5, v13}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 835
    const v29, 0x7f090226

    new-instance v30, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 836
    const/high16 v29, 0x1040000

    new-instance v30, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 837
    new-instance v29, Lcom/sec/android/app/camera/CameraDialog$OnKeyListener;

    const/16 v30, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnKeyListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 841
    .end local v4    # "adapter":Landroid/widget/ListAdapter;
    .end local v10    # "index":I
    .end local v13    # "layout":Landroid/view/View;
    .end local v15    # "listView":Landroid/widget/ListView;
    .end local v20    # "permissionDrawableList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/drawable/Drawable;>;"
    .end local v22    # "permissionStringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v24    # "spannableText":Ljava/lang/String;
    .end local v26    # "stringBuilder":Landroid/text/SpannableStringBuilder;
    .end local v27    # "textView":Landroid/widget/TextView;
    :pswitch_2a
    const v29, 0x7f090110

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 842
    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 843
    const v29, 0x104000a

    new-instance v30, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 847
    :pswitch_2b
    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 848
    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 849
    const v29, 0x104000a

    new-instance v30, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 853
    :pswitch_2c
    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 854
    const v29, 0x104000a

    new-instance v30, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 858
    :pswitch_2d
    const v29, 0x7f090242

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 859
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const v30, 0x7f090241

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\n\n"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const v30, 0x7f090240

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 860
    const v29, 0x7f09023e

    new-instance v30, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 861
    const v29, 0x7f09023f

    new-instance v30, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 865
    :pswitch_2e
    const v29, 0x7f040010

    const/16 v30, 0x0

    move/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v11, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    .line 866
    .restart local v13    # "layout":Landroid/view/View;
    const v29, 0x7f0f0048

    move/from16 v0, v29

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    .line 868
    .restart local v27    # "textView":Landroid/widget/TextView;
    move-object/from16 v0, v27

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 870
    const v29, 0x7f0f0049

    move/from16 v0, v29

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 871
    .restart local v14    # "learnMore":Landroid/widget/TextView;
    const/16 v29, 0x1

    move/from16 v0, v29

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 872
    new-instance v29, Lcom/sec/android/app/camera/CameraDialog$10;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraDialog$10;-><init>(Lcom/sec/android/app/camera/CameraDialog;)V

    move-object/from16 v0, v29

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 878
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "<u>"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const v30, 0x7f09017d

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "</u>"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 880
    invoke-virtual {v5, v13}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 881
    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 882
    const v29, 0x7f090271

    new-instance v30, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 883
    const/high16 v29, 0x1040000

    new-instance v30, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 887
    .end local v13    # "layout":Landroid/view/View;
    .end local v14    # "learnMore":Landroid/widget/TextView;
    .end local v27    # "textView":Landroid/widget/TextView;
    :pswitch_2f
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v29

    check-cast v29, Lcom/sec/android/app/camera/Camera;

    invoke-virtual/range {v29 .. v29}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isNetworkPermissionEnabled()Z

    move-result v12

    .line 888
    .local v12, "isNetworkPermissionEnabled":Z
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getDialogCheckBoxValueForWatermark()Z

    move-result v7

    .line 889
    .local v7, "checkBoxValue":Z
    if-eqz v12, :cond_2d

    if-eqz v7, :cond_2d

    .line 890
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->dismissCameraDialog()V

    .line 891
    const/16 v29, 0x0

    goto/16 :goto_2

    .line 893
    :cond_2d
    const v29, 0x7f040013

    const/16 v30, 0x0

    move/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v11, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    .line 895
    .restart local v13    # "layout":Landroid/view/View;
    const v29, 0x7f0f0049

    move/from16 v0, v29

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    .line 896
    .restart local v27    # "textView":Landroid/widget/TextView;
    const/16 v29, 0x8

    move-object/from16 v0, v27

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 897
    const v29, 0x7f0f004e

    move/from16 v0, v29

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    .end local v27    # "textView":Landroid/widget/TextView;
    check-cast v27, Landroid/widget/TextView;

    .line 898
    .restart local v27    # "textView":Landroid/widget/TextView;
    const/16 v29, 0x8

    move-object/from16 v0, v27

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 900
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f0901d4

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const v33, 0x7f090126

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v31, v32

    invoke-virtual/range {v29 .. v31}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 901
    .restart local v8    # "description":Ljava/lang/String;
    const v29, 0x7f0f0048

    move/from16 v0, v29

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    .end local v27    # "textView":Landroid/widget/TextView;
    check-cast v27, Landroid/widget/TextView;

    .line 902
    .restart local v27    # "textView":Landroid/widget/TextView;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\n\n"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "- "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const v30, 0x7f0901d5

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 904
    const v29, 0x7f0f004f

    move/from16 v0, v29

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    .line 905
    .restart local v6    # "checkBox":Landroid/widget/CheckBox;
    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 906
    new-instance v29, Lcom/sec/android/app/camera/CameraDialog$11;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraDialog$11;-><init>(Lcom/sec/android/app/camera/CameraDialog;)V

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 913
    invoke-virtual {v5, v13}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 914
    const/16 v29, 0x1

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 915
    const v29, 0x7f0901d6

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 916
    const v29, 0x104000a

    new-instance v30, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 917
    const/high16 v29, 0x1040000

    new-instance v30, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V

    move/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 234
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_20
        :pswitch_b
        :pswitch_d
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
        :pswitch_c
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_29
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 929
    invoke-static {}, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->values()[Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    aget-object v0, v1, v2

    .line 930
    .local v0, "id":Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;
    sget-object v1, Lcom/sec/android/app/camera/CameraDialog$12;->$SwitchMap$com$sec$android$app$camera$interfaces$CameraContext$DialogID:[I

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->ordinal()I

    move-result v2

    aget v1, v1, v2

    sparse-switch v1, :sswitch_data_0

    .line 947
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/DialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 938
    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 939
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 940
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    goto :goto_0

    .line 930
    :sswitch_data_0
    .sparse-switch
        0xd -> :sswitch_0
        0x11 -> :sswitch_0
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x2b -> :sswitch_0
        0x2c -> :sswitch_0
        0x2e -> :sswitch_0
    .end sparse-switch
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 969
    invoke-static {}, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->values()[Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "id"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    aget-object v1, v3, v4

    .line 970
    .local v1, "id":Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 972
    .local v0, "cameraContext":Landroid/app/Activity;
    sget-object v4, Lcom/sec/android/app/camera/CameraDialog;->mListeners:Ljava/util/List;

    monitor-enter v4

    .line 973
    :try_start_0
    sget-object v3, Lcom/sec/android/app/camera/CameraDialog;->mListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/interfaces/CameraContext$CameraDialogListener;

    .line 974
    .local v2, "listener":Lcom/sec/android/app/camera/interfaces/CameraContext$CameraDialogListener;
    invoke-interface {v2, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext$CameraDialogListener;->onDismissDialog(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;)V

    goto :goto_0

    .line 976
    .end local v2    # "listener":Lcom/sec/android/app/camera/interfaces/CameraContext$CameraDialogListener;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 978
    sget-object v3, Lcom/sec/android/app/camera/CameraDialog$12;->$SwitchMap$com$sec$android$app$camera$interfaces$CameraContext$DialogID:[I

    invoke-virtual {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->ordinal()I

    move-result v4

    aget v3, v3, v4

    sparse-switch v3, :sswitch_data_0

    .line 1005
    :cond_1
    :goto_1
    return-void

    .line 985
    :sswitch_0
    if-eqz v0, :cond_1

    move-object v3, v0

    .line 986
    check-cast v3, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->isInLockTaskMode()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 987
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Landroid/os/Process;->killProcess(I)V

    goto :goto_1

    .line 989
    :cond_2
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 994
    :sswitch_1
    sget-boolean v3, Lcom/sec/android/app/camera/feature/Feature;->MICRO_SD_SLOT:Z

    if-nez v3, :cond_1

    if-eqz v0, :cond_1

    move-object v3, v0

    .line 995
    check-cast v3, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->isInLockTaskMode()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 996
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Landroid/os/Process;->killProcess(I)V

    goto :goto_1

    .line 998
    :cond_3
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 978
    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_1
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0x11 -> :sswitch_0
        0x13 -> :sswitch_0
        0x27 -> :sswitch_0
    .end sparse-switch
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 1009
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    .line 1010
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/sec/android/app/camera/Camera;

    if-eqz v1, :cond_0

    .line 1011
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    .line 1013
    .local v0, "cameraContext":Lcom/sec/android/app/camera/Camera;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isCameraDialogVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1014
    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLContext;->disableAccessibilityService(Landroid/content/Context;)V

    .line 1017
    .end local v0    # "cameraContext":Lcom/sec/android/app/camera/Camera;
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 1021
    invoke-super {p0}, Landroid/app/DialogFragment;->onStop()V

    .line 1022
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/sec/android/app/camera/Camera;

    if-eqz v1, :cond_0

    .line 1023
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    .line 1025
    .local v0, "cameraContext":Lcom/sec/android/app/camera/Camera;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isCameraDialogVisible()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLContext;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1026
    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLContext;->enableAccessibilityService(Landroid/content/Context;)V

    .line 1029
    .end local v0    # "cameraContext":Lcom/sec/android/app/camera/Camera;
    :cond_0
    return-void
.end method
