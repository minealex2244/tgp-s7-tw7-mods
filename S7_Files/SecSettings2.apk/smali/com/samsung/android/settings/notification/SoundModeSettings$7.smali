.class Lcom/samsung/android/settings/notification/SoundModeSettings$7;
.super Ljava/lang/Object;
.source "SoundModeSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/notification/SoundModeSettings;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/SoundModeSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/notification/SoundModeSettings;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$7;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 225
    const-string/jumbo v3, "SoundModeSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "CallBack, mDisableListeners: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$7;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get2(Lcom/samsung/android/settings/notification/SoundModeSettings;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v3, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$7;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get2(Lcom/samsung/android/settings/notification/SoundModeSettings;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 227
    return v7

    .line 229
    :cond_0
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 230
    .local v2, "val":I
    invoke-static {}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get0()Landroid/media/AudioManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioManager;->getMuteInterval()I

    move-result v0

    .line 231
    .local v0, "currentIntervalValue":I
    div-int/lit8 v3, v0, 0x3c

    if-eq v3, v2, :cond_1

    .line 232
    if-nez v2, :cond_2

    const/16 v3, 0x3c

    if-eq v0, v3, :cond_2

    const/16 v3, 0x78

    if-eq v0, v3, :cond_2

    const/16 v3, 0xb4

    if-eq v0, v3, :cond_2

    .line 233
    :cond_1
    const-string/jumbo v3, "SoundModeSettings"

    const-string/jumbo v4, "CallBack, selected same value. then returned"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    return v7

    .line 237
    :cond_2
    const/4 v1, 0x0

    .line 238
    .local v1, "extraText":Ljava/lang/String;
    packed-switch v2, :pswitch_data_0

    .line 254
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$7;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-wrap4(Lcom/samsung/android/settings/notification/SoundModeSettings;)V

    .line 255
    return v7

    .line 240
    :pswitch_0
    const-string/jumbo v3, "SoundModeSettings"

    const-string/jumbo v4, "CallBack, Select Custom menu by DropDownPreference"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v3, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$7;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v3, v6}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-wrap2(Lcom/samsung/android/settings/notification/SoundModeSettings;I)V

    .line 242
    iget-object v3, p0, Lcom/samsung/android/settings/notification/SoundModeSettings$7;->this$0:Lcom/samsung/android/settings/notification/SoundModeSettings;

    invoke-static {v3, v6}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-wrap3(Lcom/samsung/android/settings/notification/SoundModeSettings;I)V

    goto :goto_0

    .line 247
    :pswitch_1
    const-string/jumbo v3, "SoundModeSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "CallBack, Select "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "hour by DropDownPreference"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-static {}, Lcom/samsung/android/settings/notification/SoundModeSettings;->-get0()Landroid/media/AudioManager;

    move-result-object v3

    mul-int/lit8 v4, v2, 0x3c

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->setMuteInterval(I)V

    goto :goto_0

    .line 238
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method