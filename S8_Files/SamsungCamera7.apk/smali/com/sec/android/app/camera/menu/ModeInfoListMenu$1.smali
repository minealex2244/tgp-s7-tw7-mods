.class Lcom/sec/android/app/camera/menu/ModeInfoListMenu$1;
.super Ljava/lang/Object;
.source "ModeInfoListMenu.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$KeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/menu/ModeInfoListMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/menu/ModeInfoListMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/menu/ModeInfoListMenu;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/android/app/camera/menu/ModeInfoListMenu;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu$1;->this$0:Lcom/sec/android/app/camera/menu/ModeInfoListMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyDown(Lcom/samsung/android/glview/GLView;Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 126
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu$1;->this$0:Lcom/sec/android/app/camera/menu/ModeInfoListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mOrientation:I
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->access$000(Lcom/sec/android/app/camera/menu/ModeInfoListMenu;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 140
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 128
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x13

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 133
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x15

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 126
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onKeyUp(Lcom/samsung/android/glview/GLView;Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 145
    const/4 v0, 0x0

    return v0
.end method
