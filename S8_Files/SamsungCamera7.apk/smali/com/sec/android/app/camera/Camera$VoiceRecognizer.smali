.class Lcom/sec/android/app/camera/Camera$VoiceRecognizer;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VoiceRecognizer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/Camera;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/Camera;)V
    .locals 0

    .prologue
    .line 7999
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$VoiceRecognizer;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/Camera$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "x1"    # Lcom/sec/android/app/camera/Camera$1;

    .prologue
    .line 7999
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/Camera$VoiceRecognizer;-><init>(Lcom/sec/android/app/camera/Camera;)V

    return-void
.end method


# virtual methods
.method public onResults([Ljava/lang/String;)V
    .locals 7
    .param p1, "strResult"    # [Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 8002
    const-string v1, "Camera7"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VoiceRecognition result string : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 8003
    const/4 v0, -0x1

    .line 8004
    .local v0, "result":I
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$VoiceRecognizer;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mBargeInRecognizer:Lcom/samsung/android/speech/SemSpeechRecognizer;
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$4800(Lcom/sec/android/app/camera/Camera;)Lcom/samsung/android/speech/SemSpeechRecognizer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 8005
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$VoiceRecognizer;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mBargeInRecognizer:Lcom/samsung/android/speech/SemSpeechRecognizer;
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$4800(Lcom/sec/android/app/camera/Camera;)Lcom/samsung/android/speech/SemSpeechRecognizer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/speech/SemSpeechRecognizer;->getRecognitionResult()I

    move-result v0

    .line 8007
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$VoiceRecognizer;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$600(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$VoiceRecognizer;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mBaseMenu:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$2400(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    move-result-object v1

    if-nez v1, :cond_2

    .line 8060
    :cond_1
    :goto_0
    return-void

    .line 8010
    :cond_2
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 8011
    packed-switch v0, :pswitch_data_0

    .line 8054
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$VoiceRecognizer;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mBaseMenu:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$2400(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->getIndicators()Lcom/sec/android/app/camera/menu/Indicators;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/menu/Indicators;->setVoiceStatus(I)V

    goto :goto_0

    .line 8016
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$VoiceRecognizer;->this$0:Lcom/sec/android/app/camera/Camera;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->LOW_BATTERY:Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->isCameraDialogVisible(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 8019
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$VoiceRecognizer;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$600(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v1

    const/16 v2, 0x1b

    invoke-interface {v1, v2, v6}, Lcom/sec/android/app/camera/interfaces/MenuManager;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 8022
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$VoiceRecognizer;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$4900(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;->isCapturing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 8023
    const-string v1, "Camera7"

    const-string v2, "ignored voice recognition during capturing"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 8026
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$VoiceRecognizer;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->restartInactivityTimer()V

    .line 8027
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$VoiceRecognizer;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mBaseMenu:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$2400(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->getIndicators()Lcom/sec/android/app/camera/menu/Indicators;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/menu/Indicators;->setVoiceStatus(I)V

    .line 8029
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$VoiceRecognizer;->this$0:Lcom/sec/android/app/camera/Camera;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;->VOICE_COMMAND:Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;

    # invokes: Lcom/sec/android/app/camera/Camera;->handleShutterKeyReleased(Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;)Z
    invoke-static {v1, v2}, Lcom/sec/android/app/camera/Camera;->access$5000(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;)Z

    .line 8030
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$VoiceRecognizer;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$000(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v1

    if-nez v1, :cond_4

    .line 8031
    const-string v1, "1013"

    const-string v2, "3"

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 8033
    :cond_4
    const-string v1, "4001"

    const-string v2, "6"

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 8037
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$VoiceRecognizer;->this$0:Lcom/sec/android/app/camera/Camera;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->LOW_BATTERY:Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->isCameraDialogVisible(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 8040
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$VoiceRecognizer;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$600(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v1

    const/16 v2, 0x82

    invoke-interface {v1, v2, v6}, Lcom/sec/android/app/camera/interfaces/MenuManager;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 8043
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$VoiceRecognizer;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$4900(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;->isCapturing()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 8044
    const-string v1, "Camera7"

    const-string v2, "ignored voice recognition during capturing"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 8047
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$VoiceRecognizer;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->restartInactivityTimer()V

    .line 8048
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$VoiceRecognizer;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mBaseMenu:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$2400(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->getIndicators()Lcom/sec/android/app/camera/menu/Indicators;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/menu/Indicators;->setVoiceStatus(I)V

    .line 8050
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$VoiceRecognizer;->this$0:Lcom/sec/android/app/camera/Camera;

    # invokes: Lcom/sec/android/app/camera/Camera;->handleRecordKeyPressed()V
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$5100(Lcom/sec/android/app/camera/Camera;)V

    .line 8051
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$VoiceRecognizer;->this$0:Lcom/sec/android/app/camera/Camera;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;->VOICE_COMMAND:Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;

    # invokes: Lcom/sec/android/app/camera/Camera;->handleRecordKeyReleased(Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;)V
    invoke-static {v1, v2}, Lcom/sec/android/app/camera/Camera;->access$5200(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;)V

    goto/16 :goto_0

    .line 8058
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$VoiceRecognizer;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mBaseMenu:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$2400(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->getIndicators()Lcom/sec/android/app/camera/menu/Indicators;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/menu/Indicators;->setVoiceStatus(I)V

    goto/16 :goto_0

    .line 8011
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
