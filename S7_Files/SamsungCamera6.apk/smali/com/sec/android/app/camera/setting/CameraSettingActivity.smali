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
.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

.field private mHandler:Landroid/os/Handler;

.field private mIsFromApplicationSettings:Z

.field private mIsFromSecureLocationSetting:Z

.field private mLayoutRes:I

.field private mLocationManager:Landroid/location/LocationManager;

.field private mMenuDimController:Lcom/sec/android/app/camera/DimController;

.field private mNeedToShowLocationDialog:Z

.field private mPreferenceFragment:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

.field private mTalkbackContentObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 65
    iput-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mPreferenceFragment:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    .line 67
    iput-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mLocationManager:Landroid/location/LocationManager;

    .line 68
    iput-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mIsFromSecureLocationSetting:Z

    .line 69
    iput-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mNeedToShowLocationDialog:Z

    .line 70
    iput-boolean v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mIsFromApplicationSettings:Z

    .line 72
    iput-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    .line 73
    iput-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mMenuDimController:Lcom/sec/android/app/camera/DimController;

    .line 74
    new-instance v0, Lcom/sec/android/app/camera/setting/CameraSettingActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity$1;-><init>(Lcom/sec/android/app/camera/setting/CameraSettingActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 95
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mHandler:Landroid/os/Handler;

    .line 96
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mLayoutRes:I

    .line 97
    new-instance v0, Lcom/sec/android/app/camera/setting/CameraSettingActivity$2;

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingActivity$2;-><init>(Lcom/sec/android/app/camera/setting/CameraSettingActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mTalkbackContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/setting/CameraSettingActivity;)Lcom/sec/android/app/camera/DimController;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mMenuDimController:Lcom/sec/android/app/camera/DimController;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/setting/CameraSettingActivity;)Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mPreferenceFragment:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/setting/CameraSettingActivity;)Lcom/sec/android/app/camera/setting/CameraSettingsImpl;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    return-object v0
.end method

.method private deinitIntentFilter()V
    .locals 4

    .prologue
    .line 528
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->MICRO_SD_SLOT:Z

    if-eqz v1, :cond_0

    .line 530
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 535
    :cond_0
    :goto_0
    return-void

    .line 531
    :catch_0
    move-exception v0

    .line 532
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
    .line 538
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->MICRO_SD_SLOT:Z

    if-eqz v1, :cond_0

    .line 540
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 543
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 544
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 545
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 546
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 548
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private initializeLocationManager()V
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mLocationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 552
    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mLocationManager:Landroid/location/LocationManager;

    .line 554
    :cond_0
    return-void
.end method


