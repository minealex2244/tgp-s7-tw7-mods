.class Lcom/sec/android/app/camera/widget/gl/TickSlider$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TickSlider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/widget/gl/TickSlider;->setAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/widget/gl/TickSlider;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/widget/gl/TickSlider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/android/app/camera/widget/gl/TickSlider;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider$2;->this$0:Lcom/sec/android/app/camera/widget/gl/TickSlider;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 224
    const-string v0, "TickSlider"

    const-string v1, "onAnimationEnd"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 226
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider$2;->this$0:Lcom/sec/android/app/camera/widget/gl/TickSlider;

    const/4 v1, 0x1

    # setter for: Lcom/sec/android/app/camera/widget/gl/TickSlider;->mIsExpanded:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/widget/gl/TickSlider;->access$102(Lcom/sec/android/app/camera/widget/gl/TickSlider;Z)Z

    .line 227
    return-void
.end method
