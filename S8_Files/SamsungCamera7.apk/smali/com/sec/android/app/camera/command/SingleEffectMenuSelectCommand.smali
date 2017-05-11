.class public Lcom/sec/android/app/camera/command/SingleEffectMenuSelectCommand;
.super Lcom/sec/android/app/camera/command/MenuCommand;
.source "SingleEffectMenuSelectCommand.java"


# instance fields
.field private mEffect:I

.field private final mReceiver:Lcom/sec/android/app/camera/interfaces/CommandInterface;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CommandInterface;I)V
    .locals 1
    .param p1, "receiver"    # Lcom/sec/android/app/camera/interfaces/CommandInterface;
    .param p2, "commandId"    # I

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/sec/android/app/camera/command/MenuCommand;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/sec/android/app/camera/command/SingleEffectMenuSelectCommand;->mReceiver:Lcom/sec/android/app/camera/interfaces/CommandInterface;

    .line 29
    invoke-static {p2}, Lcom/sec/android/app/camera/command/CommandIdMap;->getModeIDByCommandID(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/command/SingleEffectMenuSelectCommand;->mEffect:I

    .line 30
    return-void
.end method


# virtual methods
.method public execute()Z
    .locals 2

    .prologue
    .line 34
    iget v0, p0, Lcom/sec/android/app/camera/command/SingleEffectMenuSelectCommand;->mEffect:I

    const/16 v1, 0x232a

    if-ne v0, v1, :cond_0

    .line 35
    iget-object v0, p0, Lcom/sec/android/app/camera/command/SingleEffectMenuSelectCommand;->mReceiver:Lcom/sec/android/app/camera/interfaces/CommandInterface;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CommandInterface;->onEffectDownloadMenuCommand()Z

    move-result v0

    .line 37
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/command/SingleEffectMenuSelectCommand;->mReceiver:Lcom/sec/android/app/camera/interfaces/CommandInterface;

    iget v1, p0, Lcom/sec/android/app/camera/command/SingleEffectMenuSelectCommand;->mEffect:I

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CommandInterface;->onSingleEffectMenuSelect(I)Z

    move-result v0

    goto :goto_0
.end method
