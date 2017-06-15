.class public Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;
.super Ljava/lang/Object;
.source "NlgIdMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/executor/NlgIdMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResultParam"
.end annotation


# instance fields
.field public paramName:Ljava/lang/String;

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "paramName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 514
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 515
    iput-object p1, p0, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;->paramName:Ljava/lang/String;

    .line 516
    iput-object p2, p0, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;->value:Ljava/lang/String;

    .line 517
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 521
    instance-of v1, p1, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;

    if-nez v1, :cond_0

    .line 522
    const/4 v1, 0x0

    .line 525
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 524
    check-cast v0, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;

    .line 525
    .local v0, "s":Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;
    iget-object v1, p0, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;->paramName:Ljava/lang/String;

    iget-object v2, v0, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;->paramName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;->paramName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
