.class public Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfileInfo;
.super Ljava/lang/Object;
.source "CameraContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/interfaces/CameraContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RequestedMediaRecorderProfileInfo"
.end annotation


# static fields
.field public static final NOT_REQUESTED:I = -0x1


# instance fields
.field public audioBitrate:I

.field public audioChannels:I

.field public audioEncoder:I

.field public audioSamplingRate:I

.field public fileSizeInterval:I

.field public outputFormat:I

.field public videoBitrate:I

.field public videoEncoder:I

.field public videoFps:I


# direct methods
.method public constructor <init>(IIIIIIIII)V
    .locals 1
    .param p1, "videoEncoder"    # I
    .param p2, "videoBitrate"    # I
    .param p3, "videoFps"    # I
    .param p4, "outputFormat"    # I
    .param p5, "audioEncoder"    # I
    .param p6, "audioBitrate"    # I
    .param p7, "audioChannels"    # I
    .param p8, "audioSamplingRate"    # I
    .param p9, "fileSizeInterval"    # I

    .prologue
    const/4 v0, -0x1

    .line 1002
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 991
    iput v0, p0, Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfileInfo;->videoEncoder:I

    .line 992
    iput v0, p0, Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfileInfo;->videoBitrate:I

    .line 993
    iput v0, p0, Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfileInfo;->videoFps:I

    .line 994
    iput v0, p0, Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfileInfo;->outputFormat:I

    .line 995
    iput v0, p0, Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfileInfo;->audioEncoder:I

    .line 996
    iput v0, p0, Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfileInfo;->audioBitrate:I

    .line 997
    iput v0, p0, Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfileInfo;->audioChannels:I

    .line 998
    iput v0, p0, Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfileInfo;->audioSamplingRate:I

    .line 999
    iput v0, p0, Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfileInfo;->fileSizeInterval:I

    .line 1003
    iput p1, p0, Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfileInfo;->videoEncoder:I

    .line 1004
    iput p2, p0, Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfileInfo;->videoBitrate:I

    .line 1005
    iput p3, p0, Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfileInfo;->videoFps:I

    .line 1006
    iput p4, p0, Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfileInfo;->outputFormat:I

    .line 1007
    iput p5, p0, Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfileInfo;->audioEncoder:I

    .line 1008
    iput p6, p0, Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfileInfo;->audioBitrate:I

    .line 1009
    iput p7, p0, Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfileInfo;->audioChannels:I

    .line 1010
    iput p8, p0, Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfileInfo;->audioSamplingRate:I

    .line 1011
    iput p9, p0, Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfileInfo;->fileSizeInterval:I

    .line 1012
    return-void
.end method
