.class Lcom/sec/android/app/camera/help/HelpHubImageViewer$1$1;
.super Ljava/lang/Object;
.source "HelpHubImageViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/help/HelpHubImageViewer$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/camera/help/HelpHubImageViewer$1;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/help/HelpHubImageViewer$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sec/android/app/camera/help/HelpHubImageViewer$1;

    .prologue
    .line 298
    iput-object p1, p0, Lcom/sec/android/app/camera/help/HelpHubImageViewer$1$1;->this$1:Lcom/sec/android/app/camera/help/HelpHubImageViewer$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/sec/android/app/camera/help/HelpHubImageViewer$1$1;->this$1:Lcom/sec/android/app/camera/help/HelpHubImageViewer$1;

    iget-object v0, v0, Lcom/sec/android/app/camera/help/HelpHubImageViewer$1;->this$0:Lcom/sec/android/app/camera/help/HelpHubImageViewer;

    # operator++ for: Lcom/sec/android/app/camera/help/HelpHubImageViewer;->mCurrentIndex:I
    invoke-static {v0}, Lcom/sec/android/app/camera/help/HelpHubImageViewer;->access$108(Lcom/sec/android/app/camera/help/HelpHubImageViewer;)I

    .line 301
    iget-object v0, p0, Lcom/sec/android/app/camera/help/HelpHubImageViewer$1$1;->this$1:Lcom/sec/android/app/camera/help/HelpHubImageViewer$1;

    iget-object v0, v0, Lcom/sec/android/app/camera/help/HelpHubImageViewer$1;->this$0:Lcom/sec/android/app/camera/help/HelpHubImageViewer;

    # getter for: Lcom/sec/android/app/camera/help/HelpHubImageViewer;->mCurrentIndex:I
    invoke-static {v0}, Lcom/sec/android/app/camera/help/HelpHubImageViewer;->access$100(Lcom/sec/android/app/camera/help/HelpHubImageViewer;)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/help/HelpHubImageViewer$1$1;->this$1:Lcom/sec/android/app/camera/help/HelpHubImageViewer$1;

    iget-object v1, v1, Lcom/sec/android/app/camera/help/HelpHubImageViewer$1;->this$0:Lcom/sec/android/app/camera/help/HelpHubImageViewer;

    # getter for: Lcom/sec/android/app/camera/help/HelpHubImageViewer;->mDrawablesTypedArray:Landroid/content/res/TypedArray;
    invoke-static {v1}, Lcom/sec/android/app/camera/help/HelpHubImageViewer;->access$200(Lcom/sec/android/app/camera/help/HelpHubImageViewer;)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    if-lt v0, v1, :cond_3

    .line 302
    iget-object v0, p0, Lcom/sec/android/app/camera/help/HelpHubImageViewer$1$1;->this$1:Lcom/sec/android/app/camera/help/HelpHubImageViewer$1;

    iget-object v0, v0, Lcom/sec/android/app/camera/help/HelpHubImageViewer$1;->this$0:Lcom/sec/android/app/camera/help/HelpHubImageViewer;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/app/camera/help/HelpHubImageViewer;->mCurrentIndex:I
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/help/HelpHubImageViewer;->access$102(Lcom/sec/android/app/camera/help/HelpHubImageViewer;I)I

    .line 303
    iget-object v0, p0, Lcom/sec/android/app/camera/help/HelpHubImageViewer$1$1;->this$1:Lcom/sec/android/app/camera/help/HelpHubImageViewer$1;

    iget-object v0, v0, Lcom/sec/android/app/camera/help/HelpHubImageViewer$1;->this$0:Lcom/sec/android/app/camera/help/HelpHubImageViewer;

    # getter for: Lcom/sec/android/app/camera/help/HelpHubImageViewer;->mOneShot:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/help/HelpHubImageViewer;->access$300(Lcom/sec/android/app/camera/help/HelpHubImageViewer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/sec/android/app/camera/help/HelpHubImageViewer$1$1;->this$1:Lcom/sec/android/app/camera/help/HelpHubImageViewer$1;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sec/android/app/camera/help/HelpHubImageViewer$1;->mStopAnimation:Z

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/help/HelpHubImageViewer$1$1;->this$1:Lcom/sec/android/app/camera/help/HelpHubImageViewer$1;

    iget-object v0, v0, Lcom/sec/android/app/camera/help/HelpHubImageViewer$1;->this$0:Lcom/sec/android/app/camera/help/HelpHubImageViewer;

    # getter for: Lcom/sec/android/app/camera/help/HelpHubImageViewer;->mAutoStart:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/help/HelpHubImageViewer;->access$400(Lcom/sec/android/app/camera/help/HelpHubImageViewer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 307
    iget-object v0, p0, Lcom/sec/android/app/camera/help/HelpHubImageViewer$1$1;->this$1:Lcom/sec/android/app/camera/help/HelpHubImageViewer$1;

    iget-object v0, v0, Lcom/sec/android/app/camera/help/HelpHubImageViewer$1;->this$0:Lcom/sec/android/app/camera/help/HelpHubImageViewer;

    # invokes: Lcom/sec/android/app/camera/help/HelpHubImageViewer;->startTimer()V
    invoke-static {v0}, Lcom/sec/android/app/camera/help/HelpHubImageViewer;->access$500(Lcom/sec/android/app/camera/help/HelpHubImageViewer;)V

    .line 311
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/help/HelpHubImageViewer$1$1;->this$1:Lcom/sec/android/app/camera/help/HelpHubImageViewer$1;

    iget-object v0, v0, Lcom/sec/android/app/camera/help/HelpHubImageViewer$1;->this$0:Lcom/sec/android/app/camera/help/HelpHubImageViewer;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/help/HelpHubImageViewer;->setSlide()V

    .line 313
    iget-object v0, p0, Lcom/sec/android/app/camera/help/HelpHubImageViewer$1$1;->this$1:Lcom/sec/android/app/camera/help/HelpHubImageViewer$1;

    iget-boolean v0, v0, Lcom/sec/android/app/camera/help/HelpHubImageViewer$1;->mStopAnimation:Z

    if-eqz v0, :cond_2

    .line 314
    iget-object v0, p0, Lcom/sec/android/app/camera/help/HelpHubImageViewer$1$1;->this$1:Lcom/sec/android/app/camera/help/HelpHubImageViewer$1;

    iget-object v0, v0, Lcom/sec/android/app/camera/help/HelpHubImageViewer$1;->this$0:Lcom/sec/android/app/camera/help/HelpHubImageViewer;

    # invokes: Lcom/sec/android/app/camera/help/HelpHubImageViewer;->stopTimer()V
    invoke-static {v0}, Lcom/sec/android/app/camera/help/HelpHubImageViewer;->access$700(Lcom/sec/android/app/camera/help/HelpHubImageViewer;)V

    .line 316
    :cond_2
    return-void

    .line 308
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/help/HelpHubImageViewer$1$1;->this$1:Lcom/sec/android/app/camera/help/HelpHubImageViewer$1;

    iget-object v0, v0, Lcom/sec/android/app/camera/help/HelpHubImageViewer$1;->this$0:Lcom/sec/android/app/camera/help/HelpHubImageViewer;

    # getter for: Lcom/sec/android/app/camera/help/HelpHubImageViewer;->mShowSlideTime:[I
    invoke-static {v0}, Lcom/sec/android/app/camera/help/HelpHubImageViewer;->access$600(Lcom/sec/android/app/camera/help/HelpHubImageViewer;)[I

    move-result-object v0

    if-eqz v0, :cond_1

    .line 309
    iget-object v0, p0, Lcom/sec/android/app/camera/help/HelpHubImageViewer$1$1;->this$1:Lcom/sec/android/app/camera/help/HelpHubImageViewer$1;

    iget-object v0, v0, Lcom/sec/android/app/camera/help/HelpHubImageViewer$1;->this$0:Lcom/sec/android/app/camera/help/HelpHubImageViewer;

    # invokes: Lcom/sec/android/app/camera/help/HelpHubImageViewer;->startTimer()V
    invoke-static {v0}, Lcom/sec/android/app/camera/help/HelpHubImageViewer;->access$500(Lcom/sec/android/app/camera/help/HelpHubImageViewer;)V

    goto :goto_0
.end method
