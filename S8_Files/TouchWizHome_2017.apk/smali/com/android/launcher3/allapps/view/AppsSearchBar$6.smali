.class Lcom/android/launcher3/allapps/view/AppsSearchBar$6;
.super Ljava/lang/Object;
.source "AppsSearchBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 399
    iput-object p1, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar$6;->this$0:Lcom/android/launcher3/allapps/view/AppsSearchBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 402
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar$6;->this$0:Lcom/android/launcher3/allapps/view/AppsSearchBar;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08017f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar$6;->this$0:Lcom/android/launcher3/allapps/view/AppsSearchBar;

    .line 403
    invoke-virtual {v3}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0800f2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 402
    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar$6;->this$0:Lcom/android/launcher3/allapps/view/AppsSearchBar;

    # getter for: Lcom/android/launcher3/allapps/view/AppsSearchBar;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;
    invoke-static {v1}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->access$300(Lcom/android/launcher3/allapps/view/AppsSearchBar;)Lcom/android/launcher3/allapps/controller/AppsController;

    move-result-object v1

    const-string v2, "com.samsung.android.app.galaxyfinder"

    invoke-virtual {v1, v2}, Lcom/android/launcher3/allapps/controller/AppsController;->isAppInstalled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 413
    :goto_0
    return-void

    .line 407
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 410
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.app.galaxyfinder"

    const-string v3, "com.samsung.android.app.galaxyfinder.GalaxyFinderActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 411
    const-string v1, "launch_mode"

    const-string v2, "voice_input"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 412
    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar$6;->this$0:Lcom/android/launcher3/allapps/view/AppsSearchBar;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
