.class public final Lcom/samsung/android/apex/motionphoto/SemApexEngine;
.super Ljava/lang/Object;
.source "SemApexEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/apex/motionphoto/SemApexEngine$OnErrorListener;,
        Lcom/samsung/android/apex/motionphoto/SemApexEngine$OnInfoListener;,
        Lcom/samsung/android/apex/motionphoto/SemApexEngine$BestPhotoScore;
    }
.end annotation


# static fields
.field public static final APEX_EVENT_ERROR:I = 0x1

.field public static final APEX_EVENT_INFO:I = 0x2

.field public static final APEX_EVENT_LIST_END:I = 0x63

.field public static final APEX_EVENT_LIST_START:I = 0x1

.field public static final APEX_INFO_COMPLETE_UPDATE_SCORE:I = 0x65

.field public static final APEX_INFO_LIST_END:I = 0xc8

.field public static final APEX_INFO_LIST_START:I = 0x64

.field public static final APEX_INFO_UPDATE_SCORE:I = 0x64

.field private static final TAG:Ljava/lang/String; = "ApexEngine"


# instance fields
.field private mNativeContext:J

.field private mOnErrorListener:Lcom/samsung/android/apex/motionphoto/SemApexEngine$OnErrorListener;

.field private mOnInfoListener:Lcom/samsung/android/apex/motionphoto/SemApexEngine$OnInfoListener;

.field private mSrcFilePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    const-string v0, "apex_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 81
    invoke-static {}, Lcom/samsung/android/apex/motionphoto/SemApexEngine;->native_init()V

    .line 82
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;)V
    .locals 1
    .param p1, "videoId"    # J
    .param p3, "srcFilePath"    # Ljava/lang/String;

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/apex/motionphoto/SemApexEngine;->setupBestPhoto(JLjava/lang/String;)V

    .line 118
    return-void
.end method

.method private final native native_createBestPhoto(J)V
.end method

.method private final native native_createBestPhotos()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/apex/motionphoto/SemApexEngine$BestPhotoScore;",
            ">;"
        }
    .end annotation
.end method

.method private final native native_finalize()V
.end method

.method private static final native native_init()V
.end method

