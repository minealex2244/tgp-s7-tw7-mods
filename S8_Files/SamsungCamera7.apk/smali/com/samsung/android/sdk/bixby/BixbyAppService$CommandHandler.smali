.class Lcom/samsung/android/sdk/bixby/BixbyAppService$CommandHandler;
.super Landroid/os/Handler;
.source "BixbyAppService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/bixby/BixbyAppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CommandHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/bixby/BixbyAppService;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/bixby/BixbyAppService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/samsung/android/sdk/bixby/BixbyAppService$CommandHandler;->this$0:Lcom/samsung/android/sdk/bixby/BixbyAppService;

    .line 114
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 115
    return-void
.end method
