.class final Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;
.super Landroid/util/SparseArray;
.source "ResourceIDMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/SparseArray",
        "<",
        "Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 13

    .prologue
    const v12, 0x7f0a004c

    const v11, 0x7f0a004b

    const v10, 0x7f020172

    const v1, 0x7f0201ec

    const/4 v2, 0x0

    .line 30
    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    .line 32
    const/16 v0, 0x63

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a02bc

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 33
    const/16 v0, 0x24

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0201ba

    const v5, 0x7f0a022e

    invoke-direct {v3, v4, v2, v2, v5}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 34
    const/4 v7, 0x3

    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a00cd

    const v5, 0x7f0a0011

    move v3, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIIIII)V

    invoke-virtual {p0, v7, v0}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 35
    const/16 v7, 0xaa

    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a00cd

    const v5, 0x7f0a0011

    move v3, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIIIII)V

    invoke-virtual {p0, v7, v0}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 36
    const/4 v0, 0x2

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a00ee

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 37
    const/16 v0, 0x1b

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0201b0

    const v5, 0x7f0a021c

    invoke-direct {v3, v4, v2, v2, v5}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 38
    const/4 v0, 0x5

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a00cf

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 40
    const/16 v0, 0x6d

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f020190

    const v5, 0x7f0a008c

    invoke-direct {v3, v4, v2, v2, v5}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 41
    const/16 v0, 0x81

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f020190

    const v5, 0x7f0a008c

    invoke-direct {v3, v4, v2, v2, v5}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 42
    const/16 v0, 0x82

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f020190

    const v5, 0x7f0a008c

    invoke-direct {v3, v4, v2, v2, v5}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 43
    const/16 v0, 0x71

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f020190

    const v5, 0x7f0a008c

    invoke-direct {v3, v4, v2, v2, v5}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 44
    const/16 v0, 0x8

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f02019e

    const v7, 0x7f0a00cb

    const v8, 0x7f0a000f

    move v5, v2

    move v6, v2

    move v9, v2

    invoke-direct/range {v3 .. v9}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIIIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 45
    const/16 v0, 0x7f

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f02019e

    const v7, 0x7f0a00cb

    const v8, 0x7f0a000f

    move v5, v2

    move v6, v2

    move v9, v2

    invoke-direct/range {v3 .. v9}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIIIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 46
    const/16 v0, 0x7d

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f02019e

    const v7, 0x7f0a0282

    const v8, 0x7f0a0282

    move v5, v2

    move v6, v2

    move v9, v2

    invoke-direct/range {v3 .. v9}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIIIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 48
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SUPPORT_BEAUTY_SUBMENU:Z

    if-eqz v0, :cond_0

    .line 49
    const/16 v0, 0x1964

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f02001e

    const v5, 0x7f02001f

    const v6, 0x7f0a011d

    invoke-direct {v3, v4, v5, v2, v6}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 51
    const/16 v0, 0x1965

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f020016

    const v5, 0x7f020017

    const v6, 0x7f0a0119

    invoke-direct {v3, v4, v5, v2, v6}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 53
    const/16 v0, 0x1966

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f02001c

    const v5, 0x7f02001d

    const v6, 0x7f0a011c

    invoke-direct {v3, v4, v5, v2, v6}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 54
    const/16 v0, 0x1967

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f020018

    const v5, 0x7f02001a

    const v6, 0x7f0a0118

    invoke-direct {v3, v4, v5, v2, v6}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 56
    const/16 v0, 0x1968

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f020020

    const v5, 0x7f020021

    const v6, 0x7f0a011e

    invoke-direct {v3, v4, v5, v2, v6}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 59
    :cond_0
    const/4 v0, 0x7

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f020179

    const v5, 0x7f02017a

    const v7, 0x7f0a00cc

    const v8, 0x7f0a0010

    move v6, v2

    move v9, v2

    invoke-direct/range {v3 .. v9}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIIIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 61
    const/16 v0, 0xe

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f020181

    const v5, 0x7f020182

    const v7, 0x7f0a00f1

    const v8, 0x7f0a00f1

    move v6, v2

    move v9, v2

    invoke-direct/range {v3 .. v9}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIIIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 63
    const/16 v0, 0xa

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f02017d

    const v5, 0x7f02017e

    const v7, 0x7f0a00db

    const v8, 0x7f0a0015

    move v6, v2

    move v9, v2

    invoke-direct/range {v3 .. v9}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIIIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 65
    const/16 v0, 0x9

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f020183

    const v5, 0x7f020184

    const v7, 0x7f0a00fe

    const v8, 0x7f0a001e

    move v6, v2

    move v9, v2

    invoke-direct/range {v3 .. v9}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIIIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 67
    const/16 v0, 0x51

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f02017b

    const v5, 0x7f02017c

    const v7, 0x7f0a00dd

    const v8, 0x7f0a0016

    move v6, v2

    move v9, v2

    invoke-direct/range {v3 .. v9}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIIIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 69
    const/16 v0, 0x77

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f02017f

    const v5, 0x7f020180

    const v7, 0x7f0a00c9

    const v8, 0x7f0a00c9

    move v6, v2

    move v9, v2

    invoke-direct/range {v3 .. v9}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIIIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 71
    const/16 v0, 0x6e

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a02bc

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 72
    const/16 v0, 0x70

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a02bc

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 73
    const/16 v0, 0x75

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f02018f

    const v5, 0x7f0a0083

    invoke-direct {v3, v4, v2, v2, v5}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 75
    const/16 v0, 0x80

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0201a4

    const v5, 0x7f0a00c9

    invoke-direct {v3, v4, v2, v2, v5}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 76
    const/16 v0, 0x8d

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a033d

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 77
    const/16 v0, 0x8f

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f02018f

    const v5, 0x7f0a0099

    invoke-direct {v3, v4, v2, v2, v5}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 79
    const/16 v7, 0x54

    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a0219

    const v5, 0x7f0a0219

    move v3, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIIIII)V

    invoke-virtual {p0, v7, v0}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 80
    const/16 v0, 0x55

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a00b2

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 81
    const/16 v7, 0xb

    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a00de

    const v5, 0x7f0a0017

    move v3, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIIIII)V

    invoke-virtual {p0, v7, v0}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 82
    const/16 v7, 0xc

    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a00d8

    const v5, 0x7f0a0014

    move v3, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIIIII)V

    invoke-virtual {p0, v7, v0}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 83
    const/16 v7, 0x13

    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a00d7

    const v5, 0x7f0a0013

    move v3, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIIIII)V

    invoke-virtual {p0, v7, v0}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 84
    const/16 v7, 0x14

    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a00d5

    const v5, 0x7f0a0012

    move v3, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIIIII)V

    invoke-virtual {p0, v7, v0}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 85
    const/16 v7, 0x33

    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a00ec

    const v5, 0x7f0a0019

    move v3, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIIIII)V

    invoke-virtual {p0, v7, v0}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 86
    const/16 v7, 0x15

    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a00f0

    const v5, 0x7f0a001a

    move v3, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIIIII)V

    invoke-virtual {p0, v7, v0}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 87
    const/16 v7, 0x16

    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a00f3

    const v5, 0x7f0a001b

    move v3, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIIIII)V

    invoke-virtual {p0, v7, v0}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 88
    const/16 v0, 0x78

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0201b6

    const v7, 0x7f0a00df

    const v8, 0x7f0a0018

    move v5, v2

    move v6, v2

    move v9, v2

    invoke-direct/range {v3 .. v9}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIIIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 89
    const/16 v0, 0xbbb

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a00f8

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 90
    const/16 v7, 0xbbf

    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a00f9

    const v5, 0x7f0a001c

    move v3, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIIIII)V

    invoke-virtual {p0, v7, v0}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 92
    const/16 v7, 0x47

    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a00fb

    const v5, 0x7f0a001d

    move v3, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIIIII)V

    invoke-virtual {p0, v7, v0}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 93
    const/16 v0, 0x22

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a00ed

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 94
    const/16 v0, 0x48

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a00fd

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 95
    const/16 v0, 0x4d

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a00f2

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 96
    const/16 v0, 0xbc3

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f02019d

    const v5, 0x7f0a00da

    invoke-direct {v3, v4, v2, v2, v5}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 97
    const/16 v0, 0xbc4

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a00cd

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 98
    const/16 v0, 0xbc5

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a00cd

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 99
    const/16 v0, 0x18

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a00f6

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 100
    const/16 v7, 0x17

    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a00fa

    const v5, 0x7f0a00fa

    move v3, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIIIII)V

    invoke-virtual {p0, v7, v0}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 101
    const/16 v0, 0xc8

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a02bc

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 102
    const/16 v0, 0xc9

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a02bc

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 104
    const/16 v0, 0x1bbc

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    invoke-direct {v3, v1, v2, v2, v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 105
    const/16 v0, 0x1bbd

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    invoke-direct {v3, v1, v2, v2, v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 107
    const/16 v0, 0x83

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a00c8

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 108
    const/16 v0, 0x84

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a00c7

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 112
    const/16 v0, 0x86

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a00e3

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 115
    const/16 v0, 0x5a

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f020089

    const v5, 0x7f0a02f4

    invoke-direct {v3, v4, v2, v2, v5}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 118
    const/16 v0, 0x87

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a00e0

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 121
    const/16 v0, 0xad

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a02f5

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 124
    const/16 v0, 0x91

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a00e2

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 127
    const/16 v0, 0x96

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a00ea

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 130
    const/16 v0, 0x12c

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f02010d

    const v5, 0x7f02010e

    const v6, 0x7f0a0088

    invoke-direct {v3, v4, v5, v2, v6}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 131
    const/16 v0, 0x12d

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f020113

    const v5, 0x7f020114

    const v6, 0x7f0a0091

    invoke-direct {v3, v4, v5, v2, v6}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 132
    const/16 v0, 0x12e

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f020127

    const v5, 0x7f020128

    const v6, 0x7f0a00a5

    invoke-direct {v3, v4, v5, v2, v6}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 133
    const/16 v0, 0x162

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f020127

    const v5, 0x7f020128

    const v6, 0x7f0a00a5

    invoke-direct {v3, v4, v5, v2, v6}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 134
    const/16 v0, 0x133

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f02010f

    const v5, 0x7f020110

    const v6, 0x7f0a008c

    invoke-direct {v3, v4, v5, v2, v6}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 135
    const/16 v0, 0x13a

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f02011d

    const v5, 0x7f02011e

    const v6, 0x7f0a00ac

    invoke-direct {v3, v4, v5, v2, v6}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 136
    const/16 v0, 0x13d

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f020113

    const v5, 0x7f020114

    const v6, 0x7f0a0091

    invoke-direct {v3, v4, v5, v2, v6}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 137
    const/16 v0, 0x13f

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f020125

    const v5, 0x7f020126

    const v6, 0x7f0a00a3

    invoke-direct {v3, v4, v5, v2, v6}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 138
    const/16 v0, 0x149

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f020138

    const v5, 0x7f020139

    const v6, 0x7f0a00b8

    invoke-direct {v3, v4, v5, v2, v6}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 139
    const/16 v0, 0x14d

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f020125

    const v5, 0x7f020126

    const v6, 0x7f0a00a3

    invoke-direct {v3, v4, v5, v2, v6}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 140
    const/16 v0, 0x14e

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f02013a

    const v5, 0x7f02013b

    const v6, 0x7f0a00b6

    invoke-direct {v3, v4, v5, v2, v6}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 141
    const/16 v0, 0x14f

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f02010b

    const v5, 0x7f02010c

    const v6, 0x7f0a0086

    invoke-direct {v3, v4, v5, v2, v6}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 142
    const/16 v0, 0x150

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f020115

    const v5, 0x7f020116

    const v6, 0x7f0a0093

    invoke-direct {v3, v4, v5, v2, v6}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 143
    const/16 v0, 0x151

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f020131

    const v5, 0x7f020132

    const v6, 0x7f0a00ae

    invoke-direct {v3, v4, v5, v2, v6}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 144
    const/16 v0, 0x152

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f020133

    const v5, 0x7f020134

    const v6, 0x7f0a00a1

    invoke-direct {v3, v4, v5, v2, v6}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 145
    const/16 v0, 0x154

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f02012f

    const v5, 0x7f020130

    const v6, 0x7f0a0089

    invoke-direct {v3, v4, v5, v2, v6}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 146
    const/16 v0, 0x156

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f02013e

    const v5, 0x7f02013f

    const v6, 0x7f0a00ba

    invoke-direct {v3, v4, v5, v2, v6}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 147
    const/16 v0, 0x166

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f02013e

    const v5, 0x7f02013f

    const v6, 0x7f0a00ba

    invoke-direct {v3, v4, v5, v2, v6}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 148
    const/16 v0, 0x167

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f02013e

    const v5, 0x7f02013f

    const v6, 0x7f0a00ba

    invoke-direct {v3, v4, v5, v2, v6}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 149
    const/16 v0, 0x157

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f02012d

    const v5, 0x7f02012e

    const v6, 0x7f0a00b2

    invoke-direct {v3, v4, v5, v2, v6}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 150
    const/16 v0, 0x158

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f020129

    const v5, 0x7f02012a

    const v6, 0x7f0a00a7

    invoke-direct {v3, v4, v5, v2, v6}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 151
    const/16 v0, 0x164

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f020129

    const v5, 0x7f02012a

    const v6, 0x7f0a00a7

    invoke-direct {v3, v4, v5, v2, v6}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 152
    const/16 v0, 0x15a

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f020135

    const v5, 0x7f020136

    const v6, 0x7f0a00b0

    invoke-direct {v3, v4, v5, v2, v6}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 153
    const/16 v0, 0x15b

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f020121

    const v5, 0x7f020122

    const v6, 0x7f0a009d

    invoke-direct {v3, v4, v5, v2, v6}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 154
    const/16 v0, 0x15c

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f020117

    const v5, 0x7f020118

    const v6, 0x7f0a0097

    invoke-direct {v3, v4, v5, v2, v6}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 155
    const/16 v0, 0x15d

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f02011b

    const v5, 0x7f02011c

    const v6, 0x7f0a0081

    invoke-direct {v3, v4, v5, v2, v6}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 156
    const/16 v0, 0x15e

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f020109

    const v5, 0x7f02010a

    const v6, 0x7f0a0083

    invoke-direct {v3, v4, v5, v2, v6}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 157
    const/16 v0, 0x15f

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f02013c

    const v5, 0x7f02013d

    const v6, 0x7f0a0095

    invoke-direct {v3, v4, v5, v2, v6}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 158
    const/16 v0, 0x161

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f020119

    const v5, 0x7f02011a

    const v6, 0x7f0a0099

    invoke-direct {v3, v4, v5, v2, v6}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 159
    const/16 v0, 0x160

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f020111

    const v5, 0x7f020112

    const v6, 0x7f0a008e

    invoke-direct {v3, v4, v5, v2, v6}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 160
    const/16 v0, 0x163

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f02011f

    const v5, 0x7f020120

    const v6, 0x7f0a009b

    invoke-direct {v3, v4, v5, v2, v6}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 161
    const/16 v0, 0x165

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f020123

    const v5, 0x7f020124

    const v6, 0x7f0a009f

    invoke-direct {v3, v4, v5, v2, v6}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 162
    const/16 v0, 0x169

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f020137

    const v5, 0x7f0a00b4

    invoke-direct {v3, v4, v2, v2, v5}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 163
    const/16 v0, 0x168

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f02012b

    const v5, 0x7f02012c

    const v6, 0x7f0a00a8

    invoke-direct {v3, v4, v5, v2, v6}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 166
    const/16 v0, 0x258

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0201a0

    invoke-direct {v3, v4, v2, v2, v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 167
    const/16 v0, 0x259

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0201a1

    invoke-direct {v3, v4, v2, v2, v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 168
    const/16 v0, 0x25a

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f02019f

    const v5, 0x7f0a003e

    invoke-direct {v3, v4, v2, v2, v5}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 171
    const/16 v0, 0x26c

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0201a0

    invoke-direct {v3, v4, v2, v2, v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 172
    const/16 v0, 0x26d

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0201a1

    invoke-direct {v3, v4, v2, v2, v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 173
    const/16 v0, 0x26e

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f02019f

    const v5, 0x7f0a003e

    invoke-direct {v3, v4, v2, v2, v5}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 176
    const/16 v0, 0x2bc

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    invoke-direct {v3, v1, v2, v2, v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 177
    const/16 v0, 0x2bd

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a003d

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 178
    const/16 v0, 0x2bf

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a0041

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 179
    const/16 v0, 0x2be

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a003f

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 182
    const/16 v0, 0x320

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    invoke-direct {v3, v1, v2, v2, v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 183
    const/16 v0, 0x321

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a00c3

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 184
    const/16 v0, 0x322

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a00c0

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 185
    const/16 v0, 0x323

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a00c2

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 188
    const/16 v0, 0xfa0

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f02016d

    const v6, 0x7f02016d

    const v7, 0x7f0a0002

    const v9, 0x7f0a0021

    move v5, v2

    move v8, v2

    invoke-direct/range {v3 .. v9}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIIIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 190
    const/16 v0, 0xfa1

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f02016a

    const v7, 0x7f0a0003

    const v9, 0x7f0a0022

    move v5, v2

    move v6, v2

    move v8, v2

    invoke-direct/range {v3 .. v9}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIIIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 191
    const/16 v0, 0xfa2

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f020171

    const v7, 0x7f0a0008

    const v9, 0x7f0a0027

    move v5, v2

    move v6, v2

    move v8, v2

    invoke-direct/range {v3 .. v9}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIIIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 192
    const/16 v0, 0xfa3

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f02016e

    const v7, 0x7f0a0004

    const v9, 0x7f0a0023

    move v5, v2

    move v6, v2

    move v8, v2

    invoke-direct/range {v3 .. v9}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIIIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 193
    const/16 v0, 0xfa4

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f020170

    const v7, 0x7f0a0007

    const v9, 0x7f0a0026

    move v5, v2

    move v6, v2

    move v8, v2

    invoke-direct/range {v3 .. v9}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIIIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 194
    const/16 v0, 0xfa5

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f02016f

    const v7, 0x7f0a0006

    const v9, 0x7f0a0025

    move v5, v2

    move v6, v2

    move v8, v2

    invoke-direct/range {v3 .. v9}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIIIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 195
    const/16 v0, 0xfa6

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f02016b

    const v7, 0x7f0a0005

    const v9, 0x7f0a0024

    move v5, v2

    move v6, v2

    move v8, v2

    invoke-direct/range {v3 .. v9}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIIIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 196
    const/16 v0, 0xfa7

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f02016c

    const v7, 0x7f0a0005

    const v9, 0x7f0a0024

    move v5, v2

    move v6, v2

    move v8, v2

    invoke-direct/range {v3 .. v9}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIIIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 199
    const/16 v0, 0x1ac2

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0201a2

    invoke-direct {v3, v4, v2, v2, v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 200
    const/16 v0, 0x1ac3

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0201a3

    invoke-direct {v3, v4, v2, v2, v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 202
    const/16 v0, 0x3e8

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0201f1

    const v5, 0x7f0a002a

    invoke-direct {v3, v4, v2, v2, v5}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 203
    const/16 v0, 0x3e9

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0201f0

    const v5, 0x7f0a0031

    invoke-direct {v3, v4, v2, v2, v5}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 204
    const/16 v0, 0x3ea

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0201ef

    const v5, 0x7f0a002c

    invoke-direct {v3, v4, v2, v2, v5}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 205
    const/16 v0, 0x3eb

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0201ed

    const v5, 0x7f0a0038

    invoke-direct {v3, v4, v2, v2, v5}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 206
    const/16 v0, 0x3fd

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0201f4

    const v5, 0x7f0a003b

    invoke-direct {v3, v4, v2, v2, v5}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 207
    const/16 v0, 0x3ff

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0201f3

    const v5, 0x7f0a0039

    invoke-direct {v3, v4, v2, v2, v5}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 208
    const/16 v0, 0x3fe

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0201f4

    const v5, 0x7f0a003b

    invoke-direct {v3, v4, v2, v2, v5}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 209
    const/16 v0, 0x3f7

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0201f2

    const v5, 0x7f0a0037

    invoke-direct {v3, v4, v2, v2, v5}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 210
    const/16 v0, 0x3f8

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0201ee

    const v5, 0x7f0a0033

    invoke-direct {v3, v4, v2, v2, v5}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 211
    const/16 v0, 0x3f9

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0201f5

    const v5, 0x7f0a0034

    invoke-direct {v3, v4, v2, v2, v5}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 213
    const/16 v0, 0x41a

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f020095

    const v5, 0x7f0a003c

    invoke-direct {v3, v4, v2, v2, v5}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 214
    const/16 v0, 0x41b

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f02008d

    const v5, 0x7f0a002e

    invoke-direct {v3, v4, v2, v2, v5}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 215
    const/16 v0, 0x41c

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f020091

    const v5, 0x7f0a0035

    invoke-direct {v3, v4, v2, v2, v5}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 216
    const/16 v0, 0x41d

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f020092

    const v5, 0x7f0a0036

    invoke-direct {v3, v4, v2, v2, v5}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 218
    const/16 v0, 0x41f

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f02008c

    const v5, 0x7f0a0032

    invoke-direct {v3, v4, v2, v2, v5}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 219
    const/16 v0, 0x420

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f02008e

    const v5, 0x7f0a002d

    invoke-direct {v3, v4, v2, v2, v5}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 221
    const/16 v0, 0x422

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f020090

    const v5, 0x7f0a0030

    invoke-direct {v3, v4, v2, v2, v5}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 223
    const/16 v0, 0x424

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f020094

    const v5, 0x7f0a003a

    invoke-direct {v3, v4, v2, v2, v5}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 224
    const/16 v0, 0x425

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f02008f

    const v5, 0x7f0a002f

    invoke-direct {v3, v4, v2, v2, v5}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 227
    const/16 v0, 0x1f40

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0201f1

    const v5, 0x7f0a02bc

    invoke-direct {v3, v4, v2, v2, v5}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 230
    const/16 v0, 0x4b0

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0201ad

    const v5, 0x7f0a0047

    invoke-direct {v3, v4, v2, v2, v5}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 231
    const/16 v0, 0x4b1

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0201ae

    const v5, 0x7f0a0049

    invoke-direct {v3, v4, v2, v2, v5}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 232
    const/16 v0, 0x4b2

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0201af

    const v5, 0x7f0a0048

    invoke-direct {v3, v4, v2, v2, v5}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 235
    const/16 v0, 0x514

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0201a5

    const v5, 0x7f0a0088

    invoke-direct {v3, v4, v2, v2, v5}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 236
    const/16 v0, 0x515

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0201a6

    invoke-direct {v3, v4, v2, v2, v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 237
    const/16 v0, 0x516

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0201a7

    invoke-direct {v3, v4, v2, v2, v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 240
    const/16 v0, 0x640

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a026f

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 241
    const/16 v0, 0x641

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a0270

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 244
    const/16 v0, 0x834

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    invoke-direct {v3, v1, v2, v2, v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 245
    const/16 v0, 0x835

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    invoke-direct {v3, v1, v2, v2, v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 248
    const/16 v0, 0xc80

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a02bc

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 249
    const/16 v0, 0xc81

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a02bc

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 252
    const/16 v0, 0x898

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a00bd

    invoke-direct {v3, v2, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 253
    const/16 v0, 0x899

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a00be

    invoke-direct {v3, v2, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 256
    const/16 v0, 0xe10

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a0328

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 257
    const/16 v0, 0xe11

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a0327

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 258
    const/16 v0, 0xe12

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a0326

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 259
    const/16 v0, 0xe13

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a0325

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 260
    const/16 v0, 0xe14

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a0324

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 261
    const/16 v0, 0xe15

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a0323

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 262
    const/16 v0, 0xe16

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a0322

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 263
    const/16 v0, 0xe17

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a0321

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 264
    const/16 v0, 0xe18

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a0320

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 265
    const/16 v0, 0xe19

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a031f

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 266
    const/16 v0, 0xe1a

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a031e

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 267
    const/16 v0, 0xe1b

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a031d

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 268
    const/16 v0, 0xe1c

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a031c

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 269
    const/16 v0, 0xe1d

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a031b

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 270
    const/16 v0, 0xe1e

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a031a

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 271
    const/16 v0, 0xe1f

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a0319

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 272
    const/16 v0, 0xe20

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a0318

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 273
    const/16 v0, 0xe21

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a0317

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 274
    const/16 v0, 0xe22

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a0316

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 275
    const/16 v0, 0xe23

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a0315

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 276
    const/16 v7, 0xe24

    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a0314

    const v6, 0x7f0a0314

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIIIII)V

    invoke-virtual {p0, v7, v0}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 277
    const/16 v0, 0xe25

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a0329

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 278
    const/16 v0, 0xe26

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a032a

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 279
    const/16 v0, 0xe27

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a032b

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 280
    const/16 v0, 0xe28

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a032c

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 281
    const/16 v0, 0xe29

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a032d

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 282
    const/16 v0, 0xe2a

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a032e

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 283
    const/16 v0, 0xe2b

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a032f

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 284
    const/16 v0, 0xe2c

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a0330

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 285
    const/16 v0, 0xe2d

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a0331

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 286
    const/16 v0, 0xe2e

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a0332

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 287
    const/16 v0, 0xe2f

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a0333

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 288
    const/16 v0, 0xe30

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a0334

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 289
    const/16 v0, 0xe31

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a0335

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 290
    const/16 v0, 0xe32

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a0336

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 291
    const/16 v0, 0xe33

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a0337

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 292
    const/16 v0, 0xe34

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a0338

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 293
    const/16 v0, 0xe35

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a0339

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 294
    const/16 v0, 0xe36

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a033a

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 295
    const/16 v0, 0xe37

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a033b

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 296
    const/16 v0, 0xe38

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a033c

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 299
    const/16 v7, 0xf3c

    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a0001

    const/high16 v6, 0x7f0a0000

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIIIII)V

    invoke-virtual {p0, v7, v0}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 300
    const/16 v0, 0xf3d

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a02d2

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 301
    const/16 v0, 0xf3e

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a02dd

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 302
    const/16 v0, 0xf3f

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a02e8

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 303
    const/16 v0, 0xf40

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a02ee

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 304
    const/16 v0, 0xf41

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a02ef

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 305
    const/16 v0, 0xf42

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a02f0

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 306
    const/16 v0, 0xf43

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a02f1

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 307
    const/16 v0, 0xf44

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a02f2

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 308
    const/16 v0, 0xf45

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a02f3

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 309
    const/16 v0, 0xf46

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a02d3

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 310
    const/16 v0, 0xf47

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a02d4

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 311
    const/16 v0, 0xf48

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a02d5

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 312
    const/16 v0, 0xf49

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a02d6

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 313
    const/16 v0, 0xf4a

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a02d7

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 314
    const/16 v0, 0xf4b

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a02d8

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 315
    const/16 v0, 0xf4c

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a02d9

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 316
    const/16 v0, 0xf4d

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a02da

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 317
    const/16 v0, 0xf4e

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a02db

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 318
    const/16 v0, 0xf50

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a02dc

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 319
    const/16 v0, 0xf51

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a02de

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 320
    const/16 v0, 0xf52

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a02df

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 321
    const/16 v0, 0xf53

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a02e0

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 322
    const/16 v0, 0xf54

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a02e1

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 323
    const/16 v0, 0xf55

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a02e2

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 324
    const/16 v0, 0xf56

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a02e3

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 325
    const/16 v0, 0xf57

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a02e4

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 326
    const/16 v0, 0xf58

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a02e5

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 327
    const/16 v0, 0xf59

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a02e6

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 328
    const/16 v0, 0xf5a

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a02e7

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 329
    const/16 v0, 0xf5b

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a02e9

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 330
    const/16 v0, 0xf5c

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a02ea

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 331
    const/16 v0, 0xf5d

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a02eb

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 332
    const/16 v0, 0xf5e

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a02ec

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 335
    const/16 v0, 0x44c

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const/high16 v4, 0x7f0a0000

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 336
    const/16 v0, 0x44d

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a02c6

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 337
    const/16 v0, 0x44e

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a02c9

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 338
    const/16 v0, 0x44f

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a02bd

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 339
    const/16 v0, 0x450

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a02be

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 340
    const/16 v0, 0x451

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a02bf

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 341
    const/16 v0, 0x452

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a02c1

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 342
    const/16 v0, 0x453

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a02c2

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 343
    const/16 v0, 0x454

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a02c3

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 344
    const/16 v0, 0x455

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a02c5

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 345
    const/16 v0, 0x456

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a02c7

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 346
    const/16 v0, 0x457

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a02c8

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 347
    const/16 v0, 0x458

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a02ca

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 350
    const/16 v0, 0x384

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f020178

    const/high16 v5, 0x7f0a0000

    invoke-direct {v3, v4, v2, v2, v5}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 351
    const/16 v0, 0x385

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f020189

    const v5, 0x7f0a0109

    invoke-direct {v3, v4, v2, v2, v5}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 352
    const/16 v0, 0x386

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f020188

    const v5, 0x7f0a0108

    invoke-direct {v3, v4, v2, v2, v5}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 353
    const/16 v0, 0x387

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f020187

    const v5, 0x7f0a0107

    invoke-direct {v3, v4, v2, v2, v5}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 354
    const/16 v0, 0x388

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f020186

    const v5, 0x7f0a0106

    invoke-direct {v3, v4, v2, v2, v5}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 355
    const/16 v0, 0x389

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f02018a

    const v5, 0x7f0a010a

    invoke-direct {v3, v4, v2, v2, v5}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 358
    const/16 v0, 0x5dc

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f020178

    const/high16 v5, 0x7f0a0000

    invoke-direct {v3, v4, v2, v2, v5}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 359
    const/16 v0, 0x5dd

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f020176

    const v5, 0x7f0a0044

    invoke-direct {v3, v4, v2, v2, v5}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 360
    const/16 v0, 0x5de

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f020177

    const v5, 0x7f0a0045

    invoke-direct {v3, v4, v2, v2, v5}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 363
    const/16 v0, 0xe74

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a0301

    invoke-direct {v3, v10, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 364
    const/16 v0, 0xe75

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a0309

    invoke-direct {v3, v10, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 365
    const/16 v0, 0xe76

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a0308

    invoke-direct {v3, v10, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 366
    const/16 v0, 0xe77

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a0307

    invoke-direct {v3, v10, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 367
    const/16 v0, 0xe78

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a0306

    invoke-direct {v3, v10, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 368
    const/16 v0, 0xe79

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a0305

    invoke-direct {v3, v10, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 369
    const/16 v0, 0xe7a

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a0304

    invoke-direct {v3, v10, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 370
    const/16 v0, 0xe7b

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a0303

    invoke-direct {v3, v10, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 371
    const/16 v0, 0xe7c

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a0302

    invoke-direct {v3, v10, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 372
    const/16 v0, 0xe7d

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a0300

    invoke-direct {v3, v10, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 373
    const/16 v0, 0xe7e

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a02ff

    invoke-direct {v3, v10, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 374
    const/16 v0, 0xe7f

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a030a

    invoke-direct {v3, v10, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 375
    const/16 v0, 0xe80

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a030c

    invoke-direct {v3, v10, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 376
    const/16 v0, 0xe81

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a030d

    invoke-direct {v3, v10, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 377
    const/16 v0, 0xe82

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a030e

    invoke-direct {v3, v10, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 378
    const/16 v0, 0xe83

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a030f

    invoke-direct {v3, v10, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 379
    const/16 v0, 0xe84

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a0310

    invoke-direct {v3, v10, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 380
    const/16 v0, 0xe85

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a0311

    invoke-direct {v3, v10, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 381
    const/16 v0, 0xe86

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a0312

    invoke-direct {v3, v10, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 382
    const/16 v0, 0xe87

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a0313

    invoke-direct {v3, v10, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 383
    const/16 v0, 0xe88

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a030b

    invoke-direct {v3, v10, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 385
    const/16 v0, 0x19ca

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a02f6

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 386
    const/16 v0, 0x19cb

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a02f7

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 387
    const/16 v0, 0x19cc

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a02f8

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 388
    const/16 v0, 0x19cd

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a02f9

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 389
    const/16 v0, 0x19ce

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a02fa

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 390
    const/16 v0, 0x19cf

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a02fb

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 391
    const/16 v0, 0x19d0

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a02fc

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 392
    const/16 v0, 0x19d1

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a02fd

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 393
    const/16 v0, 0x19d2

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a02fe

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 396
    const/16 v0, 0x1a2e

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a02f6

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 397
    const/16 v0, 0x1a2f

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a02f7

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 398
    const/16 v0, 0x1a30

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a02f8

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 399
    const/16 v0, 0x1a31

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a02f9

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 400
    const/16 v0, 0x1a32

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a02fa

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 401
    const/16 v0, 0x1a33

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a02fb

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 402
    const/16 v0, 0x1a34

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a02fc

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 403
    const/16 v0, 0x1a35

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a02fd

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 404
    const/16 v0, 0x1a36

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a02fe

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 407
    const/16 v0, 0x1a92

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a02f6

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 408
    const/16 v0, 0x1a93

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a02f7

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 409
    const/16 v0, 0x1a94

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a02f8

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 410
    const/16 v0, 0x1a95

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a02f9

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 411
    const/16 v0, 0x1a96

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a02fa

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 412
    const/16 v0, 0x1a97

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a02fb

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 413
    const/16 v0, 0x1a98

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a02fc

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 414
    const/16 v0, 0x1a99

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a02fd

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 415
    const/16 v0, 0x1a9a

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a02fe

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 418
    const/16 v0, 0x1af6

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a02f6

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 419
    const/16 v0, 0x1af7

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a02f7

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 420
    const/16 v0, 0x1af8

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a02f8

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 421
    const/16 v0, 0x1af9

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a02f9

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 422
    const/16 v0, 0x1afa

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a02fa

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 423
    const/16 v0, 0x1afb

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a02fb

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 424
    const/16 v0, 0x1afc

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a02fc

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 425
    const/16 v0, 0x1afd

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a02fd

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 426
    const/16 v0, 0x1afe

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0a02fe

    invoke-direct {v3, v1, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 429
    const/16 v0, 0xed8

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    invoke-direct {v3, v1, v2, v2, v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 430
    const/16 v0, 0xed9

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    invoke-direct {v3, v1, v2, v2, v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 433
    const/16 v0, 0x1194

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    invoke-direct {v3, v2, v2, v2, v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 434
    const/16 v0, 0x1195

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    invoke-direct {v3, v2, v2, v2, v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 437
    const/16 v0, 0x1450

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0201b5

    const v5, 0x7f0a0224

    invoke-direct {v3, v4, v2, v2, v5}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 438
    const/16 v0, 0x1451

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0201b4

    const v5, 0x7f0a0225

    invoke-direct {v3, v4, v2, v2, v5}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 441
    const/16 v0, 0x16a8

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    invoke-direct {v3, v1, v2, v2, v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 442
    const/16 v0, 0x16a9

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    invoke-direct {v3, v1, v2, v2, v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 445
    const/16 v0, 0x15e0

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    invoke-direct {v3, v1, v2, v2, v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 446
    const/16 v0, 0x15e1

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    invoke-direct {v3, v1, v2, v2, v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 449
    const/16 v0, 0x262

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0201a0

    invoke-direct {v3, v4, v2, v2, v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 450
    const/16 v0, 0x263

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0201a1

    invoke-direct {v3, v4, v2, v2, v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 451
    const/16 v0, 0x264

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f02019f

    const v5, 0x7f0a003e

    invoke-direct {v3, v4, v2, v2, v5}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 454
    const/16 v0, 0x276

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0201a0

    invoke-direct {v3, v4, v2, v2, v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 455
    const/16 v0, 0x277

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0201a1

    invoke-direct {v3, v4, v2, v2, v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 456
    const/16 v0, 0x278

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f02019f

    const v5, 0x7f0a003e

    invoke-direct {v3, v4, v2, v2, v5}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 459
    const/16 v0, 0x1838

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0201b7

    const v5, 0x7f0201b7

    const v7, 0x7f0a0153

    const v10, 0x7f0201b7

    move v6, v2

    move v8, v2

    move v9, v2

    invoke-direct/range {v3 .. v10}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIIIIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 461
    const/16 v0, 0x1839

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0201b8

    const v5, 0x7f0201b8

    const v7, 0x7f0a0154

    const v10, 0x7f0201b8

    move v6, v2

    move v8, v2

    move v9, v2

    invoke-direct/range {v3 .. v10}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIIIIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 463
    const/16 v0, 0x183a

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0201b9

    const v5, 0x7f0201b9

    const v7, 0x7f0a0155

    const v10, 0x7f0201b9

    move v6, v2

    move v8, v2

    move v9, v2

    invoke-direct/range {v3 .. v10}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIIIIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 465
    const/16 v0, 0x1842

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f020193

    const v5, 0x7f020193

    const v7, 0x7f0a0151

    const v10, 0x7f020193

    move v6, v2

    move v8, v2

    move v9, v2

    invoke-direct/range {v3 .. v10}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIIIIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 467
    const/16 v0, 0x1843

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f020198

    const v5, 0x7f020198

    const v7, 0x7f0a0152

    const v10, 0x7f020198

    move v6, v2

    move v8, v2

    move v9, v2

    invoke-direct/range {v3 .. v10}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIIIIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 469
    const/16 v0, 0x184c

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f020194

    const v5, 0x7f020194

    const v7, 0x7f0a0144

    const v10, 0x7f020194

    move v6, v2

    move v8, v2

    move v9, v2

    invoke-direct/range {v3 .. v10}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIIIIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 471
    const/16 v0, 0x184d

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f020195

    const v5, 0x7f020195

    const v7, 0x7f0a0146

    const v10, 0x7f020195

    move v6, v2

    move v8, v2

    move v9, v2

    invoke-direct/range {v3 .. v10}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIIIIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 473
    const/16 v0, 0x184e

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f020197

    const v5, 0x7f020197

    const v7, 0x7f0a0147

    const v10, 0x7f020197

    move v6, v2

    move v8, v2

    move v9, v2

    invoke-direct/range {v3 .. v10}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIIIIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 475
    const/16 v0, 0x184f

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f020196

    const v5, 0x7f020196

    const v7, 0x7f0a0146

    const v10, 0x7f020196

    move v6, v2

    move v8, v2

    move v9, v2

    invoke-direct/range {v3 .. v10}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIIIIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 477
    const/16 v0, 0x1856

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f020199

    const v5, 0x7f020199

    const v7, 0x7f0a0148

    const v10, 0x7f020199

    move v6, v2

    move v8, v2

    move v9, v2

    invoke-direct/range {v3 .. v10}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIIIIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 479
    const/16 v0, 0x1857

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f02019a

    const v5, 0x7f02019a

    const v7, 0x7f0a014a

    const v10, 0x7f02019a

    move v6, v2

    move v8, v2

    move v9, v2

    invoke-direct/range {v3 .. v10}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIIIIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 481
    const/16 v0, 0x1858

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f02019c

    const v5, 0x7f02019c

    const v7, 0x7f0a014b

    const v10, 0x7f02019c

    move v6, v2

    move v8, v2

    move v9, v2

    invoke-direct/range {v3 .. v10}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIIIIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 483
    const/16 v0, 0x1859

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f02019b

    const v5, 0x7f02019b

    const v7, 0x7f0a014a

    const v10, 0x7f02019b

    move v6, v2

    move v8, v2

    move v9, v2

    invoke-direct/range {v3 .. v10}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIIIIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 487
    const/16 v0, 0x1860

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0201bc

    const v7, 0x7f0a0141

    const v10, 0x7f020162

    move v5, v2

    move v6, v2

    move v8, v2

    move v9, v2

    invoke-direct/range {v3 .. v10}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIIIIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 489
    const/16 v0, 0x1861

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0201bd

    const v7, 0x7f0a0142

    const v10, 0x7f020163

    move v5, v2

    move v6, v2

    move v8, v2

    move v9, v2

    invoke-direct/range {v3 .. v10}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIIIIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 491
    const/16 v0, 0x1862

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0201be

    const v7, 0x7f0a0143

    const v10, 0x7f020164

    move v5, v2

    move v6, v2

    move v8, v2

    move v9, v2

    invoke-direct/range {v3 .. v10}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIIIIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 493
    const/16 v0, 0x1863

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v4, 0x7f0201bb

    const v7, 0x7f0a0140

    const v10, 0x7f020161

    move v5, v2

    move v6, v2

    move v8, v2

    move v9, v2

    invoke-direct/range {v3 .. v10}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIIIIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 497
    const/16 v0, 0x578

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    invoke-direct {v3, v1, v2, v2, v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 498
    const/16 v0, 0x579

    new-instance v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    invoke-direct {v3, v1, v2, v2, v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 501
    const/16 v0, 0x189c

    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v3, 0x7f0201b2

    invoke-direct {v1, v3, v2, v2, v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 502
    const/16 v0, 0x189d

    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v3, 0x7f0201b3

    invoke-direct {v1, v3, v2, v2, v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 505
    const/16 v0, 0x187e

    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v3, 0x7f0201b2

    invoke-direct {v1, v3, v2, v2, v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 506
    const/16 v0, 0x187f

    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v3, 0x7f0201b3

    invoke-direct {v1, v3, v2, v2, v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 509
    const/16 v0, 0x18a6

    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v3, 0x7f020192

    const v4, 0x7f0a0134

    invoke-direct {v1, v3, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 510
    const/16 v0, 0x18a7

    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v3, 0x7f0201b1

    const v4, 0x7f0a01cd

    invoke-direct {v1, v3, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 513
    const/16 v8, 0x1900

    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v1, 0x7f0201ac

    const/high16 v4, 0x7f0a0000

    const v7, 0x7f020160

    move v3, v2

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIIIIII)V

    invoke-virtual {p0, v8, v0}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 514
    const/16 v8, 0x1901

    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v1, 0x7f0201aa

    const v4, 0x7f0a0052

    const v6, 0x7f0a0053

    const v7, 0x7f02015e

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIIIIII)V

    invoke-virtual {p0, v8, v0}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 515
    const/16 v8, 0x1902

    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v1, 0x7f0201ab

    const v4, 0x7f0a0054

    const v6, 0x7f0a0055

    const v7, 0x7f02015f

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIIIIII)V

    invoke-virtual {p0, v8, v0}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 516
    const/16 v8, 0x1903

    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v1, 0x7f0201a8

    const v4, 0x7f0a004e

    const v6, 0x7f0a004f

    const v7, 0x7f02015c

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIIIIII)V

    invoke-virtual {p0, v8, v0}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 517
    const/16 v8, 0x1904

    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v1, 0x7f0201a9

    const v4, 0x7f0a0050

    const v6, 0x7f0a0051

    const v7, 0x7f02015d

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIIIIII)V

    invoke-virtual {p0, v8, v0}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 520
    const/16 v0, 0x1db0

    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v3, 0x7f0a0167

    invoke-direct {v1, v2, v2, v2, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 521
    const/16 v0, 0x1db1

    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v3, 0x7f0a0242

    invoke-direct {v1, v2, v2, v2, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 522
    const/16 v0, 0x1db2

    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v3, 0x7f0a0258

    invoke-direct {v1, v2, v2, v2, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 523
    const/16 v0, 0x1db3

    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v3, 0x7f0a0283

    invoke-direct {v1, v2, v2, v2, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 524
    const/16 v0, 0x1db4

    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v3, 0x7f0a0175

    invoke-direct {v1, v2, v2, v2, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 525
    const/16 v0, 0x1db5

    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v3, 0x7f0a0227

    invoke-direct {v1, v2, v2, v2, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 528
    const/16 v0, 0x238d

    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v3, 0x7f020287

    const v4, 0x7f0a0167

    invoke-direct {v1, v3, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 529
    const/16 v0, 0x238e

    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v3, 0x7f02028f

    const v4, 0x7f0a0167

    invoke-direct {v1, v3, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 530
    const/16 v0, 0x238f

    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v3, 0x7f02028d

    const v4, 0x7f0a0167

    invoke-direct {v1, v3, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 531
    const/16 v0, 0x2390

    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v3, 0x7f020247

    const v4, 0x7f0a0167

    invoke-direct {v1, v3, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 532
    const/16 v0, 0x2391

    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v3, 0x7f020299

    const v4, 0x7f0a0167

    invoke-direct {v1, v3, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 533
    const/16 v0, 0x2392

    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v3, 0x7f02029d

    const v4, 0x7f0a0167

    invoke-direct {v1, v3, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 534
    const/16 v0, 0x2393

    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v3, 0x7f02027f

    const v4, 0x7f0a0167

    invoke-direct {v1, v3, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 535
    const/16 v0, 0x2394

    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v3, 0x7f02025f

    const v4, 0x7f0a0167

    invoke-direct {v1, v3, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 536
    const/16 v0, 0x2395

    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v3, 0x7f020251

    const v4, 0x7f0a0167

    invoke-direct {v1, v3, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 539
    const/16 v0, 0x23f1

    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v3, 0x7f020255

    const v4, 0x7f0a0242

    invoke-direct {v1, v3, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 540
    const/16 v0, 0x23f2

    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v3, 0x7f020269

    const v4, 0x7f0a0242

    invoke-direct {v1, v3, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 541
    const/16 v0, 0x23f3

    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v3, 0x7f02027b

    const v4, 0x7f0a0242

    invoke-direct {v1, v3, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 542
    const/16 v0, 0x23f4

    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v3, 0x7f020277

    const v4, 0x7f0a0242

    invoke-direct {v1, v3, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 543
    const/16 v0, 0x23f5

    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v3, 0x7f020237

    const v4, 0x7f0a0242

    invoke-direct {v1, v3, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 544
    const/16 v0, 0x23f6

    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v3, 0x7f02025d

    const v4, 0x7f0a0242

    invoke-direct {v1, v3, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 545
    const/16 v0, 0x23f7

    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v3, 0x7f020259

    const v4, 0x7f0a0242

    invoke-direct {v1, v3, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 546
    const/16 v0, 0x23f8

    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v3, 0x7f020239

    const v4, 0x7f0a0242

    invoke-direct {v1, v3, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 547
    const/16 v0, 0x23f9

    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v3, 0x7f020263

    const v4, 0x7f0a0242

    invoke-direct {v1, v3, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 550
    const/16 v0, 0x2455

    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v3, 0x7f020235

    const v4, 0x7f0a0258

    invoke-direct {v1, v3, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 551
    const/16 v0, 0x2456

    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v3, 0x7f02029b

    const v4, 0x7f0a0258

    invoke-direct {v1, v3, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 552
    const/16 v0, 0x2457

    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v3, 0x7f020295

    const v4, 0x7f0a0258

    invoke-direct {v1, v3, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 553
    const/16 v0, 0x2458

    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v3, 0x7f020241

    const v4, 0x7f0a0258

    invoke-direct {v1, v3, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 554
    const/16 v0, 0x2459

    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v3, 0x7f020283

    const v4, 0x7f0a0258

    invoke-direct {v1, v3, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 555
    const/16 v0, 0x245a

    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v3, 0x7f02027d

    const v4, 0x7f0a0258

    invoke-direct {v1, v3, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 556
    const/16 v0, 0x245b

    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v3, 0x7f02023b

    const v4, 0x7f0a0258

    invoke-direct {v1, v3, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 557
    const/16 v0, 0x245c

    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v3, 0x7f020233

    const v4, 0x7f0a0258

    invoke-direct {v1, v3, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 558
    const/16 v0, 0x245d

    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v3, 0x7f02024d

    const v4, 0x7f0a0258

    invoke-direct {v1, v3, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 561
    const/16 v0, 0x24b9

    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v3, 0x7f02026b

    const v4, 0x7f0a0283

    invoke-direct {v1, v3, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 562
    const/16 v0, 0x24ba

    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v3, 0x7f02026d

    const v4, 0x7f0a0283

    invoke-direct {v1, v3, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 563
    const/16 v0, 0x24bb

    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v3, 0x7f020275

    const v4, 0x7f0a0283

    invoke-direct {v1, v3, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 564
    const/16 v0, 0x24bc

    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v3, 0x7f020243

    const v4, 0x7f0a0283

    invoke-direct {v1, v3, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 565
    const/16 v0, 0x24bd

    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v3, 0x7f020279

    const v4, 0x7f0a0283

    invoke-direct {v1, v3, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 566
    const/16 v0, 0x24be

    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v3, 0x7f02023d

    const v4, 0x7f0a0283

    invoke-direct {v1, v3, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 567
    const/16 v0, 0x24bf

    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v3, 0x7f02023f

    const v4, 0x7f0a0283

    invoke-direct {v1, v3, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 568
    const/16 v0, 0x24c0

    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v3, 0x7f020297

    const v4, 0x7f0a0283

    invoke-direct {v1, v3, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 569
    const/16 v0, 0x24c1

    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v3, 0x7f02025b

    const v4, 0x7f0a0283

    invoke-direct {v1, v3, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 572
    const/16 v0, 0x251d

    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v3, 0x7f020271

    const v4, 0x7f0a0175

    invoke-direct {v1, v3, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 573
    const/16 v0, 0x251e

    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v3, 0x7f020291

    const v4, 0x7f0a0175

    invoke-direct {v1, v3, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 574
    const/16 v0, 0x251f

    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v3, 0x7f020265

    const v4, 0x7f0a0175

    invoke-direct {v1, v3, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 575
    const/16 v0, 0x2520

    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v3, 0x7f020285

    const v4, 0x7f0a0175

    invoke-direct {v1, v3, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 576
    const/16 v0, 0x2521

    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v3, 0x7f020289

    const v4, 0x7f0a0175

    invoke-direct {v1, v3, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 577
    const/16 v0, 0x2522

    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v3, 0x7f020293

    const v4, 0x7f0a0175

    invoke-direct {v1, v3, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 578
    const/16 v0, 0x2523

    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v3, 0x7f02028b

    const v4, 0x7f0a0175

    invoke-direct {v1, v3, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 579
    const/16 v0, 0x2524

    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v3, 0x7f020245

    const v4, 0x7f0a0175

    invoke-direct {v1, v3, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 580
    const/16 v0, 0x2525

    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v3, 0x7f020281

    const v4, 0x7f0a0175

    invoke-direct {v1, v3, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 583
    const/16 v0, 0x2581

    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v3, 0x7f020273

    const v4, 0x7f0a0227

    invoke-direct {v1, v3, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 584
    const/16 v0, 0x2582

    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v3, 0x7f020257

    const v4, 0x7f0a0227

    invoke-direct {v1, v3, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 585
    const/16 v0, 0x2583

    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v3, 0x7f02024b

    const v4, 0x7f0a0227

    invoke-direct {v1, v3, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 586
    const/16 v0, 0x2584

    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v3, 0x7f02024f

    const v4, 0x7f0a0227

    invoke-direct {v1, v3, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 587
    const/16 v0, 0x2585

    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v3, 0x7f020267

    const v4, 0x7f0a0227

    invoke-direct {v1, v3, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 588
    const/16 v0, 0x2586

    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v3, 0x7f02026f

    const v4, 0x7f0a0227

    invoke-direct {v1, v3, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 589
    const/16 v0, 0x2587

    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v3, 0x7f020253

    const v4, 0x7f0a0227

    invoke-direct {v1, v3, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 590
    const/16 v0, 0x2588

    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v3, 0x7f020249

    const v4, 0x7f0a0227

    invoke-direct {v1, v3, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 591
    const/16 v0, 0x2589

    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v3, 0x7f020261

    const v4, 0x7f0a0227

    invoke-direct {v1, v3, v2, v2, v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(IIII)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$1;->put(ILjava/lang/Object;)V

    .line 592
    return-void
.end method
