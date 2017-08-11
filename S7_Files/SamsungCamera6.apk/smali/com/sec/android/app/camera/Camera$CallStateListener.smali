.class Lcom/sec/android/app/camera/Camera$CallStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/Camera;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/Camera;)V
    .locals 0

    .prologue
    .line 9542
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$CallStateListener;->this$0:Lcom/sec/android/app/camera/Camera;

    .line 9543
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 9544
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;I)V
    .locals 0
    .param p2, "subscriptionID"    # I

    .prologue
    .line 9546
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$CallStateListener;->this$0:Lcom/sec/android/app/camera/Camera;

    .line 9547
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 9548
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/Camera$CallStateListener;->semSetSubscriptionId(I)V

    .line 9549
    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 6
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x30

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 9553
    const-string v0, "Camera6"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallStateChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9555
    packed-switch p1, :pswitch_data_0

    .line 9584
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$CallStateListener;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CallState;->isOtherVTCallOngoing(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 9585
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$CallStateListener;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$000(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/Camera$MainHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9586
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$CallStateListener;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$000(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/Camera$MainHandler;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/Camera$MainHandler;->removeMessages(I)V

    .line 9587
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$CallStateListener;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$000(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/Camera$MainHandler;

    move-result-object v0

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v5, v2, v3}, Lcom/sec/android/app/camera/Camera$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 9599
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$CallStateListener;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mStartAttachActivityOnResume:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$5400(Lcom/sec/android/app/camera/Camera;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$CallStateListener;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mIsPausing:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$500(Lcom/sec/android/app/camera/Camera;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 9600
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$CallStateListener;->this$0:Lcom/sec/android/app/camera/Camera;

    # setter for: Lcom/sec/android/app/camera/Camera;->mStartAttachActivityOnResume:Z
    invoke-static {v0, v4}, Lcom/sec/android/app/camera/Camera;->access$5402(Lcom/sec/android/app/camera/Camera;Z)Z

    .line 9601
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$CallStateListener;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->startAttachActivity()V

    .line 9605
    :cond_1
    :goto_1
    return-void

    .line 9557
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$CallStateListener;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CallState;->isVTCallOngoing(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$CallStateListener;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isPopupCallSupported()Z

    move-result v0

    if-nez v0, :cond_3

    .line 9558
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$CallStateListener;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$600(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$CallStateListener;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$600(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 9559
    const-string v0, "from_app"

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$CallStateListener;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mChkKeyFromApp:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$3900(Lcom/sec/android/app/camera/Camera;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9560
    const-string v0, "Camera6"

    const-string v1, "set flag to launch cropImage after phone call.."

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 9561
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$CallStateListener;->this$0:Lcom/sec/android/app/camera/Camera;

    # setter for: Lcom/sec/android/app/camera/Camera;->mStartAttachActivityOnResume:Z
    invoke-static {v0, v3}, Lcom/sec/android/app/camera/Camera;->access$5402(Lcom/sec/android/app/camera/Camera;Z)Z

    .line 9567
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$CallStateListener;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "camera.action.CALL_STATE_RINGING"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/CameraLocalBroadcastManager;->send(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 9563
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$CallStateListener;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9564
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$CallStateListener;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$600(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelShutterAction()V

    goto :goto_2

    .line 9570
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$CallStateListener;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mIsCalling:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$5300(Lcom/sec/android/app/camera/Camera;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 9573
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$CallStateListener;->this$0:Lcom/sec/android/app/camera/Camera;

    # setter for: Lcom/sec/android/app/camera/Camera;->mIsCalling:Z
    invoke-static {v0, v3}, Lcom/sec/android/app/camera/Camera;->access$5302(Lcom/sec/android/app/camera/Camera;Z)Z

    .line 9574
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$CallStateListener;->this$0:Lcom/sec/android/app/camera/Camera;

    # invokes: Lcom/sec/android/app/camera/Camera;->finishTimerCount()V
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$5500(Lcom/sec/android/app/camera/Camera;)V

    .line 9576
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$CallStateListener;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$1000(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 9577
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$CallStateListener;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$1000(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0, v3, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCallStatus(IZ)V

    .line 9578
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$CallStateListener;->this$0:Lcom/sec/android/app/camera/Camera;

    # invokes: Lcom/sec/android/app/camera/Camera;->setBaseMenuRecordButtonDim(Z)V
    invoke-static {v0, v3}, Lcom/sec/android/app/camera/Camera;->access$5600(Lcom/sec/android/app/camera/Camera;Z)V

    .line 9581
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$CallStateListener;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "camera.action.CALL_STATE_OFFHOOK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/CameraLocalBroadcastManager;->send(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 9589
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$CallStateListener;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CallState;->isCalling(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 9590
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$CallStateListener;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$1000(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 9591
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$CallStateListener;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$1000(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0, v4, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCallStatus(IZ)V

    .line 9592
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$CallStateListener;->this$0:Lcom/sec/android/app/camera/Camera;

    # invokes: Lcom/sec/android/app/camera/Camera;->setBaseMenuRecordButtonDim(Z)V
    invoke-static {v0, v4}, Lcom/sec/android/app/camera/Camera;->access$5600(Lcom/sec/android/app/camera/Camera;Z)V

    .line 9594
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$CallStateListener;->this$0:Lcom/sec/android/app/camera/Camera;

    # setter for: Lcom/sec/android/app/camera/Camera;->mIsCalling:Z
    invoke-static {v0, v4}, Lcom/sec/android/app/camera/Camera;->access$5302(Lcom/sec/android/app/camera/Camera;Z)Z

    .line 9596
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$CallStateListener;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "camera.action.CALL_STATE_IDLE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/CameraLocalBroadcastManager;->send(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 9555
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
