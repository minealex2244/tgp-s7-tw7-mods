.class Lcom/android/server/audio/AudioService$AudioServiceUserRestrictionsListener;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/os/UserManagerInternal$UserRestrictionsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioServiceUserRestrictionsListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method private constructor <init>(Lcom/android/server/audio/AudioService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 9143
    iput-object p1, p0, Lcom/android/server/audio/AudioService$AudioServiceUserRestrictionsListener;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$AudioServiceUserRestrictionsListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/audio/AudioService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$AudioServiceUserRestrictionsListener;-><init>(Lcom/android/server/audio/AudioService;)V

    return-void
.end method


# virtual methods
.method public onUserRestrictionsChanged(ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "userId"    # I
    .param p2, "newRestrictions"    # Landroid/os/Bundle;
    .param p3, "prevRestrictions"    # Landroid/os/Bundle;

    .prologue
    .line 9151
    const-string/jumbo v2, "no_unmute_microphone"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 9153
    .local v1, "wasRestricted":Z
    const-string/jumbo v2, "no_unmute_microphone"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 9154
    .local v0, "isRestricted":Z
    if-eq v1, v0, :cond_0

    .line 9155
    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioServiceUserRestrictionsListener;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2, v0, p1}, Lcom/android/server/audio/AudioService;->-wrap65(Lcom/android/server/audio/AudioService;ZI)V

    .line 9162
    :cond_0
    const-string/jumbo v2, "no_adjust_volume"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 9164
    const-string/jumbo v2, "no_adjust_volume"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 9165
    if-eq v1, v0, :cond_1

    .line 9166
    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioServiceUserRestrictionsListener;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v3, 0x0

    invoke-static {v2, v0, v3, p1}, Lcom/android/server/audio/AudioService;->-wrap64(Lcom/android/server/audio/AudioService;ZII)V

    .line 9147
    :cond_1
    return-void
.end method