.class public final Lcom/sec/android/app/camera/resourcedata/StickerMenuResourceBundle;
.super Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
.source "StickerMenuResourceBundle.java"


# instance fields
.field private mPackageName:Ljava/lang/String;

.field private mStickerName:Ljava/lang/String;

.field private mStickerType:I


# direct methods
.method public varargs constructor <init>([I)V
    .locals 0
    .param p1, "ids"    # [I

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;-><init>([I)V

    .line 28
    return-void
.end method


# virtual methods
.method public getPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/StickerMenuResourceBundle;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getStickerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/StickerMenuResourceBundle;->mStickerName:Ljava/lang/String;

    return-object v0
.end method

.method public getStickerType()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/sec/android/app/camera/resourcedata/StickerMenuResourceBundle;->mStickerType:I

    return v0
.end method

.method public setPackage(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/sec/android/app/camera/resourcedata/StickerMenuResourceBundle;->mPackageName:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setStickerName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/sec/android/app/camera/resourcedata/StickerMenuResourceBundle;->mStickerName:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setStickerType(I)V
    .locals 0
    .param p1, "stickerType"    # I

    .prologue
    .line 73
    iput p1, p0, Lcom/sec/android/app/camera/resourcedata/StickerMenuResourceBundle;->mStickerType:I

    .line 74
    return-void
.end method
