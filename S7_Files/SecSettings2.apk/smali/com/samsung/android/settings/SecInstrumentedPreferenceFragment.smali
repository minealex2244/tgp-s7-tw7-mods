.class public abstract Lcom/samsung/android/settings/SecInstrumentedPreferenceFragment;
.super Landroid/preference/PreferenceFragment;
.source "SecInstrumentedPreferenceFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract getMetricsCategory()I
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 53
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 54
    invoke-virtual {p0}, Lcom/samsung/android/settings/SecInstrumentedPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/SecInstrumentedPreferenceFragment;->getMetricsCategory()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->hidden(Landroid/content/Context;I)V

    .line 52
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 47
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 48
    invoke-virtual {p0}, Lcom/samsung/android/settings/SecInstrumentedPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/SecInstrumentedPreferenceFragment;->getMetricsCategory()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->visible(Landroid/content/Context;I)V

    .line 46
    return-void
.end method