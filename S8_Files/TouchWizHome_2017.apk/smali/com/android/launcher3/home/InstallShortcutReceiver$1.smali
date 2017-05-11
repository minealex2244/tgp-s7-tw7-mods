.class Lcom/android/launcher3/home/InstallShortcutReceiver$1;
.super Ljava/lang/Object;
.source "InstallShortcutReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/InstallShortcutReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/InstallShortcutReceiver;

.field final synthetic val$app:Lcom/android/launcher3/LauncherAppState;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$data:Landroid/content/Intent;

.field final synthetic val$desktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/InstallShortcutReceiver;Landroid/content/Intent;Landroid/content/Context;Lcom/android/launcher3/LauncherAppState;Lcom/samsung/android/desktopmode/SemDesktopModeManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/home/InstallShortcutReceiver;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/launcher3/home/InstallShortcutReceiver$1;->this$0:Lcom/android/launcher3/home/InstallShortcutReceiver;

    iput-object p2, p0, Lcom/android/launcher3/home/InstallShortcutReceiver$1;->val$data:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/launcher3/home/InstallShortcutReceiver$1;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/launcher3/home/InstallShortcutReceiver$1;->val$app:Lcom/android/launcher3/LauncherAppState;

    iput-object p5, p0, Lcom/android/launcher3/home/InstallShortcutReceiver$1;->val$desktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 23

    .prologue
    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/InstallShortcutReceiver$1;->val$data:Landroid/content/Intent;

    move-object/from16 v18, v0

    const-string v19, "android.intent.extra.shortcut.INTENT"

    const-class v20, Landroid/content/Intent;

    # invokes: Lcom/android/launcher3/home/InstallShortcutReceiver;->isValidExtraType(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Z
    invoke-static/range {v18 .. v20}, Lcom/android/launcher3/home/InstallShortcutReceiver;->access$000(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v18

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/InstallShortcutReceiver$1;->val$data:Landroid/content/Intent;

    move-object/from16 v18, v0

    const-string v19, "android.intent.extra.shortcut.ICON_RESOURCE"

    const-class v20, Landroid/content/Intent$ShortcutIconResource;

    .line 127
    # invokes: Lcom/android/launcher3/home/InstallShortcutReceiver;->isValidExtraType(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Z
    invoke-static/range {v18 .. v20}, Lcom/android/launcher3/home/InstallShortcutReceiver;->access$000(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v18

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/InstallShortcutReceiver$1;->val$data:Landroid/content/Intent;

    move-object/from16 v18, v0

    const-string v19, "android.intent.extra.shortcut.ICON"

    const-class v20, Landroid/graphics/Bitmap;

    .line 129
    # invokes: Lcom/android/launcher3/home/InstallShortcutReceiver;->isValidExtraType(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Z
    invoke-static/range {v18 .. v20}, Lcom/android/launcher3/home/InstallShortcutReceiver;->access$000(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v18

    if-nez v18, :cond_2

    .line 130
    :cond_0
    const-string v18, "InstallShortcutReceiver"

    const-string v19, "Invalid install shortcut intent case 1"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_1
    :goto_0
    return-void

    .line 134
    :cond_2
    new-instance v8, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/InstallShortcutReceiver$1;->val$data:Landroid/content/Intent;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/InstallShortcutReceiver$1;->val$context:Landroid/content/Context;

    move-object/from16 v19, v0

    const-wide/16 v20, -0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-wide/from16 v2, v20

    invoke-direct {v8, v0, v1, v2, v3}, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;-><init>(Landroid/content/Intent;Landroid/content/Context;J)V

    .line 135
    .local v8, "info":Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;
    iget-object v0, v8, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3

    iget-object v0, v8, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->label:Ljava/lang/String;

    move-object/from16 v18, v0

    if-nez v18, :cond_4

    .line 136
    :cond_3
    const-string v18, "InstallShortcutReceiver"

    const-string v19, "Invalid install shortcut intent"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 141
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/InstallShortcutReceiver$1;->this$0:Lcom/android/launcher3/home/InstallShortcutReceiver;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/InstallShortcutReceiver$1;->val$context:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/InstallShortcutReceiver$1;->val$data:Landroid/content/Intent;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    # invokes: Lcom/android/launcher3/home/InstallShortcutReceiver;->updateContactShortcut(Landroid/content/Context;Landroid/content/Intent;Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;)Z
    invoke-static {v0, v1, v2, v8}, Lcom/android/launcher3/home/InstallShortcutReceiver;->access$100(Lcom/android/launcher3/home/InstallShortcutReceiver;Landroid/content/Context;Landroid/content/Intent;Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 142
    const-string v18, "InstallShortcutReceiver"

    const-string v19, "updateContactShortcut true"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 146
    :cond_5
    invoke-virtual {v8}, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->isLuncherActivity()Z

    move-result v18

    if-nez v18, :cond_6

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/InstallShortcutReceiver$1;->val$context:Landroid/content/Context;

    move-object/from16 v18, v0

    iget-object v0, v8, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Lcom/android/launcher3/Utilities;->hasPermissionForActivity(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_6

    .line 151
    const-string v18, "InstallShortcutReceiver"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Ignoring malicious intent "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v8, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 158
    :cond_6
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHomeModeChange()Z

    move-result v18

    if-eqz v18, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/InstallShortcutReceiver$1;->val$app:Lcom/android/launcher3/LauncherAppState;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v18

    if-eqz v18, :cond_11

    .line 159
    const-string v18, "android.intent.action.MAIN"

    iget-object v0, v8, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_10

    .line 160
    const/4 v12, 0x0

    .line 161
    .local v12, "isKnoxShortcut":Z
    iget-object v9, v8, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    .line 162
    .local v9, "intent":Landroid/content/Intent;
    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v18

    if-eqz v18, :cond_7

    const-string v18, "com.samsung.knox.rcp.components"

    .line 163
    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/InstallShortcutReceiver$1;->val$data:Landroid/content/Intent;

    move-object/from16 v18, v0

    const-string v19, "duplicate"

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 166
    const/4 v12, 0x1

    .line 169
    :cond_7
    if-nez v12, :cond_a

    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v18

    if-eqz v18, :cond_a

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/InstallShortcutReceiver$1;->this$0:Lcom/android/launcher3/home/InstallShortcutReceiver;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/InstallShortcutReceiver$1;->val$context:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v20

    # invokes: Lcom/android/launcher3/home/InstallShortcutReceiver;->hasActivityForComponent(Landroid/content/Context;Landroid/content/ComponentName;)Z
    invoke-static/range {v18 .. v20}, Lcom/android/launcher3/home/InstallShortcutReceiver;->access$200(Lcom/android/launcher3/home/InstallShortcutReceiver;Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 171
    invoke-static {v9}, Lcom/android/launcher3/Utilities;->isLauncherAppTarget(Landroid/content/Intent;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 172
    const-string v18, "InstallShortcutReceiver"

    const-string v19, "This shortcut is same with application!"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 174
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/InstallShortcutReceiver$1;->this$0:Lcom/android/launcher3/home/InstallShortcutReceiver;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/InstallShortcutReceiver$1;->val$context:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    # invokes: Lcom/android/launcher3/home/InstallShortcutReceiver;->shortcutExistsOnHomeOnlyMode(Landroid/content/Context;Landroid/content/Intent;)Z
    invoke-static {v0, v1, v9}, Lcom/android/launcher3/home/InstallShortcutReceiver;->access$300(Lcom/android/launcher3/home/InstallShortcutReceiver;Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 175
    const-string v18, "InstallShortcutReceiver"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "This component("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v8, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->label:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ") exist in DB."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 178
    :cond_9
    const-string v18, "com.samsung.android.themestore"

    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_a

    .line 179
    const-string v18, "InstallShortcutReceiver"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "This component("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v8, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->label:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ") have no ACTION_MAIN"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const-string v18, "android.intent.action.VIEW"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v12    # "isKnoxShortcut":Z
    :cond_a
    # invokes: Lcom/android/launcher3/home/InstallShortcutReceiver;->convertToLauncherActivityIfPossible(Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;)Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;
    invoke-static {v8}, Lcom/android/launcher3/home/InstallShortcutReceiver;->access$500(Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;)Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;

    move-result-object v8

    .line 193
    iget-object v0, v8, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->activityInfo:Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    move-object/from16 v18, v0

    if-nez v18, :cond_b

    iget-object v0, v8, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    if-nez v18, :cond_b

    .line 194
    iget-object v0, v8, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    move-object/from16 v18, v0

    const-string v19, "android.intent.action.VIEW"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    :cond_b
    const/16 v16, 0x0

    .line 197
    .local v16, "showDuplicateToast":Z
    const/4 v4, 0x1

    .line 198
    .local v4, "addQueue":Z
    const/16 v17, 0x0

    .line 199
    .local v17, "skipToastPopup":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/InstallShortcutReceiver$1;->val$context:Landroid/content/Context;

    move-object/from16 v18, v0

    iget-object v0, v8, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    move-object/from16 v19, v0

    invoke-virtual {v8}, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->getUser()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v20

    const/16 v21, 0x0

    invoke-static/range {v18 .. v21}, Lcom/android/launcher3/home/InstallShortcutReceiver;->shortcutExistsInDb(Landroid/content/Context;Landroid/content/Intent;Lcom/android/launcher3/common/compat/UserHandleCompat;Z)Z

    move-result v18

    if-eqz v18, :cond_13

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/InstallShortcutReceiver$1;->this$0:Lcom/android/launcher3/home/InstallShortcutReceiver;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/InstallShortcutReceiver$1;->val$context:Landroid/content/Context;

    move-object/from16 v19, v0

    iget-object v0, v8, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    move-object/from16 v20, v0

    # invokes: Lcom/android/launcher3/home/InstallShortcutReceiver;->uninstallShortcutExistInQueue(Landroid/content/Context;Landroid/content/Intent;)Z
    invoke-static/range {v18 .. v20}, Lcom/android/launcher3/home/InstallShortcutReceiver;->access$600(Lcom/android/launcher3/home/InstallShortcutReceiver;Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v18

    if-eqz v18, :cond_12

    .line 201
    const-string v18, "InstallShortcutReceiver"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "This shortcut ("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v8, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ") is exist in DB & Uninstallshort queue."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const/4 v4, 0x0

    .line 212
    :cond_c
    :goto_1
    invoke-static {}, Lcom/android/launcher3/Utilities;->isKnoxMode()Z

    move-result v18

    if-nez v18, :cond_15

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/InstallShortcutReceiver$1;->val$context:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 214
    .local v14, "pm":Landroid/content/pm/PackageManager;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 215
    .local v11, "intentList":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 217
    .local v5, "componentList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    if-eqz v14, :cond_d

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/InstallShortcutReceiver$1;->val$context:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v11, v5, v0}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    .line 221
    :cond_d
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v18

    if-gtz v18, :cond_15

    .line 222
    new-instance v10, Landroid/content/Intent;

    const-string v18, "android.intent.action.MAIN"

    move-object/from16 v0, v18

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 223
    .local v10, "intentHome":Landroid/content/Intent;
    const-string v18, "android.intent.category.HOME"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v14, v10, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .line 226
    .local v7, "homeAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v6, 0x0

    .line 227
    .local v6, "homeAppCount":I
    if-eqz v7, :cond_14

    .line 228
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    .line 230
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_e
    :goto_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_14

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/ResolveInfo;

    .line 231
    .local v15, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v0, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    if-eqz v19, :cond_e

    const-string v19, "com.sec.android.app.easylauncher"

    iget-object v0, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 232
    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_f

    const-string v19, "com.android.settings"

    iget-object v0, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 233
    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_e

    .line 234
    :cond_f
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 183
    .end local v4    # "addQueue":Z
    .end local v5    # "componentList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v6    # "homeAppCount":I
    .end local v7    # "homeAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v10    # "intentHome":Landroid/content/Intent;
    .end local v11    # "intentList":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    .end local v14    # "pm":Landroid/content/pm/PackageManager;
    .end local v15    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v16    # "showDuplicateToast":Z
    .end local v17    # "skipToastPopup":Z
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/InstallShortcutReceiver$1;->this$0:Lcom/android/launcher3/home/InstallShortcutReceiver;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/InstallShortcutReceiver$1;->val$context:Landroid/content/Context;

    move-object/from16 v19, v0

    iget-object v0, v8, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->label:Ljava/lang/String;

    move-object/from16 v20, v0

    iget-object v0, v8, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    move-object/from16 v21, v0

    # invokes: Lcom/android/launcher3/home/InstallShortcutReceiver;->shortcutExistsOnHomeOnlyMode(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Z
    invoke-static/range {v18 .. v21}, Lcom/android/launcher3/home/InstallShortcutReceiver;->access$400(Lcom/android/launcher3/home/InstallShortcutReceiver;Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 184
    const-string v18, "InstallShortcutReceiver"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "This component("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v8, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->label:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ") exist in DB.(check title & intent)"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 187
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/InstallShortcutReceiver$1;->val$app:Lcom/android/launcher3/LauncherAppState;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher3/LauncherAppState;->getCloneItemEnabled()Z

    move-result v18

    if-nez v18, :cond_a

    iget-object v0, v8, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/launcher3/Utilities;->isLauncherAppTarget(Landroid/content/Intent;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 188
    const-string v18, "InstallShortcutReceiver"

    const-string v19, "This shortcut is same with application!!"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 204
    .restart local v4    # "addQueue":Z
    .restart local v16    # "showDuplicateToast":Z
    .restart local v17    # "skipToastPopup":Z
    :cond_12
    const-string v18, "InstallShortcutReceiver"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "This shortcut ("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v8, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ") is exist in DB."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const/16 v16, 0x1

    goto/16 :goto_1

    .line 207
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/InstallShortcutReceiver$1;->this$0:Lcom/android/launcher3/home/InstallShortcutReceiver;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/InstallShortcutReceiver$1;->val$context:Landroid/content/Context;

    move-object/from16 v19, v0

    iget-object v0, v8, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    move-object/from16 v20, v0

    # invokes: Lcom/android/launcher3/home/InstallShortcutReceiver;->shortcutExistInQueue(Landroid/content/Context;Landroid/content/Intent;)Z
    invoke-static/range {v18 .. v20}, Lcom/android/launcher3/home/InstallShortcutReceiver;->access$700(Lcom/android/launcher3/home/InstallShortcutReceiver;Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 208
    const-string v18, "InstallShortcutReceiver"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "This shortcut ("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v8, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ") is exist in queue."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const/16 v16, 0x1

    goto/16 :goto_1

    .line 239
    .restart local v5    # "componentList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .restart local v6    # "homeAppCount":I
    .restart local v7    # "homeAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v10    # "intentHome":Landroid/content/Intent;
    .restart local v11    # "intentList":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    .restart local v14    # "pm":Landroid/content/pm/PackageManager;
    :cond_14
    const-string v18, "InstallShortcutReceiver"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Silent install shortcut due to none PreferredActivities count : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const/16 v18, 0x1

    move/from16 v0, v18

    if-le v6, v0, :cond_15

    .line 241
    const/16 v17, 0x1

    .line 246
    .end local v5    # "componentList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v6    # "homeAppCount":I
    .end local v7    # "homeAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v10    # "intentHome":Landroid/content/Intent;
    .end local v11    # "intentList":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    .end local v14    # "pm":Landroid/content/pm/PackageManager;
    :cond_15
    if-eqz v16, :cond_17

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/InstallShortcutReceiver$1;->val$app:Lcom/android/launcher3/LauncherAppState;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v18

    if-nez v18, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/InstallShortcutReceiver$1;->val$desktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    move-object/from16 v18, v0

    if-eqz v18, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/InstallShortcutReceiver$1;->val$desktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    move-object/from16 v18, v0

    .line 248
    invoke-static {}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->isDesktopMode()Z

    move-result v18

    if-nez v18, :cond_1

    :cond_16
    if-nez v17, :cond_1

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/InstallShortcutReceiver$1;->val$context:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f080094

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    iget-object v0, v8, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->label:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    invoke-virtual/range {v18 .. v20}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 250
    .local v13, "msg":Ljava/lang/String;
    new-instance v18, Landroid/view/ContextThemeWrapper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/InstallShortcutReceiver$1;->val$context:Landroid/content/Context;

    move-object/from16 v19, v0

    const v20, 0x103012b

    invoke-direct/range {v18 .. v20}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v0, v13, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v18

    .line 251
    invoke-virtual/range {v18 .. v18}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 256
    .end local v13    # "msg":Ljava/lang/String;
    :cond_17
    if-eqz v4, :cond_18

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/InstallShortcutReceiver$1;->val$context:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/InstallShortcutReceiver$1;->val$app:Lcom/android/launcher3/LauncherAppState;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v8, v0, v1}, Lcom/android/launcher3/home/ExternalRequestQueue;->queueExternalRequestInfo(Lcom/android/launcher3/home/ExternalRequestInfo;Landroid/content/Context;Lcom/android/launcher3/LauncherAppState;)V

    .line 260
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/InstallShortcutReceiver$1;->val$desktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    move-object/from16 v18, v0

    if-eqz v18, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/InstallShortcutReceiver$1;->val$desktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    move-object/from16 v18, v0

    invoke-static {}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->isDesktopMode()Z

    move-result v18

    if-nez v18, :cond_1

    :cond_19
    if-nez v17, :cond_1

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/InstallShortcutReceiver$1;->val$context:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f080095

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    iget-object v0, v8, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->label:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    invoke-virtual/range {v18 .. v20}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 265
    .restart local v13    # "msg":Ljava/lang/String;
    new-instance v18, Landroid/view/ContextThemeWrapper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/InstallShortcutReceiver$1;->val$context:Landroid/content/Context;

    move-object/from16 v19, v0

    const v20, 0x103012b

    invoke-direct/range {v18 .. v20}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v0, v13, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v18

    .line 266
    invoke-virtual/range {v18 .. v18}, Landroid/widget/Toast;->show()V

    .line 267
    const-string v18, "InstallShortcutReceiver"

    move-object/from16 v0, v18

    invoke-static {v0, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
