.class Lcom/sec/android/app/camera/DimController$SettingValueReference;
.super Ljava/lang/Object;
.source "DimController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/DimController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SettingValueReference"
.end annotation


# instance fields
.field private mReferenceCount:I

.field private final mSettingValue:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "settingsValue"    # I

    .prologue
    .line 1344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1342
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/DimController$SettingValueReference;->mReferenceCount:I

    .line 1345
    iput p1, p0, Lcom/sec/android/app/camera/DimController$SettingValueReference;->mSettingValue:I

    .line 1346
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "settingsValue"    # I
    .param p2, "referenceCount"    # I

    .prologue
    .line 1348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1342
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/DimController$SettingValueReference;->mReferenceCount:I

    .line 1349
    iput p1, p0, Lcom/sec/android/app/camera/DimController$SettingValueReference;->mSettingValue:I

    .line 1350
    iput p2, p0, Lcom/sec/android/app/camera/DimController$SettingValueReference;->mReferenceCount:I

    .line 1351
    return-void
.end method


# virtual methods
.method public decreaseReferenceCount()V
    .locals 3

    .prologue
    .line 1354
    iget v0, p0, Lcom/sec/android/app/camera/DimController$SettingValueReference;->mReferenceCount:I

    if-lez v0, :cond_0

    .line 1355
    iget v0, p0, Lcom/sec/android/app/camera/DimController$SettingValueReference;->mReferenceCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/DimController$SettingValueReference;->mReferenceCount:I

    .line 1357
    :cond_0
    const-string v0, "DimController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "decreaseReferenceCount: mReferenceCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/DimController$SettingValueReference;->mReferenceCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1358
    return-void
.end method

.method public getReferenceCount()I
    .locals 1

    .prologue
    .line 1361
    iget v0, p0, Lcom/sec/android/app/camera/DimController$SettingValueReference;->mReferenceCount:I

    return v0
.end method

.method public getSettingsValue()I
    .locals 1

    .prologue
    .line 1365
    iget v0, p0, Lcom/sec/android/app/camera/DimController$SettingValueReference;->mSettingValue:I

    return v0
.end method

.method public increaseReferenceCount()V
    .locals 3

    .prologue
    .line 1369
    iget v0, p0, Lcom/sec/android/app/camera/DimController$SettingValueReference;->mReferenceCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/DimController$SettingValueReference;->mReferenceCount:I

    .line 1370
    const-string v0, "DimController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "increaseReferenceCount: mReferenceCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/DimController$SettingValueReference;->mReferenceCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1371
    return-void
.end method
