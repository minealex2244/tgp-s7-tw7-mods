.class Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$1;
.super Ljava/lang/Object;
.source "EffectThumbnailListMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$1;->this$0:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 177
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$1;->this$0:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mIsDownloadEffectSupported:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->access$100(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 178
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$1;->this$0:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mOrientation:I
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->access$200(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$1;->this$0:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mOrientation:I
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->access$200(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$1;->this$0:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->access$300(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 180
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$1;->this$0:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentMode:I
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->access$400(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)I

    move-result v0

    if-nez v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$1;->this$0:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mMoreButton:Lcom/samsung/android/glview/GLButton;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->access$500(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)Lcom/samsung/android/glview/GLButton;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 194
    :cond_1
    :goto_0
    return-void

    .line 184
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$1;->this$0:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentMode:I
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->access$400(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)I

    move-result v0

    if-nez v0, :cond_3

    .line 185
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$1;->this$0:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->access$300(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 187
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$1;->this$0:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mMoreButton:Lcom/samsung/android/glview/GLButton;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->access$500(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)Lcom/samsung/android/glview/GLButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    goto :goto_0

    .line 190
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$1;->this$0:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentMode:I
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->access$400(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)I

    move-result v0

    if-nez v0, :cond_1

    .line 191
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$1;->this$0:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->access$300(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    goto :goto_0
.end method