# virtual methods
.method protected addPreferenceFragment(I)V
    .locals 6
    .param p1, "preferenceResId"    # I

    .prologue
    .line 440
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    iget-object v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mMenuDimController:Lcom/sec/android/app/camera/DimController;

    invoke-static {v2, v3, p1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->newInstance(Lcom/sec/android/app/camera/setting/CameraSettingsImpl;Lcom/sec/android/app/camera/DimController;I)Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    move-result-object v1

    .line 442
    .local v1, "preferenceFragment":Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 443
    .local v0, "ft":Landroid/app/FragmentTransaction;
    const v2, 0x7f060001

    const v3, 0x7f060003

    const v4, 0x7f060002

    const/high16 v5, 0x7f060000

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/app/FragmentTransaction;

    .line 444
    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mLayoutRes:I

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 445
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 446
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 447
    return-void
.end method

.method public finish()V
    .locals 0

    .prologue
    .line 118
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 119
    return-void
.end method

.method protected getFeatureValueByPreferenceKeyForLogging(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "preferenceKey"    # Ljava/lang/String;

    .prologue
    .line 456
    const-string v0, "pref_global_camera_quick_shot"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 457
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mIsFromApplicationSettings:Z

    if-eqz v0, :cond_0

    .line 458
    const-string v0, "Z041"

    .line 469
    :goto_0
    return-object v0

    .line 460
    :cond_0
    const-string v0, "Z117"

    goto :goto_0

    .line 462
    :cond_1
    const-string v0, "pref_global_motion_photo_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 463
    const-string v0, "Z131"

    goto :goto_0

    .line 464
    :cond_2
    const-string v0, "pref_camera_rear_resolution_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "camera_resolution_rear_spinner"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 465
    :cond_3
    const-string v0, "Z089"

    goto :goto_0

    .line 466
    :cond_4
    const-string v0, "pref_camera_front_resolution_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "camera_resolution_front_spinner"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 467
    :cond_5
    const-string v0, "Z090"

    goto :goto_0

    .line 469
    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isFromApplicationSettings()Z
    .locals 1

    .prologue
    .line 473
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mIsFromApplicationSettings:Z

    return v0
.end method

.method public isNetworkProviderEnabled()Z
    .locals 2

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->initializeLocationManager()V

    .line 123
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isProviderEnabled()Z
    .locals 2

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->initializeLocationManager()V

    .line 128
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

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

    .line 481
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

    .line 482
    packed-switch p1, :pswitch_data_0

    .line 503
    :goto_0
    return-void

    .line 484
    :pswitch_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    if-eqz p3, :cond_0

    .line 485
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "location_dialog_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 486
    .local v0, "id":I
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 488
    :pswitch_1
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->setGPS(Z)V

    .line 489
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->setHighAccuracyLocationMode()V

    goto :goto_0

    .line 493
    :pswitch_2
    iput-boolean v4, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mNeedToShowLocationDialog:Z

    goto :goto_0

    .line 499
    .end local v0    # "id":I
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->setGPS(Z)V

    goto :goto_0

    .line 482
    nop

    :pswitch_data_0
    .packed-switch 0x7ea
        :pswitch_0
    .end packed-switch

    .line 486
    :pswitch_data_1
    .packed-switch 0x19f
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

    .line 133
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 134
    const v3, 0x7f10000c

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 135
    .local v2, "v":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0109

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 137
    .local v1, "size":I
    invoke-virtual {v2, v1, v5, v1, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 139
    const v3, 0x7f10000d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 140
    .local v0, "frameView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020229

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 142
    .end local v0    # "frameView":Landroid/view/View;
    .end local v1    # "size":I
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v5, 0x400

    const/4 v4, 0x1

    .line 146
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 148
    const-string v2, "CameraSettingActivity"

    const-string v3, "onCreate"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-static {p0}, Lcom/sec/android/app/camera/util/PermissionUtils;->startCheckRuntimePermission(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 185
    :goto_0
    return-void

    .line 155
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 156
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "camera-parcel"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 157
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_2

    .line 158
    const-string v2, "setting"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    iput-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    .line 159
    const-string v2, "dim"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/DimController;

    iput-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mMenuDimController:Lcom/sec/android/app/camera/DimController;

    .line 161
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mMenuDimController:Lcom/sec/android/app/camera/DimController;

    if-nez v2, :cond_2

    .line 162
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->finish()V

    goto :goto_0

    .line 166
    :cond_2
    const-string v2, "fromApplicationSettings"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 167
    iput-boolean v4, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mIsFromApplicationSettings:Z

    .line 169
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->initIntentFilter()V

    .line 171
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v5, v5}, Landroid/view/Window;->setFlags(II)V

    .line 173
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SETTING_LIST_HORIZONTAL_ALIGN_WITH_PADING:Z

    if-eqz v2, :cond_5

    .line 174
    const v2, 0x7f040002

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->setContentView(I)V

    .line 175
    const v2, 0x7f10000d

    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mLayoutRes:I

    .line 180
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v2

    if-lez v2, :cond_4

    .line 181
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 183
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    iget-object v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mMenuDimController:Lcom/sec/android/app/camera/DimController;

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->newInstance(Lcom/sec/android/app/camera/setting/CameraSettingsImpl;Lcom/sec/android/app/camera/DimController;)Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mPreferenceFragment:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    .line 184
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mLayoutRes:I

    iget-object v4, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mPreferenceFragment:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    invoke-virtual {v2, v3, v4}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 177
    :cond_5
    const v2, 0x1020002

    iput v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mLayoutRes:I

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 189
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 190
    const-string v0, "CameraSettingActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->deinitIntentFilter()V

    .line 192
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 196
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->hasWindowFocus()Z

    move-result v1

    if-nez v1, :cond_0

    .line 197
    const-string v1, "CameraSettingActivity"

    const-string v2, "CameraSettingActivity has no window focus, so return key event"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :goto_0
    return v0

    .line 200
    :cond_0
    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    .line 201
    const-string v1, "CameraSettingActivity"

    const-string v2, "BACK KEY PRESSED!"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 204
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const v2, 0x7f0a021c

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(I)V

    .line 205
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStackImmediate()Z

    goto :goto_0

    .line 208
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->finish()V

    goto :goto_0

    .line 212
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLaunchListFragment(I)V
    .locals 6
    .param p1, "listType"    # I

    .prologue
    .line 506
    const-string v2, "CameraSettingActivity"

    const-string v3, "onLaunchListFragment"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    invoke-static {v2, p1}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->newInstance(Lcom/sec/android/app/camera/setting/CameraSettingsImpl;I)Lcom/sec/android/app/camera/setting/ListSettingFragment;

    move-result-object v1

    .line 509
    .local v1, "resolutionFragment":Lcom/sec/android/app/camera/setting/ListSettingFragment;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 510
    .local v0, "ft":Landroid/app/FragmentTransaction;
    const v2, 0x7f060001

    const v3, 0x7f060003

    const v4, 0x7f060002

    const/high16 v5, 0x7f060000

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/app/FragmentTransaction;

    .line 511
    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mLayoutRes:I

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 512
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 513
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 514
    return-void
.end method

.method protected onLaunchTimerFragment()V
    .locals 6

    .prologue
    .line 517
    const-string v2, "CameraSettingActivity"

    const-string v3, "onLaunchTimerFragment"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    invoke-static {v2}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->newInstance(Lcom/sec/android/app/camera/setting/CameraSettingsImpl;)Lcom/sec/android/app/camera/setting/TimerSettingFragment;

    move-result-object v1

    .line 520
    .local v1, "timerFragment":Lcom/sec/android/app/camera/setting/TimerSettingFragment;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 521
    .local v0, "ft":Landroid/app/FragmentTransaction;
    const v2, 0x7f060001

    const v3, 0x7f060003

    const v4, 0x7f060002

    const/high16 v5, 0x7f060000

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/app/FragmentTransaction;

    .line 522
    iget v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mLayoutRes:I

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 523
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 524
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 525
    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 6
    .param p1, "isInMultiWindowMode"    # Z

    .prologue
    const/4 v5, 0x0

    .line 217
    invoke-super {p0, p1}, Landroid/app/Activity;->onMultiWindowModeChanged(Z)V

    .line 218
    if-eqz p1, :cond_0

    .line 219
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a01d6

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a021c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 220
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->finish()V

    .line 222
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 226
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_1

    .line 227
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 228
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const v2, 0x7f0a021c

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(I)V

    .line 229
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStackImmediate()Z

    .line 236
    :goto_0
    return v0

    .line 232
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->finish()V

    goto :goto_0

    .line 236
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 241
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 242
    const-string v0, "CameraSettingActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mMenuDimController:Lcom/sec/android/app/camera/DimController;

    if-eqz v0, :cond_1

    .line 245
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isAttachVideoMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isAttachImageMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mMenuDimController:Lcom/sec/android/app/camera/DimController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/DimController;->restoreUserSettingValues()V

    .line 249
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mTalkbackContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 250
    return-void
.end method

.method public onResolutionSelect(II)V
    .locals 9
    .param p1, "newResolution"    # I
    .param p2, "listType"    # I

    .prologue
    const/16 v8, 0xbb9

    .line 254
    const-string v5, "CameraSettingActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onResolutionSelect resolution : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " listType : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const/4 v4, 0x0

    .line 256
    .local v4, "resolutionPreference":Lcom/sec/android/app/camera/setting/SettingPreference;
    const/16 v3, 0x63

    .line 257
    .local v3, "menuId":I
    const/4 v2, 0x0

    .line 258
    .local v2, "featureId":Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 318
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 319
    invoke-static {v3, p1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v5

    invoke-static {v5}, Lcom/sec/android/app/camera/command/CmdIdStringMapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 321
    .local v1, "extraValue":Ljava/lang/String;
    invoke-static {v2, v1}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 322
    .local v0, "cv":Landroid/content/ContentValues;
    invoke-static {p0, v0}, Lcom/sec/android/app/camera/util/Util;->broadcastGeneralEventForLogging(Landroid/content/Context;Landroid/content/ContentValues;)V

    .line 325
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v1    # "extraValue":Ljava/lang/String;
    :cond_1
    return-void

    .line 260
    :pswitch_0
    const-string v5, "pref_camera_rear_resolution_key"

    invoke-static {p0, v5, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 261
    const-string v5, "pref_camera_dual_rear_resolution_key"

    invoke-static {p0, v5, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 263
    iget-object v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mPreferenceFragment:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    const-string v6, "camera_resolution_rear"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .end local v4    # "resolutionPreference":Lcom/sec/android/app/camera/setting/SettingPreference;
    check-cast v4, Lcom/sec/android/app/camera/setting/SettingPreference;

    .line 264
    .restart local v4    # "resolutionPreference":Lcom/sec/android/app/camera/setting/SettingPreference;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getPictureSizeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/setting/SettingPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 265
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/sec/android/app/camera/util/Util;->getPictureSizeStringForTTS(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/setting/SettingPreference;->setSummaryDescription(Ljava/lang/String;)V

    .line 267
    iget-object v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    const-string v6, "pref_camera_rear_resolution_key"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getMenuIdByPreferenceKey(Ljava/lang/String;)I

    move-result v3

    .line 268
    const-string v5, "pref_camera_rear_resolution_key"

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getFeatureValueByPreferenceKeyForLogging(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 269
    goto :goto_0

    .line 271
    :pswitch_1
    iget-object v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isDualFrontCamera()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 272
    const-string v5, "pref_camera_dual_front_resolution_key"

    invoke-static {p0, v5, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 278
    :goto_1
    iget-object v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mPreferenceFragment:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    const-string v6, "camera_resolution_front"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .end local v4    # "resolutionPreference":Lcom/sec/android/app/camera/setting/SettingPreference;
    check-cast v4, Lcom/sec/android/app/camera/setting/SettingPreference;

    .line 279
    .restart local v4    # "resolutionPreference":Lcom/sec/android/app/camera/setting/SettingPreference;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getPictureSizeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/setting/SettingPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 280
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/sec/android/app/camera/util/Util;->getPictureSizeStringForTTS(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/setting/SettingPreference;->setSummaryDescription(Ljava/lang/String;)V

    .line 282
    iget-object v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    const-string v6, "pref_camera_front_resolution_key"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getMenuIdByPreferenceKey(Ljava/lang/String;)I

    move-result v3

    .line 283
    const-string v5, "pref_camera_rear_resolution_key"

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getFeatureValueByPreferenceKeyForLogging(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 284
    goto/16 :goto_0

    .line 274
    :cond_2
    const-string v5, "pref_camera_front_resolution_key"

    invoke-static {p0, v5, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 275
    const-string v5, "pref_camera_dual_front_resolution_key"

    invoke-static {p0, v5, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_1

    .line 286
    :pswitch_2
    iget-object v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isDualBackCamera()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 287
    const-string v5, "pref_camcorder_dual_resolution_key"

    invoke-static {p0, v5, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 291
    :goto_2
    iget-object v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mPreferenceFragment:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    const-string v6, "camcorder_resolution_rear"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .end local v4    # "resolutionPreference":Lcom/sec/android/app/camera/setting/SettingPreference;
    check-cast v4, Lcom/sec/android/app/camera/setting/SettingPreference;

    .line 292
    .restart local v4    # "resolutionPreference":Lcom/sec/android/app/camera/setting/SettingPreference;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getVideoSizeFullString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/setting/SettingPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 293
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/sec/android/app/camera/util/Util;->getVideoSizeStringForTTS(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/setting/SettingPreference;->setSummaryDescription(Ljava/lang/String;)V

    .line 295
    iget-object v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mPreferenceFragment:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    invoke-virtual {v5, v4}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->checkCurrentPreferenceDependency(Landroid/preference/Preference;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 296
    iget-object v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mMenuDimController:Lcom/sec/android/app/camera/DimController;

    invoke-virtual {v5, v8, p1}, Lcom/sec/android/app/camera/DimController;->setButtonDim(II)V

    .line 297
    iget-object v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mPreferenceFragment:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->refreshMenu()V

    goto/16 :goto_0

    .line 289
    :cond_3
    const-string v5, "pref_camcorder_rear_resolution_key"

    invoke-static {p0, v5, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_2

    .line 301
    :pswitch_3
    iget-object v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isDualFrontCamera()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 302
    const-string v5, "pref_camcorder_dual_resolution_key"

    invoke-static {p0, v5, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 306
    :goto_3
    iget-object v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mPreferenceFragment:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    const-string v6, "camcorder_resolution_front"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .end local v4    # "resolutionPreference":Lcom/sec/android/app/camera/setting/SettingPreference;
    check-cast v4, Lcom/sec/android/app/camera/setting/SettingPreference;

    .line 307
    .restart local v4    # "resolutionPreference":Lcom/sec/android/app/camera/setting/SettingPreference;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getVideoSizeFullString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/setting/SettingPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 308
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/sec/android/app/camera/util/Util;->getVideoSizeStringForTTS(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/setting/SettingPreference;->setSummaryDescription(Ljava/lang/String;)V

    .line 310
    iget-object v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mPreferenceFragment:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    invoke-virtual {v5, v4}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->checkCurrentPreferenceDependency(Landroid/preference/Preference;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 311
    iget-object v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mMenuDimController:Lcom/sec/android/app/camera/DimController;

    invoke-virtual {v5, v8, p1}, Lcom/sec/android/app/camera/DimController;->setButtonDim(II)V

    .line 312
    iget-object v5, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mPreferenceFragment:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->refreshMenu()V

    goto/16 :goto_0

    .line 304
    :cond_4
    const-string v5, "pref_camcorder_front_resolution_key"

    invoke-static {p0, v5, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_3

    .line 258
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

    .line 329
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 330
    const-string v2, "CameraSettingActivity"

    const-string v3, "onResume"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    iget-boolean v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mIsFromApplicationSettings:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->isInMultiWindowMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 332
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a01d6

    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a021c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 333
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->finish()V

    .line 336
    :cond_0
    iget-boolean v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mIsFromSecureLocationSetting:Z

    if-eqz v2, :cond_2

    .line 337
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->isNetworkProviderEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 338
    invoke-virtual {p0, v7}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->setGPS(Z)V

    .line 339
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mPreferenceFragment:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    if-eqz v2, :cond_1

    .line 340
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mPreferenceFragment:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    const/16 v3, 0x19f

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->showCameraDialog(I)V

    .line 343
    :cond_1
    iput-boolean v7, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mIsFromSecureLocationSetting:Z

    .line 346
    :cond_2
    iget-boolean v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mNeedToShowLocationDialog:Z

    if-eqz v2, :cond_4

    .line 347
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mPreferenceFragment:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    if-eqz v2, :cond_3

    .line 348
    iget-object v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mPreferenceFragment:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isChinaFeature()Z

    move-result v2

    if-eqz v2, :cond_9

    const/16 v2, 0x1a3

    :goto_0
    invoke-virtual {v3, v2}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->showCameraDialog(I)V

    .line 350
    :cond_3
    iput-boolean v7, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mNeedToShowLocationDialog:Z

    .line 353
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isSecureCamera()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 354
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v3, 0x80000

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 357
    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mPreferenceFragment:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    if-eqz v2, :cond_6

    .line 358
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mPreferenceFragment:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    const-string v3, "pref_global_camera_quick_shot"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    .line 359
    .local v0, "quickLaunchPref":Landroid/preference/SwitchPreference;
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 360
    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "double_tab_launch"

    invoke-static {v2, v3, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_a

    .line 362
    invoke-virtual {v0, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 370
    .end local v0    # "quickLaunchPref":Landroid/preference/SwitchPreference;
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "fromApplicationSettings"

    invoke-virtual {v2, v3, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    if-eqz v2, :cond_7

    .line 371
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-ne v2, v8, :cond_b

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isKeyboardCoverCamera()Z

    move-result v2

    if-nez v2, :cond_b

    .line 372
    const-string v2, "CameraSettingActivity"

    const-string v3, "Mobile Keyboard mounted, finish"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->finish()V

    .line 380
    :cond_7
    :goto_2
    const-string v2, "touch_exploration_enabled"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 381
    .local v1, "talkBackEnabledURI":Landroid/net/Uri;
    if-eqz v1, :cond_8

    .line 382
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mTalkbackContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v1, v8, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 384
    :cond_8
    return-void

    .line 348
    .end local v1    # "talkBackEnabledURI":Landroid/net/Uri;
    :cond_9
    const/16 v2, 0x1a2

    goto/16 :goto_0

    .line 363
    .restart local v0    # "quickLaunchPref":Landroid/preference/SwitchPreference;
    :cond_a
    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "double_tab_launch"

    invoke-static {v2, v3, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v8, :cond_6

    .line 365
    invoke-virtual {v0, v8}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_1

    .line 374
    .end local v0    # "quickLaunchPref":Landroid/preference/SwitchPreference;
    :cond_b
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

    .line 375
    const-string v2, "CameraSettingActivity"

    const-string v3, "Mobile Keyboard unmounted, finish"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->finish()V

    goto :goto_2
.end method

.method public onTimerSelect(I)V
    .locals 5
    .param p1, "newTimer"    # I

    .prologue
    .line 388
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

    .line 389
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    invoke-virtual {v2, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setTimer(I)V

    .line 390
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0009

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

    .line 391
    .local v1, "timerSummary":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mPreferenceFragment:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    const-string v3, "timer"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/setting/SettingPreference;

    .line 392
    .local v0, "settingPreference":Lcom/sec/android/app/camera/setting/SettingPreference;
    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/SettingPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 393
    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/SettingPreference;->setSummaryDescription(Ljava/lang/String;)V

    .line 394
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mPreferenceFragment:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->refreshMenu()V

    .line 395
    return-void
.end method

.method public resetSetting()V
    .locals 3

    .prologue
    .line 398
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->clearPreferences(Landroid/content/Context;)V

    .line 400
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_QUICK_LAUNCH:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isOwner()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    const-string v0, "CameraSettingActivity"

    const-string v1, "update setting db for double tab launch as default value"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "double_tab_launch"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 405
    :cond_0
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->setResult(I)V

    .line 406
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->finish()V

    .line 407
    return-void
.end method

.method public setGPS(Z)V
    .locals 1
    .param p1, "gps"    # Z

    .prologue
    .line 410
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mPreferenceFragment:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mPreferenceFragment:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->setGPS(Z)V

    .line 412
    :cond_0
    return-void
.end method

.method public setHighAccuracyLocationMode()V
    .locals 3

    .prologue
    .line 415
    const-string v0, "CameraSettingActivity"

    const-string v1, "setHighAccuracyLocationMode"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_mode"

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 417
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->mIsFromSecureLocationSetting:Z

    .line 418
    return-void
.end method

.method public startContactUsActivity()V
    .locals 7

    .prologue
    .line 424
    const-string v3, "com.sec.android.app.camera"

    .line 425
    .local v3, "packageName":Ljava/lang/String;
    const-string v0, "dsd5xe2604"

    .line 426
    .local v0, "appId":Ljava/lang/String;
    const-string v1, "Camera"

    .line 428
    .local v1, "appName":Ljava/lang/String;
    const-string v4, "voc://view/contactUs"

    .line 429
    .local v4, "url":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 430
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "packageName"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 431
    const-string v5, "appId"

    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 432
    const-string v5, "appName"

    invoke-virtual {v2, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 434
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 435
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->startActivity(Landroid/content/Intent;)V

    .line 437
    :cond_0
    return-void
.end method
