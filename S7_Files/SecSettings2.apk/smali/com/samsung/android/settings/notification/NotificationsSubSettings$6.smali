.class final Lcom/samsung/android/settings/notification/NotificationsSubSettings$6;
.super Lcom/android/settings/notification/SettingPref;
.source "NotificationsSubSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/notification/NotificationsSubSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method varargs constructor <init>(ILjava/lang/String;Ljava/lang/String;I[I)V
    .locals 0
    .param p1, "$anonymous0"    # I
    .param p2, "$anonymous1"    # Ljava/lang/String;
    .param p3, "$anonymous2"    # Ljava/lang/String;
    .param p4, "$anonymous3"    # I
    .param p5, "$anonymous4"    # [I

    .prologue
    .line 262
    invoke-direct/range {p0 .. p5}, Lcom/android/settings/notification/SettingPref;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    .line 264
    return-void
.end method


# virtual methods
.method protected getCaption(Landroid/content/res/Resources;I)Ljava/lang/String;
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "value"    # I

    .prologue
    .line 272
    packed-switch p2, :pswitch_data_0

    .line 278
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 274
    :pswitch_0
    const v0, 0x7f0b1949

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 276
    :pswitch_1
    const v0, 0x7f0b194a    # 1.84894E38f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 272
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isApplicable(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 267
    invoke-static {p1}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->-wrap1(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
