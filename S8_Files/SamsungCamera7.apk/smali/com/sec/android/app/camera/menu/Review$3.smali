.class Lcom/sec/android/app/camera/menu/Review$3;
.super Ljava/lang/Object;
.source "Review.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/menu/Review;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/menu/Review;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/menu/Review;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/android/app/camera/menu/Review;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/Review$3;->this$0:Lcom/sec/android/app/camera/menu/Review;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 129
    const-string v0, "Review"

    const-string v1, "mLaunchChooserRunnable"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review$3;->this$0:Lcom/sec/android/app/camera/menu/Review;

    # getter for: Lcom/sec/android/app/camera/menu/Review;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/Review;->access$200(Lcom/sec/android/app/camera/menu/Review;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review$3;->this$0:Lcom/sec/android/app/camera/menu/Review;

    # getter for: Lcom/sec/android/app/camera/menu/Review;->mContentUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/Review;->access$300(Lcom/sec/android/app/camera/menu/Review;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->startShareActivity(Landroid/net/Uri;)V

    .line 131
    return-void
.end method
