.class Lcom/sec/android/app/camera/CameraExecutorManager$6$1;
.super Ljava/lang/Object;
.source "CameraExecutorManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/CameraExecutorManager$6;->onShowAnimationComplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/camera/CameraExecutorManager$6;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/CameraExecutorManager$6;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sec/android/app/camera/CameraExecutorManager$6;

    .prologue
    .line 2319
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraExecutorManager$6$1;->this$1:Lcom/sec/android/app/camera/CameraExecutorManager$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/16 v4, 0x7a

    .line 2322
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager$6$1;->this$1:Lcom/sec/android/app/camera/CameraExecutorManager$6;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager$6;->val$backCameraMenu:Lcom/sec/android/app/camera/menu/ModeListMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->showModeInfoMenu()V

    .line 2323
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager$6$1;->this$1:Lcom/sec/android/app/camera/CameraExecutorManager$6;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager$6;->this$0:Lcom/sec/android/app/camera/CameraExecutorManager;

    const/4 v1, 0x1

    invoke-static {v4}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x64

    # invokes: Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V
    invoke-static {v0, v1, v4, v2, v3}, Lcom/sec/android/app/camera/CameraExecutorManager;->access$1100(Lcom/sec/android/app/camera/CameraExecutorManager;ZILjava/lang/String;I)V

    .line 2324
    return-void
.end method
