.class public Lcom/sec/android/app/camera/shootingmode/feature/RecordingFeature;
.super Ljava/lang/Object;
.source "RecordingFeature.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;


# static fields
.field private static final TAG:Ljava/lang/String; = "RecordingFeature"


# instance fields
.field private mPreviousShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;)V
    .locals 2
    .param p1, "previousShootingModeFeature"    # Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/feature/RecordingFeature;->mPreviousShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    .line 37
    if-nez p1, :cond_0

    .line 38
    const-string v0, "RecordingFeature"

    const-string v1, "Error - previousShootingModeFeature is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :cond_0
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/feature/RecordingFeature;->mPreviousShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    .line 41
    return-void
.end method


# virtual methods
.method public getFixedBackCameraResolution()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFixedFrontCameraResolution()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    return-object v0
.end method

.method public isContinuousAFSupported()Z
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x1

    return v0
.end method

.method public isDivideAFAESupported()Z
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public isEffectSupported()Z
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/feature/RecordingFeature;->mPreviousShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isEffectSupported()Z

    move-result v0

    return v0
.end method

.method public isExternalMemorySupported()Z
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/feature/RecordingFeature;->mPreviousShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isExternalMemorySupported()Z

    move-result v0

    return v0
.end method

.method public isFaceDetectionSupported()Z
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x1

    return v0
.end method

.method public isFloatingCameraButtonSupported()Z
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public isGestureControlSupported()Z
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public isHandlingAudioFocus()Z
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public isLowLightDetectionSupported()Z
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public isMultiInstanceCameraSupported()Z
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/feature/RecordingFeature;->mPreviousShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isMultiInstanceCameraSupported()Z

    move-result v0

    return v0
.end method

.method public isNeedToLockAEAWB()Z
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    return v0
.end method

.method public isNeedToLockAWB()Z
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public isObjectTrackingSupported()Z
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/feature/RecordingFeature;->mPreviousShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isObjectTrackingSupported()Z

    move-result v0

    return v0
.end method

.method public isOneHandZoomSupported()Z
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x1

    return v0
.end method

.method public isSeamlessZoomSupported()Z
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method public isSuperResolutionZoomSupported()Z
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method public isTouchAESupported()Z
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x1

    return v0
.end method

.method public isTouchAFSupported()Z
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x1

    return v0
.end method

.method public isTouchEVSupported()Z
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x1

    return v0
.end method

.method public isUsingCamcorderPreviewOnly()Z
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/feature/RecordingFeature;->mPreviousShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isUsingCamcorderPreviewOnly()Z

    move-result v0

    return v0
.end method

.method public isUsingThumbnailPictureCallback()Z
    .locals 1

    .prologue
    .line 185
    const/4 v0, 0x0

    return v0
.end method

.method public isZoomSupported()Z
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x1

    return v0
.end method
