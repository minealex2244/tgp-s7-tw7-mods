.class Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$2;
.super Ljava/lang/Object;
.source "MotionWideSelfie.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$ClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->onCreateView(Lcom/samsung/android/glview/GLContext;Lcom/samsung/android/glview/GLViewGroup;Lcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/interfaces/BaseMenuController;Lcom/sec/android/app/camera/interfaces/MenuManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;

    .prologue
    .line 525
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$2;->this$0:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/samsung/android/glview/GLView;)Z
    .locals 2
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 528
    const-string v0, "MotionWideSelfie"

    const-string v1, "onClick - StopButton"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$2;->this$0:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;

    # invokes: Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->stopMotionWideSelfieCapture()V
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->access$600(Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;)V

    .line 530
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$2;->this$0:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;

    # invokes: Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->hideStopButton()V
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->access$700(Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;)V

    .line 531
    const-string v0, "4121"

    invoke-static {v0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    .line 532
    const/4 v0, 0x1

    return v0
.end method
