.class Lcom/sec/android/app/camera/engine/CommonEngine$2;
.super Ljava/lang/Object;
.source "CommonEngine.java"

# interfaces
.implements Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/engine/CommonEngine;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/engine/CommonEngine;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/engine/CommonEngine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/android/app/camera/engine/CommonEngine;

    .prologue
    .line 2480
    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$2;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(IIILjava/lang/Object;)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "ext1"    # I
    .param p3, "ext2"    # I
    .param p4, "data"    # Ljava/lang/Object;

    .prologue
    .line 2483
    packed-switch p1, :pswitch_data_0

    .line 2497
    :cond_0
    :goto_0
    return-void

    .line 2485
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$2;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraDevice:Lcom/samsung/android/camera/core/SemCamera;
    invoke-static {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$800(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/samsung/android/camera/core/SemCamera;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2486
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$2;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraDevice:Lcom/samsung/android/camera/core/SemCamera;
    invoke-static {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$800(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/samsung/android/camera/core/SemCamera;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$2;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mMotionPhotoManager:Lcom/sec/android/app/camera/util/MotionPhotoManager;
    invoke-static {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$1200(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/util/MotionPhotoManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/util/MotionPhotoManager;->getMotionPhotoToken()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/camera/core/SemCamera;->enableMotionPhoto(I)V

    goto :goto_0

    .line 2490
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$2;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraDevice:Lcom/samsung/android/camera/core/SemCamera;
    invoke-static {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$800(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/samsung/android/camera/core/SemCamera;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2491
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$2;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraDevice:Lcom/samsung/android/camera/core/SemCamera;
    invoke-static {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$800(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/samsung/android/camera/core/SemCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/camera/core/SemCamera;->disableMotionPhoto()V

    goto :goto_0

    .line 2483
    :pswitch_data_0
    .packed-switch 0x2718
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
