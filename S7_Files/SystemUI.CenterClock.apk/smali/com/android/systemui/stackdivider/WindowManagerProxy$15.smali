.class Lcom/android/systemui/stackdivider/WindowManagerProxy$15;
.super Ljava/lang/Object;
.source "WindowManagerProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/stackdivider/WindowManagerProxy;->setResizing(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/stackdivider/WindowManagerProxy;

.field final synthetic val$resizing:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/stackdivider/WindowManagerProxy;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/stackdivider/WindowManagerProxy;
    .param p2, "val$resizing"    # Z

    .prologue
    .line 309
    iput-object p1, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy$15;->this$0:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    iput-boolean p2, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy$15;->val$resizing:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 313
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy$15;->val$resizing:Z

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->setDockedStackResizing(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    :goto_0
    return-void

    .line 314
    :catch_0
    move-exception v0

    .line 315
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "WindowManagerProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error calling setDockedStackResizing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
