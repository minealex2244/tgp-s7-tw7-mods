.class Lcom/sec/android/app/camera/command/CommandIdMap$CombinedKey;
.super Ljava/lang/Object;
.source "CommandIdMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/command/CommandIdMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CombinedKey"
.end annotation


# static fields
.field private static final MENUID_MASK:I = 0x7fff

.field private static final MODEID_LIMIT_VALUE:I = 0x7fff

.field private static final MODEID_MASK:I = 0xffff

.field private static final NO_VALUE:I = -0x1

.field private static final SHIFT_MOVE:I = 0x10


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1566
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getKey(II)I
    .locals 3
    .param p0, "menuId"    # I
    .param p1, "modeId"    # I

    .prologue
    const v2, 0xffff

    .line 1588
    if-gez p1, :cond_0

    .line 1589
    and-int/lit16 v0, p0, 0x7fff

    shl-int/lit8 v0, v0, 0x10

    rsub-int v1, p1, 0x7fff

    and-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 1591
    :goto_0
    return v0

    :cond_0
    and-int/lit16 v0, p0, 0x7fff

    shl-int/lit8 v0, v0, 0x10

    and-int v1, p1, v2

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public static getMenuId(I)I
    .locals 1
    .param p0, "combinedKey"    # I

    .prologue
    .line 1595
    shr-int/lit8 v0, p0, 0x10

    return v0
.end method

.method public static getModeId(I)I
    .locals 3
    .param p0, "combinedKey"    # I

    .prologue
    const v2, 0xffff

    .line 1599
    and-int v0, p0, v2

    const/16 v1, 0x7fff

    if-le v0, v1, :cond_0

    .line 1600
    and-int v0, p0, v2

    rsub-int v0, v0, 0x7fff

    .line 1602
    :goto_0
    return v0

    :cond_0
    and-int v0, p0, v2

    goto :goto_0
.end method
