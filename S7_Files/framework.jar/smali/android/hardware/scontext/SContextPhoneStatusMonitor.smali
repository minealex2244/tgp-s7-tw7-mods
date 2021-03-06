.class public Landroid/hardware/scontext/SContextPhoneStatusMonitor;
.super Landroid/hardware/scontext/SContextEventContext;
.source "SContextPhoneStatusMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/scontext/SContextPhoneStatusMonitor$1;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/scontext/SContextPhoneStatusMonitor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 216
    new-instance v0, Landroid/hardware/scontext/SContextPhoneStatusMonitor$1;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextPhoneStatusMonitor$1;-><init>()V

    sput-object v0, Landroid/hardware/scontext/SContextPhoneStatusMonitor;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 107
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 115
    invoke-direct {p0}, Landroid/hardware/scontext/SContextEventContext;-><init>()V

    .line 116
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextPhoneStatusMonitor;->mContext:Landroid/os/Bundle;

    .line 115
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 122
    invoke-direct {p0}, Landroid/hardware/scontext/SContextEventContext;-><init>()V

    .line 123
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextPhoneStatusMonitor;->readFromParcel(Landroid/os/Parcel;)V

    .line 122
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 209
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextPhoneStatusMonitor;->mContext:Landroid/os/Bundle;

    .line 208
    return-void
.end method


# virtual methods
.method public getLcdDirection()I
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Landroid/hardware/scontext/SContextPhoneStatusMonitor;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "lcddirect"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getProximity()I
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Landroid/hardware/scontext/SContextPhoneStatusMonitor;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "embower"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTimeStamp()J
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Landroid/hardware/scontext/SContextPhoneStatusMonitor;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "timestamp"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public isInSuroundingEnvironment()Z
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Landroid/hardware/scontext/SContextPhoneStatusMonitor;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "lcdOffRecommend"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setValues(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/os/Bundle;

    .prologue
    .line 185
    iput-object p1, p0, Landroid/hardware/scontext/SContextPhoneStatusMonitor;->mContext:Landroid/os/Bundle;

    .line 184
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 199
    iget-object v0, p0, Landroid/hardware/scontext/SContextPhoneStatusMonitor;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 198
    return-void
.end method
