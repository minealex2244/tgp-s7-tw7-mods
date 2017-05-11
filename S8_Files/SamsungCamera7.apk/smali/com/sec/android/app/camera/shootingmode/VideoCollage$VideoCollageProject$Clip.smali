.class Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject$Clip;
.super Ljava/lang/Object;
.source "VideoCollage.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Clip"
.end annotation


# instance fields
.field private mDuration:I

.field private mPath:Ljava/lang/String;

.field private mRotate:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "duration"    # I
    .param p3, "rotate"    # Z

    .prologue
    const/4 v1, 0x0

    .line 3715
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3711
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject$Clip;->mPath:Ljava/lang/String;

    .line 3712
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject$Clip;->mDuration:I

    .line 3713
    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject$Clip;->mRotate:Z

    .line 3716
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject$Clip;->mPath:Ljava/lang/String;

    .line 3717
    iput p2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject$Clip;->mDuration:I

    .line 3718
    iput-boolean p3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject$Clip;->mRotate:Z

    .line 3719
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IZLcom/sec/android/app/camera/shootingmode/VideoCollage$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Z
    .param p4, "x3"    # Lcom/sec/android/app/camera/shootingmode/VideoCollage$1;

    .prologue
    .line 3710
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject$Clip;-><init>(Ljava/lang/String;IZ)V

    return-void
.end method

.method static synthetic access$4600(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject$Clip;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject$Clip;

    .prologue
    .line 3710
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject$Clip;->getRotation()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4700(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject$Clip;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject$Clip;

    .prologue
    .line 3710
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject$Clip;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4800(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject$Clip;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject$Clip;

    .prologue
    .line 3710
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject$Clip;->getDurationInMs()I

    move-result v0

    return v0
.end method

.method static synthetic access$4900(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject$Clip;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject$Clip;

    .prologue
    .line 3710
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject$Clip;->delete()Z

    move-result v0

    return v0
.end method

.method private delete()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 3722
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject$Clip;->mPath:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 3723
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject$Clip;->mPath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3724
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3725
    const/4 v1, 0x1

    .line 3731
    .end local v0    # "f":Ljava/io/File;
    :cond_0
    :goto_0
    return v1

    .line 3727
    .restart local v0    # "f":Ljava/io/File;
    :cond_1
    const-string v2, "VideoCollageProject"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fail to delete file : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject$Clip;->mPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getDurationInMs()I
    .locals 1

    .prologue
    .line 3735
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject$Clip;->mDuration:I

    return v0
.end method

.method private getDurationInSecond()I
    .locals 1

    .prologue
    .line 3739
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject$Clip;->mDuration:I

    div-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method private getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3743
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject$Clip;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method private getRotation()Z
    .locals 1

    .prologue
    .line 3747
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject$Clip;->mRotate:Z

    return v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 3751
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject$Clip;->mPath:Ljava/lang/String;

    .line 3752
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject$Clip;->mDuration:I

    .line 3753
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject$Clip;->mRotate:Z

    .line 3754
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3757
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject$Clip;->mPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 3758
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject$Clip;->mDuration:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 3759
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject$Clip;->mRotate:Z

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 3760
    return-void
.end method
