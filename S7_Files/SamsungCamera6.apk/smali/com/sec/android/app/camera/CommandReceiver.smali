.class public Lcom/sec/android/app/camera/CommandReceiver;
.super Ljava/lang/Object;
.source "CommandReceiver.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/CommandInterface;


# static fields
.field private static final TAG:Ljava/lang/String; = "CommandReceiver"


# instance fields
.field private mCameraContext:Lcom/sec/android/app/camera/Camera;

.field private mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

.field private mShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;


# direct methods
.method protected constructor <init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/interfaces/CameraSettings;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;)V
    .locals 1
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "settings"    # Lcom/sec/android/app/camera/interfaces/CameraSettings;
    .param p3, "engine"    # Lcom/sec/android/app/camera/interfaces/Engine;
    .param p4, "shootingMode"    # Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object v0, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    .line 53
    iput-object v0, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 54
    iput-object v0, p0, Lcom/sec/android/app/camera/CommandReceiver;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 55
    iput-object v0, p0, Lcom/sec/android/app/camera/CommandReceiver;->mShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;

    .line 58
    iput-object p1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    .line 59
    iput-object p3, p0, Lcom/sec/android/app/camera/CommandReceiver;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 60
    iput-object p2, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 61
    iput-object p4, p0, Lcom/sec/android/app/camera/CommandReceiver;->mShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;

    .line 62
    return-void
.end method

