.class final Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;
.super Landroid/preference/Preference;
.source "WifiDisplaySettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wfd/WifiDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WifiDisplayPreference"
.end annotation


# instance fields
.field private mDeviceType:I

.field private final mDisplay:Landroid/hardware/display/SemWifiDisplay;

.field public final sDeviceTypeImages:[I

.field final synthetic this$0:Lcom/android/settings/wfd/WifiDisplaySettings;


# direct methods
.method static synthetic -get0(Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;)Landroid/hardware/display/SemWifiDisplay;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->mDisplay:Landroid/hardware/display/SemWifiDisplay;

    return-object v0
.end method

.method public constructor <init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/content/Context;Landroid/hardware/display/SemWifiDisplay;)V
    .locals 9
    .param p1, "this$0"    # Lcom/android/settings/wfd/WifiDisplaySettings;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "display"    # Landroid/hardware/display/SemWifiDisplay;

    .prologue
    const/16 v8, 0xc

    const/16 v7, 0x9

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 2080
    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    .line 2081
    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 2060
    const/16 v5, 0x10

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    iput-object v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->sDeviceTypeImages:[I

    .line 2082
    const/4 v3, 0x0

    .line 2084
    .local v3, "tokens":[Ljava/lang/String;
    iput-object p3, p0, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->mDisplay:Landroid/hardware/display/SemWifiDisplay;

    .line 2085
    iget-object v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->mDisplay:Landroid/hardware/display/SemWifiDisplay;

    invoke-virtual {v5}, Landroid/hardware/display/SemWifiDisplay;->getFriendlyDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2086
    const v5, 0x7f040315

    invoke-virtual {p0, v5}, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->setLayoutResource(I)V

    .line 2088
    iget-object v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->mDisplay:Landroid/hardware/display/SemWifiDisplay;

    invoke-virtual {v5}, Landroid/hardware/display/SemWifiDisplay;->getPrimaryDeviceType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2089
    iget-object v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->mDisplay:Landroid/hardware/display/SemWifiDisplay;

    invoke-virtual {v5}, Landroid/hardware/display/SemWifiDisplay;->getPrimaryDeviceType()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 2092
    .end local v3    # "tokens":[Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->mDisplay:Landroid/hardware/display/SemWifiDisplay;

    invoke-virtual {v5}, Landroid/hardware/display/SemWifiDisplay;->getPrimaryDeviceType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    if-eqz v3, :cond_7

    array-length v5, v3

    if-ge v5, v1, :cond_7

    .line 2093
    :cond_1
    const-string/jumbo v5, "WifiDisplaySettings"

    const-string/jumbo v6, "Malformed primaryDeviceType"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2094
    iget-object v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->sDeviceTypeImages:[I

    aget v5, v5, v7

    invoke-virtual {p0, v5}, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->setIcon(I)V

    .line 2104
    :cond_2
    :goto_0
    iget-object v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->mDisplay:Landroid/hardware/display/SemWifiDisplay;

    invoke-virtual {v5}, Landroid/hardware/display/SemWifiDisplay;->getIconIdx()I

    move-result v0

    .line 2105
    .local v0, "displayIconIdx":I
    xor-int/lit16 v5, v0, 0x900

    if-eqz v5, :cond_3

    xor-int/lit16 v5, v0, 0x901

    if-nez v5, :cond_9

    .line 2106
    :cond_3
    iget-object v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->sDeviceTypeImages:[I

    const/16 v6, 0xb

    aget v5, v5, v6

    invoke-virtual {p0, v5}, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->setIcon(I)V

    .line 2119
    :cond_4
    :goto_1
    invoke-virtual {p3}, Landroid/hardware/display/SemWifiDisplay;->getDeviceInfo()I

    move-result v5

    if-eq v5, v1, :cond_5

    invoke-virtual {p3}, Landroid/hardware/display/SemWifiDisplay;->getDeviceInfo()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_d

    .line 2121
    .local v1, "isSupportScreenSharing":Z
    :cond_5
    :goto_2
    if-nez v1, :cond_6

    .line 2122
    new-instance v2, Landroid/text/SpannableString;

    invoke-virtual {p1}, Lcom/android/settings/wfd/WifiDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0e44

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2123
    .local v2, "summaryText":Landroid/text/Spannable;
    if-eqz v2, :cond_6

    .line 2124
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p1}, Lcom/android/settings/wfd/WifiDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d020e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v2}, Landroid/text/Spannable;->length()I

    move-result v6

    invoke-interface {v2, v5, v4, v6, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 2125
    invoke-virtual {p0, v2}, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2129
    .end local v2    # "summaryText":Landroid/text/Spannable;
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const-string/jumbo v5, "#252525"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 2080
    return-void

    .line 2095
    .end local v0    # "displayIconIdx":I
    .end local v1    # "isSupportScreenSharing":Z
    :cond_7
    if-eqz v3, :cond_2

    .line 2096
    aget-object v5, v3, v4

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->mDeviceType:I

    .line 2097
    iget v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->mDeviceType:I

    if-lt v5, v1, :cond_8

    iget v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->mDeviceType:I

    if-ge v5, v8, :cond_8

    .line 2098
    iget-object v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->sDeviceTypeImages:[I

    iget v6, p0, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->mDeviceType:I

    add-int/lit8 v6, v6, -0x1

    aget v5, v5, v6

    invoke-virtual {p0, v5}, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->setIcon(I)V

    goto :goto_0

    .line 2100
    :cond_8
    iget-object v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->sDeviceTypeImages:[I

    aget v5, v5, v7

    invoke-virtual {p0, v5}, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->setIcon(I)V

    goto/16 :goto_0

    .line 2107
    .restart local v0    # "displayIconIdx":I
    :cond_9
    const v5, 0xff00

    and-int/2addr v5, v0

    const/16 v6, 0x700

    if-ne v5, v6, :cond_4

    .line 2108
    xor-int/lit16 v5, v0, 0x701

    if-nez v5, :cond_a

    .line 2109
    iget-object v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->sDeviceTypeImages:[I

    const/16 v6, 0xd

    aget v5, v5, v6

    invoke-virtual {p0, v5}, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->setIcon(I)V

    goto/16 :goto_1

    .line 2110
    :cond_a
    xor-int/lit16 v5, v0, 0x702

    if-nez v5, :cond_b

    .line 2111
    iget-object v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->sDeviceTypeImages:[I

    const/16 v6, 0xe

    aget v5, v5, v6

    invoke-virtual {p0, v5}, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->setIcon(I)V

    goto/16 :goto_1

    .line 2112
    :cond_b
    xor-int/lit16 v5, v0, 0x704

    if-nez v5, :cond_c

    .line 2113
    iget-object v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->sDeviceTypeImages:[I

    const/16 v6, 0xf

    aget v5, v5, v6

    invoke-virtual {p0, v5}, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->setIcon(I)V

    goto/16 :goto_1

    .line 2115
    :cond_c
    iget-object v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->sDeviceTypeImages:[I

    aget v5, v5, v8

    invoke-virtual {p0, v5}, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->setIcon(I)V

    goto/16 :goto_1

    :cond_d
    move v1, v4

    .line 2119
    goto/16 :goto_2

    .line 2060
    nop

    :array_0
    .array-data 4
        0x7f02054a
        0x7f020542
        0x7f02054c
        0x7f02053e
        0x7f020556
        0x7f020548
        0x7f020559
        0x7f020554
        0x7f020541
        0x7f020545
        0x7f020543
        0x7f02027f
        0x7f020278
        0x7f020280
        0x7f020274
        0x7f020275
    .end array-data
.end method


# virtual methods
.method public getDisplay()Landroid/hardware/display/SemWifiDisplay;
    .locals 1

    .prologue
    .line 2134
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->mDisplay:Landroid/hardware/display/SemWifiDisplay;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 2139
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 2140
    const v3, 0x1020016

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2141
    .local v1, "deviceName":Landroid/widget/TextView;
    if-nez v1, :cond_0

    .line 2142
    const-string/jumbo v3, "WifiDisplaySettings"

    const-string/jumbo v4, "onBindView can\'t find device name."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2143
    return-void

    .line 2145
    :cond_0
    const/high16 v3, 0x41900000    # 18.0f

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2147
    const v3, 0x1020006

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 2148
    .local v2, "icon":Landroid/widget/ImageView;
    if-eqz v2, :cond_1

    .line 2149
    const v3, 0x7f0202ab

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2152
    :cond_1
    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    iget-object v3, v3, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v3}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/SemWifiDisplay;

    move-result-object v0

    .line 2153
    .local v0, "activeDisplay":Landroid/hardware/display/SemWifiDisplay;
    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->mDisplay:Landroid/hardware/display/SemWifiDisplay;

    invoke-virtual {v3, v0}, Landroid/hardware/display/SemWifiDisplay;->equals(Landroid/hardware/display/SemWifiDisplay;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2154
    const v3, -0xff5f32

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2138
    :cond_2
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2160
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->mDisplay:Landroid/hardware/display/SemWifiDisplay;

    invoke-static {v0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->-wrap15(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/hardware/display/SemWifiDisplay;)V

    .line 2159
    return-void
.end method
