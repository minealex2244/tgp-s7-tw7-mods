.class Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter$2;
.super Ljava/lang/Object;
.source "ModeListMenu.java"

# interfaces
.implements Lcom/sec/android/app/camera/widget/gl/ModeItem$SelectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;->getView(ILcom/samsung/android/glview/GLView;)Lcom/samsung/android/glview/GLView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;

    .prologue
    .line 1574
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter$2;->this$1:Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelect(Lcom/samsung/android/glview/GLView;)V
    .locals 2
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 1577
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter$2;->this$1:Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ModeListMenu;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/app/camera/menu/ModeListMenu;->mIsNeedShowBaseMenu:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/menu/ModeListMenu;->access$702(Lcom/sec/android/app/camera/menu/ModeListMenu;Z)Z

    .line 1578
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter$2;->this$1:Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ModeListMenu;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter$2;->this$1:Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;

    iget-object v1, v1, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ModeListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/ModeListMenu;->mOneTimeHideAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/ModeListMenu;->access$600(Lcom/sec/android/app/camera/menu/ModeListMenu;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/ModeListMenu;->setOneTimeHideAnimation(Landroid/view/animation/Animation;)V

    .line 1579
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter$2;->this$1:Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ModeListMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->hideMenu()V

    .line 1580
    return-void
.end method