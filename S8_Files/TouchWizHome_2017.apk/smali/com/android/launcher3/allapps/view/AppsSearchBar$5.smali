.class Lcom/android/launcher3/allapps/view/AppsSearchBar$5;
.super Ljava/lang/Object;
.source "AppsSearchBar.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/allapps/view/AppsSearchBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/view/AppsSearchBar;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/view/AppsSearchBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/allapps/view/AppsSearchBar;

    .prologue
    .line 368
    iput-object p1, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar$5;->this$0:Lcom/android/launcher3/allapps/view/AppsSearchBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 371
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 373
    .local v0, "action":I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 374
    const/4 v1, 0x0

    .line 395
    :goto_0
    return v1

    .line 377
    :cond_0
    const/4 v1, 0x0

    .line 378
    .local v1, "eventConsumed":Z
    sparse-switch p2, :sswitch_data_0

    .line 391
    iget-object v2, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar$5;->this$0:Lcom/android/launcher3/allapps/view/AppsSearchBar;

    # invokes: Lcom/android/launcher3/allapps/view/AppsSearchBar;->launchSfinder()Z
    invoke-static {v2}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->access$400(Lcom/android/launcher3/allapps/view/AppsSearchBar;)Z

    .line 392
    const/4 v1, 0x1

    goto :goto_0

    .line 388
    :sswitch_0
    const/4 v1, 0x0

    .line 389
    goto :goto_0

    .line 378
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x10c -> :sswitch_0
        0x10d -> :sswitch_0
        0x10e -> :sswitch_0
        0x10f -> :sswitch_0
    .end sparse-switch
.end method
