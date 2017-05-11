.class public Lcom/samsung/android/apex/motionphoto/command/Result$Synchronizer;
.super Ljava/util/concurrent/LinkedBlockingQueue;
.source "Result.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/apex/motionphoto/command/Result;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Synchronizer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/LinkedBlockingQueue",
        "<",
        "Lcom/samsung/android/apex/motionphoto/command/Result;",
        ">;"
    }
.end annotation


# instance fields
.field private mData:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 142
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 150
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 151
    iput-object p1, p0, Lcom/samsung/android/apex/motionphoto/command/Result$Synchronizer;->mData:Ljava/lang/Object;

    .line 152
    return-void
.end method


# virtual methods
.method public awaitResponse()Lcom/samsung/android/apex/motionphoto/command/Result;
    .locals 3

    .prologue
    .line 169
    # getter for: Lcom/samsung/android/apex/motionphoto/command/Result;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/apex/motionphoto/command/Result;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "awaitResponse"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :try_start_0
    invoke-super {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/apex/motionphoto/command/Result;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :goto_0
    return-object v1

    .line 172
    :catch_0
    move-exception v0

    .line 173
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 174
    new-instance v1, Lcom/samsung/android/apex/motionphoto/command/Result;

    invoke-direct {v1, v0}, Lcom/samsung/android/apex/motionphoto/command/Result;-><init>(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public awaitResponse(I)Lcom/samsung/android/apex/motionphoto/command/Result;
    .locals 4
    .param p1, "senconds"    # I

    .prologue
    .line 185
    # getter for: Lcom/samsung/android/apex/motionphoto/command/Result;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/apex/motionphoto/command/Result;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "awaitResponse: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    int-to-long v2, p1

    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-super {p0, v2, v3, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/apex/motionphoto/command/Result;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :goto_0
    return-object v1

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 190
    new-instance v1, Lcom/samsung/android/apex/motionphoto/command/Result;

    invoke-direct {v1, v0}, Lcom/samsung/android/apex/motionphoto/command/Result;-><init>(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/command/Result$Synchronizer;->mData:Ljava/lang/Object;

    return-object v0
.end method

.method public respond(Lcom/samsung/android/apex/motionphoto/command/Result;)V
    .locals 4
    .param p1, "r"    # Lcom/samsung/android/apex/motionphoto/command/Result;

    .prologue
    .line 200
    # getter for: Lcom/samsung/android/apex/motionphoto/command/Result;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/apex/motionphoto/command/Result;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "respond: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :try_start_0
    invoke-super {p0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :goto_0
    return-void

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, "e":Ljava/lang/InterruptedException;
    # getter for: Lcom/samsung/android/apex/motionphoto/command/Result;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/apex/motionphoto/command/Result;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "can\'t respond"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
