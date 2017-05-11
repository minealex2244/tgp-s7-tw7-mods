.class Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppLoader;
.super Landroid/os/AsyncTask;
.source "BadgeSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/common/model/BadgeSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BadgeAppLoader"
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
    .line 401
    iput-object p1, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppLoader;->this$0:Lcom/android/launcher3/common/model/BadgeSettingsFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/common/model/BadgeSettingsFragment;Lcom/android/launcher3/common/model/BadgeSettingsFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/launcher3/common/model/BadgeSettingsFragment;
    .param p2, "x1"    # Lcom/android/launcher3/common/model/BadgeSettingsFragment$1;

    .prologue
    .line 401
    invoke-direct {p0, p1}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppLoader;-><init>(Lcom/android/launcher3/common/model/BadgeSettingsFragment;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 401
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppLoader;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 413
    const-string v0, "BadgeSettingsFragment"

    const-string v1, "BadgeAppLoader doInBackground: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppLoader;->this$0:Lcom/android/launcher3/common/model/BadgeSettingsFragment;

    # invokes: Lcom/android/launcher3/common/model/BadgeSettingsFragment;->loadBadgeProvider()V
    invoke-static {v0}, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->access$1000(Lcom/android/launcher3/common/model/BadgeSettingsFragment;)V

    .line 415
    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppLoader;->this$0:Lcom/android/launcher3/common/model/BadgeSettingsFragment;

    # invokes: Lcom/android/launcher3/common/model/BadgeSettingsFragment;->createAppItemArray()V
    invoke-static {v0}, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->access$1100(Lcom/android/launcher3/common/model/BadgeSettingsFragment;)V

    .line 416
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 401
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppLoader;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 404
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 405
    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppLoader;->this$0:Lcom/android/launcher3/common/model/BadgeSettingsFragment;

    # getter for: Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mAllSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->access$100(Lcom/android/launcher3/common/model/BadgeSettingsFragment;)Landroid/widget/Switch;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppLoader;->this$0:Lcom/android/launcher3/common/model/BadgeSettingsFragment;

    # getter for: Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mBadges_Hidden:Ljava/util/List;
    invoke-static {v1}, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->access$400(Lcom/android/launcher3/common/model/BadgeSettingsFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 406
    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppLoader;->this$0:Lcom/android/launcher3/common/model/BadgeSettingsFragment;

    # getter for: Lcom/android/launcher3/common/model/BadgeSettingsFragment;->mAdapter:Lcom/android/launcher3/common/model/BadgeSettingsAdapter;
    invoke-static {v0}, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->access$800(Lcom/android/launcher3/common/model/BadgeSettingsFragment;)Lcom/android/launcher3/common/model/BadgeSettingsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/model/BadgeSettingsAdapter;->notifyDataSetChanged()V

    .line 407
    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppLoader;->this$0:Lcom/android/launcher3/common/model/BadgeSettingsFragment;

    # invokes: Lcom/android/launcher3/common/model/BadgeSettingsFragment;->dismissProgress()V
    invoke-static {v0}, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->access$900(Lcom/android/launcher3/common/model/BadgeSettingsFragment;)V

    .line 408
    const-string v0, "BadgeSettingsFragment"

    const-string v1, "BadgeAppLoader onPostExecute: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    return-void
.end method
