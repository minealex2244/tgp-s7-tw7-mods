.class Lcom/android/launcher3/Launcher$CloseSystemDialogsIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CloseSystemDialogsIntentReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Launcher;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/Launcher;

    .prologue
    .line 2253
    iput-object p1, p0, Lcom/android/launcher3/Launcher$CloseSystemDialogsIntentReceiver;->this$0:Lcom/android/launcher3/Launcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2256
    iget-object v0, p0, Lcom/android/launcher3/Launcher$CloseSystemDialogsIntentReceiver;->this$0:Lcom/android/launcher3/Launcher;

    # invokes: Lcom/android/launcher3/Launcher;->closeSystemDialogs()V
    invoke-static {v0}, Lcom/android/launcher3/Launcher;->access$1000(Lcom/android/launcher3/Launcher;)V

    .line 2257
    return-void
.end method
