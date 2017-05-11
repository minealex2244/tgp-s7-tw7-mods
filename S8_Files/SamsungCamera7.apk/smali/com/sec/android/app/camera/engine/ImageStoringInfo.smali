.class public Lcom/sec/android/app/camera/engine/ImageStoringInfo;
.super Ljava/lang/Object;
.source "ImageStoringInfo.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/Engine$StoringInfo;


# instance fields
.field private mDateTaken:J

.field private mDirectory:Ljava/lang/String;

.field private mFileName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1
    .param p1, "directory"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "dateTaken"    # J

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/sec/android/app/camera/engine/ImageStoringInfo;->mDirectory:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/sec/android/app/camera/engine/ImageStoringInfo;->mFileName:Ljava/lang/String;

    .line 35
    iput-wide p3, p0, Lcom/sec/android/app/camera/engine/ImageStoringInfo;->mDateTaken:J

    .line 36
    return-void
.end method


# virtual methods
.method public getDateTaken()J
    .locals 2

    .prologue
    .line 39
    iget-wide v0, p0, Lcom/sec/android/app/camera/engine/ImageStoringInfo;->mDateTaken:J

    return-wide v0
.end method

.method public getDirectory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/ImageStoringInfo;->mDirectory:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/ImageStoringInfo;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method public setDateTaken(J)V
    .locals 1
    .param p1, "dateTaken"    # J

    .prologue
    .line 43
    iput-wide p1, p0, Lcom/sec/android/app/camera/engine/ImageStoringInfo;->mDateTaken:J

    .line 44
    return-void
.end method

.method public setDirectory(Ljava/lang/String;)V
    .locals 0
    .param p1, "directory"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/sec/android/app/camera/engine/ImageStoringInfo;->mDirectory:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/sec/android/app/camera/engine/ImageStoringInfo;->mFileName:Ljava/lang/String;

    .line 60
    return-void
.end method
