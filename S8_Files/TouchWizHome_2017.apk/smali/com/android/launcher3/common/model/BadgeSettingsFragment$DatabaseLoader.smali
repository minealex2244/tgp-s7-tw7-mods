.class Lcom/android/launcher3/common/model/BadgeSettingsFragment$DatabaseLoader;
.super Landroid/os/AsyncTask;
.source "BadgeSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/common/model/BadgeSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DatabaseLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/common/model/BadgeSettingsFragment;


# direct methods
.method private constructor <init>(Lcom/android/launcher3/common/model/BadgeSettingsFragment;)V
    .locals 0

    .prologue
    .line 420
    iput-object p1, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment$DatabaseLoader;->this$0:Lcom/android/launcher3/common/model/BadgeSettingsFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/common/model/BadgeSettingsFragment;Lcom/android/launcher3/common/model/BadgeSettingsFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/launcher3/common/model/BadgeSettingsFragment;
    .param p2, "x1"    # Lcom/android/launcher3/common/model/BadgeSettingsFragment$1;

    .prologue
    .line 420
    invoke-direct {p0, p1}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$DatabaseLoader;-><init>(Lcom/android/launcher3/common/model/BadgeSettingsFragment;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 420
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$DatabaseLoader;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 435
    const-string v0, "BadgeSettingsFragment"

    const-string v1, "updateDatabaseLoader doInBackground: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment$DatabaseLoader;->this$0:Lcom/android/launcher3/common/model/BadgeSettingsFragment;

    invoke-virtual {v0}, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->updateAppBadgeIntoDatabase()V

    .line 437
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 447
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 448
    return-void
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 420
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$DatabaseLoader;->onCancelled(Ljava/lang/Void;)V

    return-void
.end method

.method protected onCancelled(Ljava/lang/Void;)V
    .locals 0
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 442
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onCancelled(Ljava/lang/Object;)V

    .line 443
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 420
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$DatabaseLoader;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 423
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 424
    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment$DatabaseLoader;->this$0:Lcom/android/launcher3/common/model/BadgeSettingsFragment;

    const/4 v1, 0x0

    # setter for: Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mDatabaseLoader:Lcom/android/launcher3/common/model/BadgeSettingsFragment$DatabaseLoader;
    invoke-static {v0, v1}, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->access$1202(Lcom/android/launcher3/common/model/BadgeSettingsFragment;Lcom/android/launcher3/common/model/BadgeSettingsFragment$DatabaseLoader;)Lcom/android/launcher3/common/model/BadgeSettingsFragment$DatabaseLoader;

    .line 425
    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment$DatabaseLoader;->this$0:Lcom/android/launcher3/common/model/BadgeSettingsFragment;

    # getter for: Lcom/android/launcher3/common/model/BadgeSettingsFragment;->isDatabaseLoaderRunning:Z
    invoke-static {v0}, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->access$1300(Lcom/android/launcher3/common/model/BadgeSettingsFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment$DatabaseLoader;->this$0:Lcom/android/launcher3/common/model/BadgeSettingsFragment;

    invoke-virtual {v0}, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->updateList()V

    .line 427
    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment$DatabaseLoader;->this$0:Lcom/android/launcher3/common/model/BadgeSettingsFragment;

    # invokes: Lcom/android/launcher3/common/model/BadgeSettingsFragment;->dismissProgress()V
    invoke-static {v0}, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->access$900(Lcom/android/launcher3/common/model/BadgeSettingsFragment;)V

    .line 428
    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment$DatabaseLoader;->this$0:Lcom/android/launcher3/common/model/BadgeSettingsFragment;

    const/4 v1, 0x0

    # setter for: Lcom/android/launcher3/common/model/BadgeSettingsFragment;->isDatabaseLoaderRunning:Z
    invoke-static {v0, v1}, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->access$1302(Lcom/android/launcher3/common/model/BadgeSettingsFragment;Z)Z

    .line 430
    :cond_0
    const-string v0, "BadgeSettingsFragment"

    const-string v1, "updateDatabaseLoader onPostExecute: UpdateDatabase finish!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    return-void
.end method
