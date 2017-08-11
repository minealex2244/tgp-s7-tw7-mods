.class Lcom/sec/android/app/camera/Camera$15;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/Camera;->onGLInitialized(Lcom/samsung/android/glview/GLViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/Camera;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/Camera;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/android/app/camera/Camera;

    .prologue
    .line 2159
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$15;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 2162
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$15;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isPausing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2163
    const-string v0, "Camera6"

    const-string v1, "BaseMenu-loading : return, isPausing"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2164
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$15;->this$0:Lcom/sec/android/app/camera/Camera;

    # setter for: Lcom/sec/android/app/camera/Camera;->mBaseMenuLoadingThread:Ljava/lang/Thread;
    invoke-static {v0, v5}, Lcom/sec/android/app/camera/Camera;->access$1902(Lcom/sec/android/app/camera/Camera;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 2199
    :goto_0
    return-void

    .line 2167
    :cond_0
    const-string v0, "BaseMenu-loading"

    invoke-static {v0, v4}, Lcom/sec/android/app/TraceWrapper;->asyncTraceBegin(Ljava/lang/String;I)V

    .line 2168
    const-string v0, "Add View"

    invoke-static {v0, v4}, Lcom/sec/android/app/TraceWrapper;->asyncTraceBegin(Ljava/lang/String;I)V

    .line 2171
    const-string v0, "AXLOG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BaseMenu-loading**StartU["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]**"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2172
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$15;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$1000(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2173
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$15;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$15;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$800(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v0

    const/16 v2, 0x1f6

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/MenuManager;->showMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;

    # setter for: Lcom/sec/android/app/camera/Camera;->mBaseMenu:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;
    invoke-static {v1, v0}, Lcom/sec/android/app/camera/Camera;->access$2002(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/menu/AbstractBaseMenu;)Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    .line 2180
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$15;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$15;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$1000(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/menu/OverlayHelp;->isInteractionGuideEnabled(Landroid/content/Context;Lcom/sec/android/app/camera/interfaces/CameraSettings;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2181
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$15;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mBaseMenu:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$2000(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->getOverlayHelp()Lcom/sec/android/app/camera/interfaces/OverlayHelpController;

    move-result-object v0

    const/16 v1, 0xae

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/OverlayHelpController;->showHelp(I)V

    .line 2182
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$15;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mBaseMenu:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$2000(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->getOverlayHelp()Lcom/sec/android/app/camera/interfaces/OverlayHelpController;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/Camera$15$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/Camera$15$1;-><init>(Lcom/sec/android/app/camera/Camera$15;)V

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/OverlayHelpController;->setOverlayHelpHideListener(Lcom/sec/android/app/camera/interfaces/OverlayHelpController$OverlayHelpHideListener;)V

    .line 2191
    :cond_1
    const-string v0, "AXLOG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BaseMenu-loading**EndU["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]**"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2193
    const-string v0, "AXLOG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Total-CameraUILoading(TSP)**EndU["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]**"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2194
    const-string v0, "BaseMenu-loading"

    invoke-static {v0, v4}, Lcom/sec/android/app/TraceWrapper;->asyncTraceEnd(Ljava/lang/String;I)V

    .line 2196
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$15;->this$0:Lcom/sec/android/app/camera/Camera;

    # invokes: Lcom/sec/android/app/camera/Camera;->onBaseMenuLoadingCompleted()V
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$2100(Lcom/sec/android/app/camera/Camera;)V

    .line 2198
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$15;->this$0:Lcom/sec/android/app/camera/Camera;

    # setter for: Lcom/sec/android/app/camera/Camera;->mBaseMenuLoadingThread:Ljava/lang/Thread;
    invoke-static {v0, v5}, Lcom/sec/android/app/camera/Camera;->access$1902(Lcom/sec/android/app/camera/Camera;Ljava/lang/Thread;)Ljava/lang/Thread;

    goto/16 :goto_0

    .line 2174
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$15;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$1000(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isEasyCamera()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2175
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$15;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$15;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$800(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v0

    const/16 v2, 0x1f4

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/MenuManager;->showMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;

    # setter for: Lcom/sec/android/app/camera/Camera;->mBaseMenu:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;
    invoke-static {v1, v0}, Lcom/sec/android/app/camera/Camera;->access$2002(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/menu/AbstractBaseMenu;)Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    goto/16 :goto_1

    .line 2177
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$15;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$15;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$800(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/sec/android/app/camera/interfaces/MenuManager;->showMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/menu/BaseMenu;

    # setter for: Lcom/sec/android/app/camera/Camera;->mBaseMenu:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;
    invoke-static {v1, v0}, Lcom/sec/android/app/camera/Camera;->access$2002(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/menu/AbstractBaseMenu;)Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    goto/16 :goto_1
.end method
