.class Lcom/android/launcher3/home/HomeBindController$22$1;
.super Ljava/lang/Object;
.source "HomeBindController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/HomeBindController$22;->handleMessage(Landroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/home/HomeBindController$22;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HomeBindController$22;Landroid/view/View;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/launcher3/home/HomeBindController$22;

    .prologue
    .line 960
    iput-object p1, p0, Lcom/android/launcher3/home/HomeBindController$22$1;->this$1:Lcom/android/launcher3/home/HomeBindController$22;

    iput-object p2, p0, Lcom/android/launcher3/home/HomeBindController$22$1;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 962
    iget-object v0, p0, Lcom/android/launcher3/home/HomeBindController$22$1;->val$v:Landroid/view/View;

    check-cast v0, Landroid/widget/Advanceable;

    invoke-interface {v0}, Landroid/widget/Advanceable;->advance()V

    .line 963
    return-void
.end method
