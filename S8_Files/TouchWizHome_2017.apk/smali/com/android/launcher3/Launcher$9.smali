.class Lcom/android/launcher3/Launcher$9;
.super Landroid/database/ContentObserver;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Launcher;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Launcher;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/Launcher;
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 2144
    iput-object p1, p0, Lcom/android/launcher3/Launcher$9;->this$0:Lcom/android/launcher3/Launcher;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 2147
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 2148
    const-string v0, "Launcher"

    const-string v1, "need_dark_font is changed!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2149
    iget-object v0, p0, Lcom/android/launcher3/Launcher$9;->this$0:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/util/WhiteBgManager;->setup(Landroid/content/Context;)V

    .line 2150
    iget-object v0, p0, Lcom/android/launcher3/Launcher$9;->this$0:Lcom/android/launcher3/Launcher;

    # invokes: Lcom/android/launcher3/Launcher;->changeColorForBg()V
    invoke-static {v0}, Lcom/android/launcher3/Launcher;->access$700(Lcom/android/launcher3/Launcher;)V

    .line 2151
    return-void
.end method
