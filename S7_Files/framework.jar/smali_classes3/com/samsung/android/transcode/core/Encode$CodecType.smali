.class public final Lcom/samsung/android/transcode/core/Encode$CodecType;
.super Ljava/lang/Object;
.source "Encode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/transcode/core/Encode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CodecType"
.end annotation


# static fields
.field public static final AUDIO_CODEC_AAC:I = 0x2

.field public static final AUDIO_CODEC_AMR:I = 0x1

.field public static final VIDEO_CODEC_H263:I = 0x3

.field public static final VIDEO_CODEC_H264:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
