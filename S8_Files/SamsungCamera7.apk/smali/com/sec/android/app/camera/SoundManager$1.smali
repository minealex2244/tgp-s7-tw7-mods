.class final Lcom/sec/android/app/camera/SoundManager$1;
.super Landroid/util/SparseIntArray;
.source "SoundManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/SoundManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    const v2, 0x7f08000f

    .line 45
    invoke-direct {p0}, Landroid/util/SparseIntArray;-><init>()V

    .line 47
    const/16 v0, 0x14

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/app/camera/SoundManager$1;->append(II)V

    .line 48
    const/16 v0, 0xa

    const v1, 0x7f08000b

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/SoundManager$1;->append(II)V

    .line 49
    const/4 v0, 0x5

    const v1, 0x7f08000c

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/SoundManager$1;->append(II)V

    .line 50
    const/4 v0, 0x4

    const v1, 0x7f08000d

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/SoundManager$1;->append(II)V

    .line 51
    const/4 v0, 0x3

    const v1, 0x7f08000e

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/SoundManager$1;->append(II)V

    .line 52
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/app/camera/SoundManager$1;->append(II)V

    .line 53
    return-void
.end method
