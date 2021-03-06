.class public abstract Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener$Stub;
.super Landroid/os/Binder;
.source "ISpenGestureHoverListener.java"

# interfaces
.implements Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.content.smartclip.ISpenGestureHoverListener"

.field static final TRANSACTION_onBackPressed:I = 0x4

.field static final TRANSACTION_onHoverEnter:I = 0x1

.field static final TRANSACTION_onHoverExit:I = 0x2

.field static final TRANSACTION_onHoverExitTowardBack:I = 0x3

.field static final TRANSACTION_onHoverStay:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string/jumbo v0, "com.samsung.android.content.smartclip.ISpenGestureHoverListener"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 26
    if-nez p0, :cond_0

    .line 27
    return-object v1

    .line 29
    :cond_0
    const-string/jumbo v1, "com.samsung.android.content.smartclip.ISpenGestureHoverListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 83
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    return v2

    .line 45
    :sswitch_0
    const-string/jumbo v2, "com.samsung.android.content.smartclip.ISpenGestureHoverListener"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    return v3

    .line 50
    :sswitch_1
    const-string/jumbo v2, "com.samsung.android.content.smartclip.ISpenGestureHoverListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener$Stub;->onHoverEnter()V

    .line 52
    return v3

    .line 56
    :sswitch_2
    const-string/jumbo v2, "com.samsung.android.content.smartclip.ISpenGestureHoverListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener$Stub;->onHoverExit()V

    .line 58
    return v3

    .line 62
    :sswitch_3
    const-string/jumbo v2, "com.samsung.android.content.smartclip.ISpenGestureHoverListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener$Stub;->onHoverExitTowardBack()V

    .line 64
    return v3

    .line 68
    :sswitch_4
    const-string/jumbo v2, "com.samsung.android.content.smartclip.ISpenGestureHoverListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener$Stub;->onBackPressed()V

    .line 70
    return v3

    .line 74
    :sswitch_5
    const-string/jumbo v2, "com.samsung.android.content.smartclip.ISpenGestureHoverListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 78
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 79
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener$Stub;->onHoverStay(II)V

    .line 80
    return v3

    .line 41
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
