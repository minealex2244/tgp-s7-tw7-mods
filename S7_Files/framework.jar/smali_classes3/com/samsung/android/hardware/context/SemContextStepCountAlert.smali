.class public Lcom/samsung/android/hardware/context/SemContextStepCountAlert;
.super Lcom/samsung/android/hardware/context/SemContextEventContext;
.source "SemContextStepCountAlert.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/context/SemContextStepCountAlert$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/hardware/context/SemContextStepCountAlert;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXPIRED:I = 0x1

.field public static final UNKNOWN:I


# instance fields
.field private mContext:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 98
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextStepCountAlert$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextStepCountAlert$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextStepCountAlert;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 82
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;-><init>()V

    .line 119
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextStepCountAlert;->mContext:Landroid/os/Bundle;

    .line 118
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;-><init>()V

    .line 126
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextStepCountAlert;->readFromParcel(Landroid/os/Parcel;)V

    .line 125
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 175
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextStepCountAlert;->mContext:Landroid/os/Bundle;

    .line 174
    return-void
.end method


# virtual methods
.method public getAlert()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 136
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextStepCountAlert;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "Action"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 137
    return v2

    .line 139
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setValues(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/os/Bundle;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextStepCountAlert;->mContext:Landroid/os/Bundle;

    .line 150
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 165
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextStepCountAlert;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 164
    return-void
.end method
