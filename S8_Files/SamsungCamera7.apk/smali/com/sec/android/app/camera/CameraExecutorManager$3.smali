.class Lcom/sec/android/app/camera/CameraExecutorManager$3;
.super Ljava/lang/Object;
.source "CameraExecutorManager.java"

# interfaces
.implements Lcom/sec/android/app/camera/menu/ModeListMenu$OnShowAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/CameraExecutorManager;->processStateTypeShowMenu(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/CameraExecutorManager;

.field final synthetic val$frontCameraMenu:Lcom/sec/android/app/camera/menu/ModeListMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/CameraExecutorManager;Lcom/sec/android/app/camera/menu/ModeListMenu;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/android/app/camera/CameraExecutorManager;

    .prologue
    .line 2225
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraExecutorManager$3;->this$0:Lcom/sec/android/app/camera/CameraExecutorManager;

    iput-object p2, p0, Lcom/sec/android/app/camera/CameraExecutorManager$3;->val$frontCameraMenu:Lcom/sec/android/app/camera/menu/ModeListMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShowAnimationComplete()V
    .locals 5

    .prologue
    const/16 v4, 0x54

    .line 2228
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager$3;->val$frontCameraMenu:Lcom/sec/android/app/camera/menu/ModeListMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->showModeShortcutMenu()V

    .line 2229
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager$3;->this$0:Lcom/sec/android/app/camera/CameraExecutorManager;

    const/4 v1, 0x1

    invoke-static {v4}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x64

    # invokes: Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V
    invoke-static {v0, v1, v4, v2, v3}, Lcom/sec/android/app/camera/CameraExecutorManager;->access$1100(Lcom/sec/android/app/camera/CameraExecutorManager;ZILjava/lang/String;I)V

    .line 2230
    return-void
.end method
