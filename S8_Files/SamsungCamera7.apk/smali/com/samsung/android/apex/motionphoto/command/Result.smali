.class public Lcom/samsung/android/apex/motionphoto/command/Result;
.super Ljava/lang/Object;
.source "Result.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/apex/motionphoto/command/Result$Synchronizer;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private data:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private error:Ljava/lang/Exception;

.field private success:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/samsung/android/apex/motionphoto/command/Result;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/apex/motionphoto/command/Result;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "error"    # Ljava/lang/Exception;

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-boolean v1, p0, Lcom/samsung/android/apex/motionphoto/command/Result;->success:Z

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/apex/motionphoto/command/Result;->data:Ljava/util/HashMap;

    .line 45
    iput-boolean v1, p0, Lcom/samsung/android/apex/motionphoto/command/Result;->success:Z

    .line 46
    iput-object p1, p0, Lcom/samsung/android/apex/motionphoto/command/Result;->error:Ljava/lang/Exception;

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/Object;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/apex/motionphoto/command/Result;->success:Z

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/apex/motionphoto/command/Result;->data:Ljava/util/HashMap;

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/apex/motionphoto/command/Result;->success:Z

    .line 57
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/apex/motionphoto/command/Result;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "success"    # Z

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/apex/motionphoto/command/Result;->success:Z

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/apex/motionphoto/command/Result;->data:Ljava/util/HashMap;

    .line 66
    iput-boolean p1, p0, Lcom/samsung/android/apex/motionphoto/command/Result;->success:Z

    .line 67
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/samsung/android/apex/motionphoto/command/Result;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/command/Result;->data:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 72
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 73
    return-void
.end method

.method public getData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/command/Result;->data:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getError()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/command/Result;->error:Ljava/lang/Exception;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/samsung/android/apex/motionphoto/command/Result;->success:Z

    return v0
.end method

.method public setData(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/Object;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/command/Result;->data:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    return-void
.end method

.method public setError(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "error"    # Ljava/lang/Exception;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/samsung/android/apex/motionphoto/command/Result;->error:Ljava/lang/Exception;

    .line 109
    return-void
.end method

.method public setSuccess(Z)V
    .locals 0
    .param p1, "success"    # Z

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/samsung/android/apex/motionphoto/command/Result;->success:Z

    .line 91
    return-void
.end method
