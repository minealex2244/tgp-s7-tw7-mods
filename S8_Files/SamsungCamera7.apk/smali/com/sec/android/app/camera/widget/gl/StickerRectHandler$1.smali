.class Lcom/sec/android/app/camera/widget/gl/StickerRectHandler$1;
.super Landroid/os/Handler;
.source "StickerRectHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler$1;->this$0:Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 116
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 118
    :pswitch_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler$1;->this$0:Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;

    # getter for: Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mWatermarkTextEditBG:[Lcom/samsung/android/glview/GLRectangle;
    invoke-static {v1}, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->access$000(Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;)[Lcom/samsung/android/glview/GLRectangle;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 119
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler$1;->this$0:Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;

    # getter for: Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mWatermarkTextEditBG:[Lcom/samsung/android/glview/GLRectangle;
    invoke-static {v1}, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->access$000(Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;)[Lcom/samsung/android/glview/GLRectangle;

    move-result-object v1

    aget-object v1, v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLRectangle;->setAlpha(F)V

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 123
    .end local v0    # "i":I
    :pswitch_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler$1;->this$0:Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;

    # getter for: Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mWatermarkTextEditBG:[Lcom/samsung/android/glview/GLRectangle;
    invoke-static {v1}, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->access$000(Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;)[Lcom/samsung/android/glview/GLRectangle;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 124
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler$1;->this$0:Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;

    # getter for: Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->mWatermarkTextEditBG:[Lcom/samsung/android/glview/GLRectangle;
    invoke-static {v1}, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->access$000(Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;)[Lcom/samsung/android/glview/GLRectangle;

    move-result-object v1

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLRectangle;->setAlpha(F)V

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 128
    .end local v0    # "i":I
    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler$1;->this$0:Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->hideRectHandler(Z)V

    goto :goto_0

    .line 116
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
