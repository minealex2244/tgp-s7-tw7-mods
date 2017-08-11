.class public Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Factory;
.super Ljava/lang/Object;
.source "SemMotionPhotoComposer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 541
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 549
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 550
    .local v0, "pkg":Ljava/lang/String;
    const-string v1, "com.sec.android.app.apex.service.ApexService"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 551
    new-instance v1, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;

    invoke-direct {v1, p0}, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;-><init>(Landroid/content/Context;)V

    .line 557
    :goto_0
    return-object v1

    .line 553
    :cond_0
    invoke-static {v0}, Lcom/samsung/android/apex/motionphoto/common/SemApexUtils;->isValidClient(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 554
    new-instance v1, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;

    invoke-direct {v1, p0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 556
    :cond_1
    sget-object v1, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no suitable composer for : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    const/4 v1, 0x0

    goto :goto_0
.end method
