.class public abstract Lorg/tukaani/xz/check/Check;
.super Ljava/lang/Object;
.source "Check.java"


# instance fields
.field name:Ljava/lang/String;

.field size:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(I)Lorg/tukaani/xz/check/Check;
    .locals 4
    .param p0, "checkType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/tukaani/xz/UnsupportedOptionsException;
        }
    .end annotation

    .prologue
    .line 36
    sparse-switch p0, :sswitch_data_0

    .line 54
    :goto_0
    new-instance v1, Lorg/tukaani/xz/UnsupportedOptionsException;

    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unsupported Check ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 54
    invoke-direct {v1, v2}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 38
    :sswitch_0
    new-instance v1, Lorg/tukaani/xz/check/None;

    invoke-direct {v1}, Lorg/tukaani/xz/check/None;-><init>()V

    return-object v1

    .line 41
    :sswitch_1
    new-instance v1, Lorg/tukaani/xz/check/CRC32;

    invoke-direct {v1}, Lorg/tukaani/xz/check/CRC32;-><init>()V

    return-object v1

    .line 44
    :sswitch_2
    new-instance v1, Lorg/tukaani/xz/check/CRC64;

    invoke-direct {v1}, Lorg/tukaani/xz/check/CRC64;-><init>()V

    return-object v1

    .line 48
    :sswitch_3
    :try_start_0
    new-instance v1, Lorg/tukaani/xz/check/SHA256;

    invoke-direct {v1}, Lorg/tukaani/xz/check/SHA256;-><init>()V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 49
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    goto :goto_0

    .line 36
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x4 -> :sswitch_2
        0xa -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public abstract finish()[B
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lorg/tukaani/xz/check/Check;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lorg/tukaani/xz/check/Check;->size:I

    return v0
.end method

.method public update([B)V
    .locals 2
    .param p1, "buf"    # [B

    .prologue
    .line 23
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/tukaani/xz/check/Check;->update([BII)V

    .line 22
    return-void
.end method

.method public abstract update([BII)V
.end method
