.class Lcom/sec/android/app/camera/CameraExecutorManager$5$1;
.super Ljava/lang/Object;
.source "CameraExecutorManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/CameraExecutorManager$5;->onShowAnimationComplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/camera/CameraExecutorManager$5;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/CameraExecutorManager$5;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sec/android/app/camera/CameraExecutorManager$5;

    .prologue
    .line 2261
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraExecutorManager$5$1;->this$1:Lcom/sec/android/app/camera/CameraExecutorManager$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/16 v4, 0x7a

    .line 2264
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager$5$1;->this$1:Lcom/sec/android/app/camera/CameraExecutorManager$5;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager$5;->val$frontCameraMenu:Lcom/sec/android/app/camera/menu/ModeListMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->showModeInfoMenu()V

    .line 2265
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager$5$1;->this$1:Lcom/sec/android/app/camera/CameraExecutorManager$5;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager$5;->this$0:Lcom/sec/android/app/camera/CameraExecutorManager;

    const/4 v1, 0x1

    invoke-static {v4}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x64

    # invokes: Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V
    invoke-static {v0, v1, v4, v2, v3}, Lcom/sec/android/app/camera/CameraExecutorManager;->access$1100(Lcom/sec/android/app/camera/CameraExecutorManager;ZILjava/lang/String;I)V

    .line 2266
    return-void
.end method