.method private setSeparatedShootingMode(ILjava/lang/String;)V
    .locals 6
    .param p1, "commandId"    # I
    .param p2, "separatedShootingModeName"    # Ljava/lang/String;

    .prologue
    .line 680
    invoke-static {p1, p2}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->checkShootingModeVersion(ILjava/lang/String;)Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$VersionErrors;

    move-result-object v0

    .line 682
    .local v0, "error":Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$VersionErrors;
    sget-object v3, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$VersionErrors;->NO_ERROR:Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$VersionErrors;

    if-eq v0, v3, :cond_0

    .line 683
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/CommandReceiver;->showShootingModeVersionDialog(Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$VersionErrors;)V

    .line 695
    :goto_0
    return-void

    .line 687
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSecureCamera()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/Util;->isSecureKeyguardLocked(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 688
    invoke-static {p1, p2}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->getShootingMode(ILjava/lang/String;)Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;

    move-result-object v2

    .line 689
    .local v2, "mode":Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 690
    .local v1, "message":Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    const/16 v4, 0x1d9

    iget-object v5, v2, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;->modeTitle:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v1}, Lcom/sec/android/app/camera/Camera;->showCameraDialog(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 694
    .end local v1    # "message":Ljava/lang/String;
    .end local v2    # "mode":Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3, p1, p2}, Lcom/sec/android/app/camera/Camera;->startSeparatedShootingMode(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private setShootingMode(I)V
    .locals 3
    .param p1, "shootingMode"    # I

    .prologue
    .line 703
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_DOWNLOAD_SHOOTING_MODES:Z

    if-eqz v1, :cond_0

    .line 705
    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCommandIdByShootingMode(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->checkShootingModeVersion(ILjava/lang/String;)Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$VersionErrors;

    move-result-object v0

    .line 708
    .local v0, "error":Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$VersionErrors;
    sget-object v1, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$VersionErrors;->NO_ERROR:Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$VersionErrors;

    if-eq v1, v0, :cond_0

    .line 709
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/CommandReceiver;->showShootingModeVersionDialog(Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$VersionErrors;)V

    .line 714
    .end local v0    # "error":Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$VersionErrors;
    :goto_0
    return-void

    .line 713
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/Camera;->handleShootingModeChanged(I)V

    goto :goto_0
.end method

.method private showShootingModeVersionDialog(Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$VersionErrors;)V
    .locals 2
    .param p1, "error"    # Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$VersionErrors;

    .prologue
    .line 722
    sget-object v0, Lcom/sec/android/app/camera/CommandReceiver$1;->$SwitchMap$com$sec$android$app$camera$plugin$PlugInShootingModesStorage$VersionErrors:[I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$VersionErrors;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 735
    :goto_0
    return-void

    .line 724
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->showCameraDialog(I)V

    goto :goto_0

    .line 728
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->showCameraDialog(I)V

    goto :goto_0

    .line 722
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public onBeautyMenuSelect(I)Z
    .locals 2
    .param p1, "beautyMode"    # I

    .prologue
    .line 66
    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setBeautyMode(I)V

    .line 67
    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 68
    const/4 v0, 0x0

    .line 69
    .local v0, "shapeCorrectionMode":I
    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShapeCorrection()I

    move-result v1

    if-nez v1, :cond_1

    .line 70
    const/4 v0, 0x1

    .line 74
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setShapeCorrection(I)V

    .line 75
    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/Camera;->handleShapeCorrectionModeChanged(I)V

    .line 77
    .end local v0    # "shapeCorrectionMode":I
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 72
    .restart local v0    # "shapeCorrectionMode":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDualEffectMenuSelect(I)Z
    .locals 2
    .param p1, "effect"    # I

    .prologue
    const/16 v1, 0x5a

    .line 82
    iget-object v0, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraDualEffect()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 83
    const/4 v0, 0x0

    .line 91
    :goto_0
    return v0

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraDualEffect(I)V

    .line 87
    iget-object v0, p0, Lcom/sec/android/app/camera/CommandReceiver;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/Engine;->setDualEffectSync(I)V

    .line 89
    iget-object v0, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/Camera;->setButtonDim(II)V

    .line 90
    iget-object v0, p0, Lcom/sec/android/app/camera/CommandReceiver;->mShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;

    invoke-interface {v0, v1, p1}, Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;->onMenuSelected(II)Z

    .line 91
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onEffectDownloadMenuCommand()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 96
    iget-object v4, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "com.sec.android.app.samsungapps"

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->isPkgEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 97
    iget-object v3, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    const-string v4, "com.sec.android.app.samsungapps"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->showApplicationDisabledPopup(Ljava/lang/String;)V

    .line 121
    :cond_0
    :goto_0
    return v2

    .line 100
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSecureCamera()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/camera/util/Util;->isSecureKeyguardLocked(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 101
    iget-object v2, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    const/16 v4, 0x1da

    invoke-virtual {v2, v4}, Lcom/sec/android/app/camera/Camera;->showCameraDialog(I)V

    move v2, v3

    .line 102
    goto :goto_0

    .line 105
    :cond_2
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isOwner()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 110
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 111
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "samsungapps://SubCategoryList/0000005082"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 112
    const v4, 0x4000020

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 114
    iget-object v4, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    iget-object v2, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/MenuManager;->processBack()V

    move v2, v3

    .line 121
    goto :goto_0

    .line 115
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    iget-object v3, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    const v4, 0x7f0a010b

    invoke-static {v3, v4, v2}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 117
    const-string v3, "CommandReceiver"

    const-string v4, "onEffectDownloadMenuCommand - Activity is not installed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onFoodBlurTypeSelect(I)Z
    .locals 1
    .param p1, "foodBlurType"    # I

    .prologue
    .line 126
    iget-object v0, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->collapseMenu()V

    .line 127
    iget-object v0, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->resetTouchFocus()V

    .line 128
    iget-object v0, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFoodBlurType(I)V

    .line 129
    const/4 v0, 0x1

    return v0
.end method

.method public onHelpHubSelect()Z
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/sec/android/app/camera/CommandReceiver;->mShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    const-string v0, "CommandReceiver"

    const-string v1, "return isCapturing.."

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const/4 v0, 0x0

    .line 140
    :goto_0
    return v0

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->showHelpHub(Landroid/content/Context;)V

    .line 140
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onISOSelect(I)Z
    .locals 1
    .param p1, "iso"    # I

    .prologue
    .line 145
    iget-object v0, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraISO(I)V

    .line 146
    const/4 v0, 0x1

    return v0
.end method

.method public onLaunchMenu(I)Z
    .locals 4
    .param p1, "commandId"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 151
    iget-object v3, p0, Lcom/sec/android/app/camera/CommandReceiver;->mShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;->isCapturing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 152
    iget-object v2, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0a01e5

    invoke-static {v2, v3, v1}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 153
    const-string v2, "CommandReceiver"

    const-string v3, "return isCapturing.."

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :goto_0
    return v1

    .line 156
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/camera/CommandReceiver;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/Engine;->isPreviewStarted()Z

    move-result v3

    if-nez v3, :cond_1

    .line 157
    const-string v2, "CommandReceiver"

    const-string v3, "preview is not ready"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 161
    :cond_1
    const/16 v0, 0x63

    .line 163
    .local v0, "changedCommandId":I
    sparse-switch p1, :sswitch_data_0

    :goto_1
    move v1, v2

    .line 244
    goto :goto_0

    .line 165
    :sswitch_0
    iget-object v3, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 166
    iget-object v3, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->resetTouchFocus()V

    .line 167
    iget-object v3, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v3

    invoke-interface {v3, p1, v1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->showMenu(IZ)Lcom/sec/android/app/camera/interfaces/MenuBase;

    goto :goto_1

    .line 169
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->hideMenu(I)V

    goto :goto_1

    .line 183
    :sswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 184
    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->showMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    goto :goto_1

    .line 186
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->hideMenu(I)V

    goto :goto_1

    .line 190
    :sswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 191
    const/16 v0, 0x64

    .line 196
    :goto_2
    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(I)Z

    move-result v1

    if-nez v1, :cond_5

    .line 197
    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->showMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    goto :goto_1

    .line 193
    :cond_4
    const/4 v0, 0x2

    goto :goto_2

    .line 199
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->processBack()V

    goto :goto_1

    .line 204
    :sswitch_3
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_GPU_EFFECT:Z

    if-eqz v1, :cond_8

    .line 205
    const/16 v0, 0x7f

    .line 206
    invoke-static {}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isFilterLoaded()Z

    move-result v1

    if-nez v1, :cond_6

    .line 207
    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {v1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->instance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->loadExternalFilters()Z

    .line 217
    :cond_6
    :goto_3
    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(I)Z

    move-result v1

    if-nez v1, :cond_a

    .line 218
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_GPU_EFFECT:Z

    if-eqz v1, :cond_7

    .line 219
    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->startThumbnailPreviewCallback()V

    .line 221
    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->showMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    goto/16 :goto_1

    .line 210
    :cond_8
    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 211
    const/16 v0, 0x66

    goto :goto_3

    .line 212
    :cond_9
    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 213
    const/16 v0, 0x8

    goto :goto_3

    .line 223
    :cond_a
    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->hideMenu(I)V

    goto/16 :goto_1

    .line 227
    :sswitch_4
    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoCollageType()I

    move-result v1

    if-eq v1, v2, :cond_b

    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 228
    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoCollageType()I

    move-result v1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_b

    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 229
    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoCollageType()I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_c

    .line 230
    :cond_b
    const/16 v0, 0x85

    .line 235
    :goto_4
    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(I)Z

    move-result v1

    if-nez v1, :cond_d

    .line 236
    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->showMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    goto/16 :goto_1

    .line 232
    :cond_c
    const/16 v0, 0x84

    goto :goto_4

    .line 238
    :cond_d
    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->hideMenu(I)V

    goto/16 :goto_1

    .line 163
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_2
        0x8 -> :sswitch_3
        0x12 -> :sswitch_1
        0x5a -> :sswitch_1
        0x71 -> :sswitch_1
        0x75 -> :sswitch_1
        0x77 -> :sswitch_0
        0x7d -> :sswitch_1
        0x7f -> :sswitch_3
        0x80 -> :sswitch_1
        0x81 -> :sswitch_1
        0x82 -> :sswitch_1
        0x83 -> :sswitch_1
        0x84 -> :sswitch_4
        0x96 -> :sswitch_1
        0x232f -> :sswitch_1
    .end sparse-switch
.end method

.method public onMoreSettingSelect()Z
    .locals 10

    .prologue
    const/16 v9, 0x78

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 249
    const-string v7, "CommandReceiver"

    const-string v8, "onMoreSettingSelect"

    invoke-static {v7, v8}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v7, p0, Lcom/sec/android/app/camera/CommandReceiver;->mShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;->isCapturing()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 252
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    const v7, 0x7f0a01e5

    invoke-static {v6, v7, v5}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 253
    const-string v6, "CommandReceiver"

    const-string v7, "return isCapturing.."

    invoke-static {v6, v7}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :goto_0
    return v5

    .line 257
    :cond_0
    iget-object v7, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->isSettingLaunching()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 258
    const-string v6, "CommandReceiver"

    const-string v7, "returning because it is launch setting"

    invoke-static {v6, v7}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 262
    :cond_1
    iget-object v7, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->isFinishing()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 263
    const-string v6, "CommandReceiver"

    const-string v7, "returning because camera is finished"

    invoke-static {v6, v7}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 266
    :cond_2
    iget-object v5, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5, v6}, Lcom/sec/android/app/camera/Camera;->setSettingLaunched(Z)V

    .line 268
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    iget-object v5, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getContext()Landroid/content/Context;

    move-result-object v5

    const-class v7, Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-direct {v3, v5, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 270
    .local v3, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 271
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v5, "setting"

    sget-object v7, Lcom/sec/android/app/camera/Camera;->mSetting:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    invoke-virtual {v0, v5, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 272
    const-string v5, "dim"

    iget-object v7, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->getDimController()Lcom/sec/android/app/camera/DimController;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 273
    const-string v5, "camera-parcel"

    invoke-virtual {v3, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 275
    iget-object v5, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Lcom/sec/android/app/camera/Camera;->setCameraPausingForSetting(Z)V

    .line 276
    iget-object v5, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const/16 v7, 0x7e6

    invoke-virtual {v5, v3, v7}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_3
    :goto_1
    iget-object v5, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5, v9, v9}, Lcom/sec/android/app/camera/Camera;->sendBroadcastChangeSettings(II)V

    move v5, v6

    .line 287
    goto :goto_0

    .line 277
    :catch_0
    move-exception v2

    .line 278
    .local v2, "e":Landroid/content/ActivityNotFoundException;
    const-string v5, "CommandReceiver"

    const-string v7, "onMoreSettingSelect - CameraSettingActivity not found"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    new-instance v1, Landroid/content/ComponentName;

    const-string v5, "com.sec.android.app.camera"

    const-string v7, "com.sec.android.app.camera.setting.CameraSettingActivity"

    invoke-direct {v1, v5, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    .local v1, "cn":Landroid/content/ComponentName;
    iget-object v5, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 282
    .local v4, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v4, v1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v5

    if-eq v5, v6, :cond_3

    .line 283
    invoke-virtual {v4, v1, v6, v6}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    goto :goto_1
.end method

.method public onRecordingMotionSpeedMenuSelect(I)Z
    .locals 2
    .param p1, "motionSpeed"    # I

    .prologue
    .line 292
    iget-object v0, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->collapseMenu()V

    .line 293
    iget-object v0, p0, Lcom/sec/android/app/camera/CommandReceiver;->mShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;

    const/16 v1, 0x170d

    invoke-interface {v0, v1, p1}, Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;->onMenuSelected(II)Z

    move-result v0

    return v0
.end method

.method public onShootingModeDownloadCommand()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 298
    iget-object v3, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "com.sec.android.app.samsungapps"

    invoke-static {v3, v4}, Lcom/sec/android/app/camera/util/Util;->isPkgEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 299
    iget-object v2, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    const-string v3, "com.sec.android.app.samsungapps"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->showApplicationDisabledPopup(Ljava/lang/String;)V

    .line 300
    const/4 v2, 0x0

    .line 316
    :goto_0
    return v2

    .line 303
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSecureCamera()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/Util;->isSecureKeyguardLocked(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 304
    iget-object v3, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    const/16 v4, 0x1db

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->showCameraDialog(I)V

    goto :goto_0

    .line 309
    :cond_1
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 310
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "samsungapps://CategoryList/0000004068"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 311
    const v3, 0x4000020

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 312
    iget-object v3, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 313
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 314
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v3, "CommandReceiver"

    const-string v4, "onShootingModeDownloadCommand - Activity is not installed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onShootingModeMenuSelect(ILjava/lang/String;)Z
    .locals 4
    .param p1, "shootingMode"    # I
    .param p2, "shootingModeName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 321
    iget-object v3, p0, Lcom/sec/android/app/camera/CommandReceiver;->mShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;->isChangingShootingModeDisabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 322
    const-string v2, "CommandReceiver"

    const-string v3, "return changing shooting mode is disabled.."

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :goto_0
    return v1

    .line 326
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/camera/CommandReceiver;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/Engine;->isSwitchingCamera()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 327
    const-string v2, "CommandReceiver"

    const-string v3, "return isSwitchingCamera.."

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 331
    :cond_1
    invoke-static {v2, p1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v0

    .line 332
    .local v0, "commandId":I
    invoke-static {v0}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesLoader;->isSeparatedShootingMode(I)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesLoader;->isSeparatedAndPreloadedShootingMode(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 333
    :cond_2
    invoke-direct {p0, v0, p2}, Lcom/sec/android/app/camera/CommandReceiver;->setSeparatedShootingMode(ILjava/lang/String;)V

    :goto_1
    move v1, v2

    .line 337
    goto :goto_0

    .line 335
    :cond_3
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CommandReceiver;->setShootingMode(I)V

    goto :goto_1
.end method

.method public onSingleEffectMenuSelect(IZ)Z
    .locals 7
    .param p1, "effect"    # I
    .param p2, "itemSelected"    # Z

    .prologue
    const/16 v6, 0x8

    .line 342
    iget-object v3, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraSingleEffect()I

    move-result v3

    if-eq v3, p1, :cond_2

    .line 343
    iget-object v3, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3, p1}, Lcom/sec/android/app/camera/Camera;->handleEffectModeChanged(I)V

    .line 345
    if-nez p1, :cond_0

    .line 346
    iget-object v3, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    const/16 v4, 0x57

    iget-object v5, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getAutoNightDetectionMode()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/camera/Camera;->setButtonDim(II)V

    .line 352
    :cond_0
    sget-boolean v3, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_GPU_EFFECT:Z

    if-eqz v3, :cond_4

    .line 353
    iget-object v3, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {v3}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->instance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->getExternalEffects()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 354
    iget-object v3, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {v3}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->instance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->loadExternalFilters()Z

    move-result v3

    if-nez v3, :cond_1

    .line 355
    const/4 v3, 0x0

    .line 377
    :goto_0
    return v3

    .line 358
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget-object v4, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v4

    invoke-interface {v3, v6, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFeatureValueByCommandIdForLogging(IZ)Ljava/lang/String;

    move-result-object v0

    .line 359
    .local v0, "featureID":Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEffectNameForLogging(I)Ljava/lang/String;

    move-result-object v2

    .line 364
    .local v2, "settingID":Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3, v0, v2}, Lcom/sec/android/app/camera/Camera;->sendBroadcastChangeSettings(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    .end local v0    # "featureID":Ljava/lang/String;
    .end local v2    # "settingID":Ljava/lang/String;
    :cond_2
    if-eqz p2, :cond_3

    .line 369
    sget-boolean v3, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_GPU_EFFECT:Z

    if-eqz v3, :cond_3

    .line 370
    const/16 v1, 0x7f

    .line 371
    .local v1, "menuId":I
    iget-object v3, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 372
    iget-object v3, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->hideMenu(I)V

    .line 377
    .end local v1    # "menuId":I
    :cond_3
    const/4 v3, 0x1

    goto :goto_0

    .line 361
    :cond_4
    iget-object v3, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget-object v4, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v4

    invoke-interface {v3, v6, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFeatureValueByCommandIdForLogging(IZ)Ljava/lang/String;

    move-result-object v0

    .line 362
    .restart local v0    # "featureID":Ljava/lang/String;
    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraParameters;->getEffectString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "settingID":Ljava/lang/String;
    goto :goto_1
.end method

.method public onSwitchCameraSelect()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 382
    const-string v1, "CommandReceiver"

    const-string v2, "onSwitchCameraSelect"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isPreviewStarted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 385
    const-string v1, "CommandReceiver"

    const-string v2, "return isStartPreview.."

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :goto_0
    return v0

    .line 389
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->isLaunchGallery()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 390
    const-string v1, "CommandReceiver"

    const-string v2, "return isLaunchGallery.."

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 394
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->hasWindowFocus()Z

    move-result v1

    if-nez v1, :cond_2

    .line 395
    const-string v1, "CommandReceiver"

    const-string v2, "return camera has no window focus.."

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 399
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isTimerCounting()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 400
    const-string v1, "CommandReceiver"

    const-string v2, "return isTimerCounting.."

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 404
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;->isActivated()Z

    move-result v1

    if-nez v1, :cond_4

    .line 405
    const-string v1, "CommandReceiver"

    const-string v2, "return shootingMode is not activated.."

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 409
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;->isChangingShootingModeDisabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 410
    const-string v1, "CommandReceiver"

    const-string v2, "return changing shooting mode is disabled.."

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 414
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;->isCapturing()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 415
    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0a01e5

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 416
    const-string v1, "CommandReceiver"

    const-string v2, "return isCapturing.."

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 420
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecording()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->isPreviewChangingAnimationRunning()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 421
    :cond_7
    const-string v1, "CommandReceiver"

    const-string v2, "return isRecording or isPreviewChangingAnimationRunning"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 425
    :cond_8
    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->isDefaultPageSelected()Z

    move-result v1

    if-nez v1, :cond_9

    .line 426
    const-string v1, "CommandReceiver"

    const-string v2, "return BaseMenu has no focus"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 430
    :cond_9
    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->isOverlayHelpShowing()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 431
    const-string v1, "CommandReceiver"

    const-string v2, "return overlayHelp menu is showing"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 435
    :cond_a
    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isSwitchingCamera()Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->isCameraSwitchingAnimationRunning()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 436
    :cond_b
    const-string v1, "CommandReceiver"

    const-string v2, "Switch camera is now in progress."

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 440
    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->collapseMenu()V

    .line 441
    iget-object v0, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->onSwitchCameraSelected()V

    .line 442
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public onToggleSelect(I)Z
    .locals 11
    .param p1, "menuId"    # I

    .prologue
    const v10, 0x7f0a01c3

    const/16 v9, 0x91

    const/16 v8, 0xc

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 447
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/Engine;->isPreviewStarted()Z

    move-result v6

    if-nez v6, :cond_0

    .line 448
    const-string v5, "CommandReceiver"

    const-string v6, "return isStartPreview.."

    invoke-static {v5, v6}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    :goto_0
    return v4

    .line 452
    :cond_0
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->isLaunchGallery()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 453
    const-string v5, "CommandReceiver"

    const-string v6, "return isLaunchGallery.."

    invoke-static {v5, v6}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 457
    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;->isCapturing()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 458
    iget-object v5, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    const v6, 0x7f0a01e5

    invoke-static {v5, v6, v4}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 459
    const-string v5, "CommandReceiver"

    const-string v6, "return isCapturing.."

    invoke-static {v5, v6}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 463
    :cond_2
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecording()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 464
    const-string v5, "CommandReceiver"

    const-string v6, "return isRecording.."

    invoke-static {v5, v6}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 468
    :cond_3
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/Engine;->isAutoFocusing()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 469
    const-string v5, "CommandReceiver"

    const-string v6, "return isAutoFocusing.."

    invoke-static {v5, v6}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 473
    :cond_4
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v6

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/MenuManager;->collapseMenu()V

    .line 475
    const/4 v2, 0x0

    .line 476
    .local v2, "firstModeId":I
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    move-result-object v6

    invoke-static {p1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    .line 477
    .local v3, "lastModeId":I
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSettingValue(I)I

    move-result v0

    .line 478
    .local v0, "currentModeId":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "currentModeId":I
    .local v1, "currentModeId":I
    if-lt v0, v3, :cond_16

    .line 479
    move v0, v2

    .line 482
    .end local v1    # "currentModeId":I
    .restart local v0    # "currentModeId":I
    :goto_1
    sparse-switch p1, :sswitch_data_0

    :goto_2
    move v4, v5

    .line 635
    goto :goto_0

    .line 485
    :sswitch_0
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getLowBatteryStatus()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 486
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFlashMode(I)V

    .line 487
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    const v7, 0x7f0a01e4

    invoke-static {v6, v7, v4}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 488
    goto/16 :goto_0

    .line 490
    :cond_5
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isTemperatureHighToUseFlash()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 491
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFlashMode(I)V

    .line 492
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    const v7, 0x7f0a023d

    invoke-static {v6, v7, v4}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 493
    goto/16 :goto_0

    .line 495
    :cond_6
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isTemperatureLowToUseFlash()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 496
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFlashMode(I)V

    .line 497
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {v6, v10, v4}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 498
    goto/16 :goto_0

    .line 500
    :cond_7
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShutterSpeed()I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_8

    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShutterSpeed()I

    move-result v6

    const/16 v7, 0x1d

    if-ge v6, v7, :cond_8

    .line 501
    if-ne v0, v5, :cond_8

    .line 502
    add-int/lit8 v0, v0, 0x1

    if-le v0, v3, :cond_8

    .line 503
    move v0, v2

    .line 508
    :cond_8
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/Engine;->isTouchAEProcessing()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 509
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/Engine;->removeAfRequest()V

    .line 510
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6, v5}, Lcom/sec/android/app/camera/Camera;->resetTouchAE(Z)V

    .line 513
    :cond_9
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/Engine;->isAutoFocusing()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 514
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelAutoFocus()V

    .line 517
    :cond_a
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->isTouchAutoFocusActive()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 518
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->resetTouchFocus()V

    .line 521
    :cond_b
    if-ne v0, v5, :cond_c

    .line 522
    iget-object v4, p0, Lcom/sec/android/app/camera/CommandReceiver;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v4, v5}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFlashAutoCallback(Z)V

    .line 526
    :goto_3
    iget-object v4, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFlashMode(I)V

    .line 527
    iget-object v4, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    const-string v6, "Z107"

    const/4 v7, 0x3

    invoke-static {v7, v0}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v7

    invoke-static {v7}, Lcom/sec/android/app/camera/command/CmdIdStringMapper;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/sec/android/app/camera/Camera;->sendBroadcastChangeSettings(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    iget-object v4, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6, p1, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSettingValuesString(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/sec/android/app/camera/Camera;->showSideQuickSettingToast(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 524
    :cond_c
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v6, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFlashAutoCallback(Z)V

    goto :goto_3

    .line 533
    :sswitch_1
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getLowBatteryStatus()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 534
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFrontFlashMode(I)V

    .line 535
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    const v7, 0x7f0a01e4

    invoke-static {v6, v7, v4}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 536
    goto/16 :goto_0

    .line 538
    :cond_d
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isTemperatureHighToUseFlash()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 539
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFrontFlashMode(I)V

    .line 540
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    const v7, 0x7f0a023d

    invoke-static {v6, v7, v4}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 541
    goto/16 :goto_0

    .line 543
    :cond_e
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isTemperatureLowToUseFlash()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 544
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFrontFlashMode(I)V

    .line 545
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {v6, v10, v4}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 546
    goto/16 :goto_0

    .line 549
    :cond_f
    if-ne v0, v5, :cond_10

    .line 550
    iget-object v4, p0, Lcom/sec/android/app/camera/CommandReceiver;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v4, v5}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFlashAutoCallback(Z)V

    .line 555
    :goto_4
    iget-object v4, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFrontFlashMode(I)V

    .line 556
    iget-object v4, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    const-string v6, "Z106"

    const/16 v7, 0xaa

    invoke-static {v7, v0}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v7

    invoke-static {v7}, Lcom/sec/android/app/camera/command/CmdIdStringMapper;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/sec/android/app/camera/Camera;->sendBroadcastChangeSettings(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    iget-object v4, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6, p1, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSettingValuesString(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/sec/android/app/camera/Camera;->showSideQuickSettingToast(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 552
    :cond_10
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v6, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFlashAutoCallback(Z)V

    goto :goto_4

    .line 561
    :sswitch_2
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraHDR(I)V

    .line 564
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/Engine;->isTouchAEProcessing()Z

    move-result v6

    if-eqz v6, :cond_11

    .line 565
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/Engine;->removeAfRequest()V

    .line 566
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6, v5}, Lcom/sec/android/app/camera/Camera;->resetTouchAE(Z)V

    .line 569
    :cond_11
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/Engine;->isAutoFocusing()Z

    move-result v6

    if-eqz v6, :cond_12

    .line 570
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelAutoFocus()V

    .line 573
    :cond_12
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->isTouchAutoFocusActive()Z

    move-result v6

    if-eqz v6, :cond_13

    .line 574
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->resetTouchFocus()V

    .line 577
    :cond_13
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStopPreview()V

    .line 578
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v6, v8, v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleChangeParameter(II)V

    .line 579
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStartPreview()V

    .line 581
    if-ne v0, v5, :cond_14

    .line 582
    iget-object v4, p0, Lcom/sec/android/app/camera/CommandReceiver;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v4, v5}, Lcom/sec/android/app/camera/interfaces/Engine;->enableHdrAutoCallback(Z)V

    .line 586
    :goto_5
    iget-object v4, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    const-string v6, "Z087"

    invoke-static {v8, v0}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v7

    invoke-static {v7}, Lcom/sec/android/app/camera/command/CmdIdStringMapper;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/sec/android/app/camera/Camera;->sendBroadcastChangeSettings(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    iget-object v4, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6, p1, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSettingValuesString(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/sec/android/app/camera/Camera;->showSideQuickSettingToast(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 584
    :cond_14
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v6, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->enableHdrAutoCallback(Z)V

    goto :goto_5

    .line 590
    :sswitch_3
    iget-object v4, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setGestureControlMode(I)V

    .line 591
    iget-object v4, p0, Lcom/sec/android/app/camera/CommandReceiver;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v4, v0}, Lcom/sec/android/app/camera/interfaces/Engine;->setGestureControlMode(I)V

    goto/16 :goto_2

    .line 594
    :sswitch_4
    iget-object v4, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setSaveRichTone(I)V

    goto/16 :goto_2

    .line 597
    :sswitch_5
    iget-object v4, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setMultiAFMode(I)V

    .line 598
    iget-object v4, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {v9, v0}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v6

    invoke-virtual {v4, v9, v6}, Lcom/sec/android/app/camera/Camera;->sendBroadcastChangeSettings(II)V

    .line 600
    iget-object v4, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6, p1, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSettingValuesString(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/sec/android/app/camera/Camera;->showSideQuickSettingToast(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 603
    :sswitch_6
    iget-object v4, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFoodBlurType(I)V

    .line 605
    iget-object v4, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6, p1, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSettingValuesString(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/sec/android/app/camera/Camera;->showSideQuickSettingToast(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 608
    :sswitch_7
    iget-object v4, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setMotionPanoramaMode(I)V

    .line 609
    iget-object v4, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    const-string v6, "Z145"

    const/16 v7, 0x87

    invoke-static {v7, v0}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/sec/android/app/camera/Camera;->sendBroadcastChangeSettings(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    iget-object v4, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6, p1, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSettingValuesString(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/sec/android/app/camera/Camera;->showSideQuickSettingToast(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 615
    :sswitch_8
    add-int/lit8 v0, v0, 0x1

    if-le v0, v3, :cond_15

    .line 616
    move v0, v2

    .line 618
    :cond_15
    iget-object v4, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraExposureMeter(I)V

    .line 619
    iget-object v4, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    const-string v6, "Z141"

    const/16 v7, 0xb

    invoke-static {v7, v0}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v7

    invoke-static {v7}, Lcom/sec/android/app/camera/command/CmdIdStringMapper;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/sec/android/app/camera/Camera;->sendBroadcastChangeSettings(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    iget-object v4, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6, p1, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSettingValuesString(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/sec/android/app/camera/Camera;->showSideQuickSettingToast(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 623
    :sswitch_9
    iget-object v4, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setMotionWideSelfieMode(I)V

    .line 624
    iget-object v4, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6, p1, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSettingValuesString(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/sec/android/app/camera/Camera;->showSideQuickSettingToast(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 627
    :sswitch_a
    iget-object v4, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setSoundAndShotMode(I)V

    .line 628
    iget-object v4, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    const/16 v6, 0x4d

    invoke-virtual {v4, v6, v0}, Lcom/sec/android/app/camera/Camera;->setButtonDim(II)V

    .line 629
    iget-object v4, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6, p1, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSettingValuesString(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/sec/android/app/camera/Camera;->showSideQuickSettingToast(Ljava/lang/String;)V

    goto/16 :goto_2

    .end local v0    # "currentModeId":I
    .restart local v1    # "currentModeId":I
    :cond_16
    move v0, v1

    .end local v1    # "currentModeId":I
    .restart local v0    # "currentModeId":I
    goto/16 :goto_1

    .line 482
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0xb -> :sswitch_8
        0xc -> :sswitch_2
        0x22 -> :sswitch_4
        0x4d -> :sswitch_a
        0x6a -> :sswitch_1
        0x6c -> :sswitch_0
        0x7d -> :sswitch_3
        0x87 -> :sswitch_7
        0x8d -> :sswitch_6
        0x91 -> :sswitch_5
        0xaa -> :sswitch_1
        0xad -> :sswitch_9
    .end sparse-switch
.end method

.method public onVideoCollageRecTimeSelect(I)Z
    .locals 1
    .param p1, "recordingTime"    # I

    .prologue
    .line 640
    iget-object v0, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setVideoCollageRecordingTime(I)V

    .line 641
    iget-object v0, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->collapseMenu()V

    .line 642
    const/4 v0, 0x1

    return v0
.end method

.method public onVideoCollageTypeMenuSelect(I)Z
    .locals 2
    .param p1, "type"    # I

    .prologue
    const/4 v1, 0x1

    .line 647
    iget-object v0, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, p1, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setVideoCollageType(IZ)V

    .line 648
    iget-object v0, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->collapseMenu()V

    .line 649
    return v1
.end method

.method public onWatermarkMenuSelect(IZ)Z
    .locals 3
    .param p1, "watermarkId"    # I
    .param p2, "itemSelected"    # Z

    .prologue
    const/16 v2, 0x7d

    .line 654
    const-string v0, "CommandReceiver"

    const-string v1, "onWatermarkMenuSelect.."

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    iget-object v0, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setWatermarkId(I)V

    .line 657
    if-eqz p2, :cond_0

    .line 658
    iget-object v0, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 659
    iget-object v0, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/MenuManager;->hideMenu(I)V

    .line 662
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onWhiteBalanceSelect(I)Z
    .locals 2
    .param p1, "whiteBalance"    # I

    .prologue
    .line 667
    iget-object v0, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setWhiteBalance(I)V

    .line 668
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isDualBackCamera()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isDualFrontCamera()Z

    move-result v0

    if-nez v0, :cond_0

    .line 669
    iget-object v0, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraEffect(I)V

    .line 671
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
