.class final Landroid/hardware/scontext/SContextStepLevelMonitor$1;
.super Ljava/lang/Object;
.source "SContextStepLevelMonitor.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/scontext/SContextStepLevelMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/hardware/scontext/SContextStepLevelMonitor;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/scontext/SContextStepLevelMonitor;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 257
    new-instance v0, Landroid/hardware/scontext/SContextStepLevelMonitor;

    invoke-direct {v0, p1}, Landroid/hardware/scontext/SContextStepLevelMonitor;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 256
    invoke-virtual {p0, p1}, Landroid/hardware/scontext/SContextStepLevelMonitor$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/scontext/SContextStepLevelMonitor;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/hardware/scontext/SContextStepLevelMonitor;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 262
    new-array v0, p1, [Landroid/hardware/scontext/SContextStepLevelMonitor;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 261
    invoke-virtual {p0, p1}, Landroid/hardware/scontext/SContextStepLevelMonitor$1;->newArray(I)[Landroid/hardware/scontext/SContextStepLevelMonitor;

    move-result-object v0

    return-object v0
.end method