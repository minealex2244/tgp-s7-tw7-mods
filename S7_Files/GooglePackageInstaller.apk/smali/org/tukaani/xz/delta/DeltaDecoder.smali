.class public Lorg/tukaani/xz/delta/DeltaDecoder;
.super Lorg/tukaani/xz/delta/DeltaCoder;
.source "DeltaDecoder.java"


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "distance"    # I

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lorg/tukaani/xz/delta/DeltaCoder;-><init>(I)V

    .line 13
    return-void
.end method


# virtual methods
.method public decode([BII)V
    .locals 6
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 18
    add-int v0, p2, p3

    .line 19
    .local v0, "end":I
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 20
    aget-byte v2, p1, v1

    iget-object v3, p0, Lorg/tukaani/xz/delta/DeltaDecoder;->history:[B

    iget v4, p0, Lorg/tukaani/xz/delta/DeltaDecoder;->distance:I

    iget v5, p0, Lorg/tukaani/xz/delta/DeltaDecoder;->pos:I

    add-int/2addr v4, v5

    and-int/lit16 v4, v4, 0xff

    aget-byte v3, v3, v4

    add-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 21
    iget-object v2, p0, Lorg/tukaani/xz/delta/DeltaDecoder;->history:[B

    iget v3, p0, Lorg/tukaani/xz/delta/DeltaDecoder;->pos:I

    add-int/lit8 v4, v3, -0x1

    iput v4, p0, Lorg/tukaani/xz/delta/DeltaDecoder;->pos:I

    and-int/lit16 v3, v3, 0xff

    aget-byte v4, p1, v1

    aput-byte v4, v2, v3

    .line 19
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 17
    :cond_0
    return-void
.end method
