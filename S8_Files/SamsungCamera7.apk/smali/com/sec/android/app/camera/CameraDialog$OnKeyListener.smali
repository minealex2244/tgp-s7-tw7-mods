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
    .line 1208
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraDialog$OnKeyListener;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/app/camera/CameraDialog;
    .param p2, "x1"    # Lcom/sec/android/app/camera/CameraDialog$1;

    .prologue
    .line 1208
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CameraDialog$OnKeyListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;)V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 9
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v8, 0x52

    const/16 v7, 0x17

    const/4 v6, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1211
    invoke-static {}, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->values()[Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/CameraDialog$OnKeyListener;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "id"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    aget-object v0, v3, v4

    .line 1212
    .local v0, "id":Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;
    sget-object v3, Lcom/sec/android/app/camera/CameraDialog$12;->$SwitchMap$com$sec$android$app$camera$interfaces$CameraContext$DialogID:[I

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->ordinal()I

    move-result v4

    aget v3, v3, v4

    sparse-switch v3, :sswitch_data_0

    .line 1250
    :cond_0
    :goto_0
    return v1

    .line 1220
    :sswitch_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    if-eq p2, v6, :cond_1

    if-eq p2, v8, :cond_1

    const/16 v3, 0x54

    if-ne p2, v3, :cond_0

    .line 1221
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraDialog$OnKeyListener;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->isInLockTaskMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1222
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    .line 1226
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraDialog$OnKeyListener;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    # invokes: Lcom/sec/android/app/camera/CameraDialog;->dismissCameraDialog()V
    invoke-static {v1}, Lcom/sec/android/app/camera/CameraDialog;->access$1000(Lcom/sec/android/app/camera/CameraDialog;)V

    move v1, v2

    .line 1227
    goto :goto_0

    .line 1224
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraDialog$OnKeyListener;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 1231
    :sswitch_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_0

    if-eq p2, v6, :cond_3

    if-ne p2, v7, :cond_0

    .line 1233
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraDialog$OnKeyListener;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    # invokes: Lcom/sec/android/app/camera/CameraDialog;->dismissCameraDialog()V
    invoke-static {v1}, Lcom/sec/android/app/camera/CameraDialog;->access$1000(Lcom/sec/android/app/camera/CameraDialog;)V

    move v1, v2

    .line 1234
    goto :goto_0

    .line 1238
    :sswitch_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    if-eq p2, v6, :cond_4

    if-eq p2, v8, :cond_4

    if-ne p2, v7, :cond_0

    .line 1239
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraDialog$OnKeyListener;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/Camera;

    iput-boolean v2, v1, Lcom/sec/android/app/camera/Camera;->mLowBatteryDisableFlashPopupDisplayed:Z

    .line 1240
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraDialog$OnKeyListener;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    # invokes: Lcom/sec/android/app/camera/CameraDialog;->dismissCameraDialog()V
    invoke-static {v1}, Lcom/sec/android/app/camera/CameraDialog;->access$1000(Lcom/sec/android/app/camera/CameraDialog;)V

    move v1, v2

    .line 1241
    goto :goto_0

    .line 1246
    :sswitch_3
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraDialog$OnKeyListener;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    # invokes: Lcom/sec/android/app/camera/CameraDialog;->dismissCameraDialog()V
    invoke-static {v1}, Lcom/sec/android/app/camera/CameraDialog;->access$1000(Lcom/sec/android/app/camera/CameraDialog;)V

    .line 1247
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraDialog$OnKeyListener;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    move v1, v2

    .line 1248
    goto :goto_0

    .line 1212
    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xc -> :sswitch_1
        0xd -> :sswitch_0
        0x11 -> :sswitch_0
        0x12 -> :sswitch_2
        0x13 -> :sswitch_0
        0x27 -> :sswitch_0
        0x2b -> :sswitch_3
        0x2c -> :sswitch_3
    .end sparse-switch
.end method
