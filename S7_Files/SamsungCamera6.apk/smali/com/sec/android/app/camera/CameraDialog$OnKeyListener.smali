.class Lcom/sec/android/app/camera/CameraDialog$OnKeyListener;
.super Ljava/lang/Object;
.source "CameraDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/CameraDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnKeyListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/CameraDialog;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/CameraDialog;)V
    .locals 0

    .prologue
    .line 958
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraDialog$OnKeyListener;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/app/camera/CameraDialog;
    .param p2, "x1"    # Lcom/sec/android/app/camera/CameraDialog$1;

    .prologue
    .line 958
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CameraDialog$OnKeyListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;)V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v7, 0x52

    const/16 v6, 0x17

    const/4 v5, 0x4

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 961
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraDialog$OnKeyListener;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "id"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 962
    .local v0, "id":I
    sparse-switch v0, :sswitch_data_0

    .line 1000
    :cond_0
    :goto_0
    return v1

    .line 970
    :sswitch_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    if-eq p2, v5, :cond_1

    if-eq p2, v7, :cond_1

    const/16 v3, 0x54

    if-ne p2, v3, :cond_0

    .line 971
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraDialog$OnKeyListener;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->isInLockTaskMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 972
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    .line 976
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraDialog$OnKeyListener;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    # invokes: Lcom/sec/android/app/camera/CameraDialog;->dismissCameraDialog()V
    invoke-static {v1}, Lcom/sec/android/app/camera/CameraDialog;->access$800(Lcom/sec/android/app/camera/CameraDialog;)V

    move v1, v2

    .line 977
    goto :goto_0

    .line 974
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraDialog$OnKeyListener;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 981
    :sswitch_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_0

    if-eq p2, v5, :cond_3

    if-ne p2, v6, :cond_0

    .line 983
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraDialog$OnKeyListener;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    # invokes: Lcom/sec/android/app/camera/CameraDialog;->dismissCameraDialog()V
    invoke-static {v1}, Lcom/sec/android/app/camera/CameraDialog;->access$800(Lcom/sec/android/app/camera/CameraDialog;)V

    move v1, v2

    .line 984
    goto :goto_0

    .line 988
    :sswitch_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    if-eq p2, v5, :cond_4

    if-eq p2, v7, :cond_4

    if-ne p2, v6, :cond_0

    .line 989
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraDialog$OnKeyListener;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/Camera;

    iput-boolean v2, v1, Lcom/sec/android/app/camera/Camera;->mLowBatteryDisableFlashPopupDisplayed:Z

    .line 990
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraDialog$OnKeyListener;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    # invokes: Lcom/sec/android/app/camera/CameraDialog;->dismissCameraDialog()V
    invoke-static {v1}, Lcom/sec/android/app/camera/CameraDialog;->access$800(Lcom/sec/android/app/camera/CameraDialog;)V

    move v1, v2

    .line 991
    goto :goto_0

    .line 996
    :sswitch_3
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraDialog$OnKeyListener;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    # invokes: Lcom/sec/android/app/camera/CameraDialog;->dismissCameraDialog()V
    invoke-static {v2}, Lcom/sec/android/app/camera/CameraDialog;->access$800(Lcom/sec/android/app/camera/CameraDialog;)V

    .line 997
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraDialog$OnKeyListener;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 962
    :sswitch_data_0
    .sparse-switch
        0x190 -> :sswitch_0
        0x191 -> :sswitch_0
        0x192 -> :sswitch_0
        0x193 -> :sswitch_0
        0x195 -> :sswitch_1
        0x1a4 -> :sswitch_0
        0x1a5 -> :sswitch_2
        0x1a6 -> :sswitch_0
        0x1dc -> :sswitch_0
        0x1e0 -> :sswitch_3
        0x1e8 -> :sswitch_3
    .end sparse-switch
.end method
