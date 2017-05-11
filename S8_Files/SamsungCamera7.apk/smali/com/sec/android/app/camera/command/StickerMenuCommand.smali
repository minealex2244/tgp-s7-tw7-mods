.class public Lcom/sec/android/app/camera/command/StickerMenuCommand;
.super Lcom/sec/android/app/camera/command/MenuCommand;
.source "StickerMenuCommand.java"


# instance fields
.field private final mReceiver:Lcom/sec/android/app/camera/interfaces/CommandInterface;

.field private mStickerId:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CommandInterface;I)V
    .locals 0
    .param p1, "receiver"    # Lcom/sec/android/app/camera/interfaces/CommandInterface;
    .param p2, "commandId"    # I

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/sec/android/app/camera/command/MenuCommand;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/sec/android/app/camera/command/StickerMenuCommand;->mReceiver:Lcom/sec/android/app/camera/interfaces/CommandInterface;

    .line 29
    iput p2, p0, Lcom/sec/android/app/camera/command/StickerMenuCommand;->mStickerId:I

    .line 30
    return-void
.end method


# virtual methods
.method public execute()Z
    .locals 2

    .prologue
    .line 34
    iget v0, p0, Lcom/sec/android/app/camera/command/StickerMenuCommand;->mStickerId:I

    const/16 v1, 0x232b

    if-ne v0, v1, :cond_0

    .line 35
    iget-object v0, p0, Lcom/sec/android/app/camera/command/StickerMenuCommand;->mReceiver:Lcom/sec/android/app/camera/interfaces/CommandInterface;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CommandInterface;->onStickerDownloadCommand()Z

    .line 39
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/command/StickerMenuCommand;->mReceiver:Lcom/sec/android/app/camera/interfaces/CommandInterface;

    iget v1, p0, Lcom/sec/android/app/camera/command/StickerMenuCommand;->mStickerId:I

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CommandInterface;->onStickerMenuSelect(I)Z

    goto :goto_0
.end method
