.class Lcom/android/launcher3/home/ScreenGridPanel$3;
.super Ljava/lang/Object;
.source "ScreenGridPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/home/ScreenGridPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/ScreenGridPanel;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/ScreenGridPanel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/home/ScreenGridPanel;

    .prologue
    .line 353
    iput-object p1, p0, Lcom/android/launcher3/home/ScreenGridPanel$3;->this$0:Lcom/android/launcher3/home/ScreenGridPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 356
    const-string v0, "ScreenGridPanel"

    const-string v1, "ScreenGrid cancel button clicked."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object v0, p0, Lcom/android/launcher3/home/ScreenGridPanel$3;->this$0:Lcom/android/launcher3/home/ScreenGridPanel;

    # getter for: Lcom/android/launcher3/home/ScreenGridPanel;->mLauncher:Lcom/android/launcher3/Launcher;
    invoke-static {v0}, Lcom/android/launcher3/home/ScreenGridPanel;->access$200(Lcom/android/launcher3/home/ScreenGridPanel;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->startHomeSettingActivity()V

    .line 359
    iget-object v0, p0, Lcom/android/launcher3/home/ScreenGridPanel$3;->this$0:Lcom/android/launcher3/home/ScreenGridPanel;

    # getter for: Lcom/android/launcher3/home/ScreenGridPanel;->mHomeController:Lcom/android/launcher3/home/HomeController;
    invoke-static {v0}, Lcom/android/launcher3/home/ScreenGridPanel;->access$300(Lcom/android/launcher3/home/ScreenGridPanel;)Lcom/android/launcher3/home/HomeController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->exitScreenGridStateDelayed()V

    .line 361
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/home/ScreenGridPanel$3;->this$0:Lcom/android/launcher3/home/ScreenGridPanel;

    # getter for: Lcom/android/launcher3/home/ScreenGridPanel;->mLauncher:Lcom/android/launcher3/Launcher;
    invoke-static {v1}, Lcom/android/launcher3/home/ScreenGridPanel;->access$200(Lcom/android/launcher3/home/ScreenGridPanel;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08018a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/home/ScreenGridPanel$3;->this$0:Lcom/android/launcher3/home/ScreenGridPanel;

    .line 362
    # getter for: Lcom/android/launcher3/home/ScreenGridPanel;->mLauncher:Lcom/android/launcher3/Launcher;
    invoke-static {v2}, Lcom/android/launcher3/home/ScreenGridPanel;->access$200(Lcom/android/launcher3/home/ScreenGridPanel;)Lcom/android/launcher3/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08014c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 361
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    return-void
.end method
