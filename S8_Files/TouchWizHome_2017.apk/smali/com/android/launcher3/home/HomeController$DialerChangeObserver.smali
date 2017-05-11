.class Lcom/android/launcher3/home/HomeController$DialerChangeObserver;
.super Landroid/database/ContentObserver;
.source "HomeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/home/HomeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DialerChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/HomeController;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/home/HomeController;)V
    .locals 1

    .prologue
    .line 3978
    iput-object p1, p0, Lcom/android/launcher3/home/HomeController$DialerChangeObserver;->this$0:Lcom/android/launcher3/home/HomeController;

    .line 3979
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 3980
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 3983
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController$DialerChangeObserver;->this$0:Lcom/android/launcher3/home/HomeController;

    # invokes: Lcom/android/launcher3/home/HomeController;->changeDialerApp()V
    invoke-static {v0}, Lcom/android/launcher3/home/HomeController;->access$1900(Lcom/android/launcher3/home/HomeController;)V

    .line 3984
    return-void
.end method
