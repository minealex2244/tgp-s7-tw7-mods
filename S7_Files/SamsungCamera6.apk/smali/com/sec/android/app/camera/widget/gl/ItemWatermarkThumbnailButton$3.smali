.class Lcom/sec/android/app/camera/widget/gl/ItemWatermarkThumbnailButton$3;
.super Ljava/lang/Object;
.source "ItemWatermarkThumbnailButton.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$FocusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/widget/gl/ItemWatermarkThumbnailButton;->refreshButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/widget/gl/ItemWatermarkThumbnailButton;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/widget/gl/ItemWatermarkThumbnailButton;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/android/app/camera/widget/gl/ItemWatermarkThumbnailButton;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/ItemWatermarkThumbnailButton$3;->this$0:Lcom/sec/android/app/camera/widget/gl/ItemWatermarkThumbnailButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChanged(Lcom/samsung/android/glview/GLView;I)Z
    .locals 1
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "focusStatus"    # I

    .prologue
    .line 235
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemWatermarkThumbnailButton$3;->this$0:Lcom/sec/android/app/camera/widget/gl/ItemWatermarkThumbnailButton;

    # getter for: Lcom/sec/android/app/camera/widget/gl/ItemWatermarkThumbnailButton;->mFocusListener:Lcom/samsung/android/glview/GLView$FocusListener;
    invoke-static {v0}, Lcom/sec/android/app/camera/widget/gl/ItemWatermarkThumbnailButton;->access$500(Lcom/sec/android/app/camera/widget/gl/ItemWatermarkThumbnailButton;)Lcom/samsung/android/glview/GLView$FocusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemWatermarkThumbnailButton$3;->this$0:Lcom/sec/android/app/camera/widget/gl/ItemWatermarkThumbnailButton;

    # getter for: Lcom/sec/android/app/camera/widget/gl/ItemWatermarkThumbnailButton;->mFocusListener:Lcom/samsung/android/glview/GLView$FocusListener;
    invoke-static {v0}, Lcom/sec/android/app/camera/widget/gl/ItemWatermarkThumbnailButton;->access$600(Lcom/sec/android/app/camera/widget/gl/ItemWatermarkThumbnailButton;)Lcom/samsung/android/glview/GLView$FocusListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/glview/GLView$FocusListener;->onFocusChanged(Lcom/samsung/android/glview/GLView;I)Z

    .line 237
    const/4 v0, 0x1

    .line 239
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