.method private final native native_mergeClips([Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private final native native_releaseBestPhoto()V
.end method

.method private final native native_releaseSplitClip()V
.end method

.method private final native native_setupBestPhoto(JLjava/lang/String;)V
.end method

.method private final native native_setupSplitClip(Ljava/io/FileDescriptor;JJ)V
.end method

.method private final native native_splitClipWithOffset(Ljava/io/FileDescriptor;JJJZZZ)Z
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 1
    .param p0, "apex_ref"    # Ljava/lang/Object;
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 283
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0    # "apex_ref":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/apex/motionphoto/SemApexEngine;

    .line 284
    .local v0, "apexEngine":Lcom/samsung/android/apex/motionphoto/SemApexEngine;
    if-nez v0, :cond_0

    .line 292
    :cond_0
    return-void
.end method

.method private processCbMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 139
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 141
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/SemApexEngine;->mOnInfoListener:Lcom/samsung/android/apex/motionphoto/SemApexEngine$OnInfoListener;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/SemApexEngine;->mOnInfoListener:Lcom/samsung/android/apex/motionphoto/SemApexEngine$OnInfoListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/samsung/android/apex/motionphoto/SemApexEngine$OnInfoListener;->onInfo(Lcom/samsung/android/apex/motionphoto/SemApexEngine;IILjava/lang/Object;)V

    goto :goto_0

    .line 147
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/SemApexEngine;->mOnErrorListener:Lcom/samsung/android/apex/motionphoto/SemApexEngine$OnErrorListener;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/SemApexEngine;->mOnErrorListener:Lcom/samsung/android/apex/motionphoto/SemApexEngine$OnErrorListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, p0, v1, v2}, Lcom/samsung/android/apex/motionphoto/SemApexEngine$OnErrorListener;->onError(Lcom/samsung/android/apex/motionphoto/SemApexEngine;II)V

    goto :goto_0

    .line 139
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final createBestPhoto(J)V
    .locals 1
    .param p1, "selectedTimeUs"    # J

    .prologue
    .line 191
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/apex/motionphoto/SemApexEngine;->native_createBestPhoto(J)V

    .line 192
    return-void
.end method

.method public final createBestPhotos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/apex/motionphoto/SemApexEngine$BestPhotoScore;",
            ">;"
        }
    .end annotation

    .prologue
    .line 202
    invoke-direct {p0}, Lcom/samsung/android/apex/motionphoto/SemApexEngine;->native_createBestPhotos()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final mergeClips([Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "srcFilePaths"    # [Ljava/lang/String;
    .param p2, "dstFilePath"    # Ljava/lang/String;

    .prologue
    .line 214
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/apex/motionphoto/SemApexEngine;->native_mergeClips([Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    return-void
.end method

.method public final releaseBestPhoto()V
    .locals 0

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/samsung/android/apex/motionphoto/SemApexEngine;->native_releaseBestPhoto()V

    .line 168
    return-void
.end method

.method public final releaseSplitClip()V
    .locals 0

    .prologue
    .line 236
    invoke-direct {p0}, Lcom/samsung/android/apex/motionphoto/SemApexEngine;->native_releaseSplitClip()V

    .line 237
    return-void
.end method

.method public setOnErrorListener(Lcom/samsung/android/apex/motionphoto/SemApexEngine$OnErrorListener;)V
    .locals 0
    .param p1, "onErrorListener"    # Lcom/samsung/android/apex/motionphoto/SemApexEngine$OnErrorListener;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/samsung/android/apex/motionphoto/SemApexEngine;->mOnErrorListener:Lcom/samsung/android/apex/motionphoto/SemApexEngine$OnErrorListener;

    .line 136
    return-void
.end method

.method public setOnInfoListener(Lcom/samsung/android/apex/motionphoto/SemApexEngine$OnInfoListener;)V
    .locals 0
    .param p1, "onInfoListener"    # Lcom/samsung/android/apex/motionphoto/SemApexEngine$OnInfoListener;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/samsung/android/apex/motionphoto/SemApexEngine;->mOnInfoListener:Lcom/samsung/android/apex/motionphoto/SemApexEngine$OnInfoListener;

    .line 127
    return-void
.end method

.method public final setupBestPhoto(JLjava/lang/String;)V
    .locals 1
    .param p1, "videoId"    # J
    .param p3, "srcFilePath"    # Ljava/lang/String;

    .prologue
    .line 179
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/apex/motionphoto/SemApexEngine;->native_setupBestPhoto(JLjava/lang/String;)V

    .line 180
    iput-object p3, p0, Lcom/samsung/android/apex/motionphoto/SemApexEngine;->mSrcFilePath:Ljava/lang/String;

    .line 181
    return-void
.end method

.method public final setupSplitClip(Ljava/io/FileDescriptor;JJ)V
    .locals 0
    .param p1, "inputFd"    # Ljava/io/FileDescriptor;
    .param p2, "offset"    # J
    .param p4, "length"    # J

    .prologue
    .line 227
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/apex/motionphoto/SemApexEngine;->native_setupSplitClip(Ljava/io/FileDescriptor;JJ)V

    .line 228
    return-void
.end method

.method public final splitClip(Ljava/io/FileDescriptor;JJZZZ)Z
    .locals 12
    .param p1, "outputFd"    # Ljava/io/FileDescriptor;
    .param p2, "startTimeUs"    # J
    .param p4, "endTimeUs"    # J
    .param p6, "includeAudio"    # Z
    .param p7, "includeVideo"    # Z
    .param p8, "supportedSEF"    # Z

    .prologue
    .line 255
    const-wide/16 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    move-wide/from16 v6, p4

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Lcom/samsung/android/apex/motionphoto/SemApexEngine;->native_splitClipWithOffset(Ljava/io/FileDescriptor;JJJZZZ)Z

    move-result v0

    return v0
.end method

.method public final splitClipWithOffset(Ljava/io/FileDescriptor;JJJZZZ)Z
    .locals 2
    .param p1, "outputFd"    # Ljava/io/FileDescriptor;
    .param p2, "offset"    # J
    .param p4, "startTimeUs"    # J
    .param p6, "endTimeUs"    # J
    .param p8, "includeAudio"    # Z
    .param p9, "includeVideo"    # Z
    .param p10, "supportedSEF"    # Z

    .prologue
    .line 274
    invoke-direct/range {p0 .. p10}, Lcom/samsung/android/apex/motionphoto/SemApexEngine;->native_splitClipWithOffset(Ljava/io/FileDescriptor;JJJZZZ)Z

    move-result v0

    return v0
.end method
