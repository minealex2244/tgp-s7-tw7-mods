.class public Lcom/android/settings/deviceinfo/StorageItemPreference;
.super Landroid/preference/Preference;
.source "StorageItemPreference.java"


# static fields
.field private static mContext:Landroid/content/Context;


# instance fields
.field private progress:I

.field private progressBar:Landroid/widget/ProgressBar;

.field public userHandle:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->progress:I

    .line 37
    sput-object p1, Lcom/android/settings/deviceinfo/StorageItemPreference;->mContext:Landroid/content/Context;

    .line 38
    const v0, 0x7f0402a6

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setLayoutResource(I)V

    .line 35
    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v4, 0x7f0d01f0

    .line 67
    const v2, 0x102000d

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->progressBar:Landroid/widget/ProgressBar;

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageItemPreference;->updateProgressBar()V

    .line 69
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageItemPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    .line 72
    .local v1, "title":Ljava/lang/CharSequence;
    sget-object v2, Lcom/android/settings/deviceinfo/StorageItemPreference;->mContext:Landroid/content/Context;

    const v3, 0x7f0b13a9

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/settings/deviceinfo/StorageItemPreference;->mContext:Landroid/content/Context;

    const v3, 0x7f0b13a7

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 73
    sget-object v2, Lcom/android/settings/deviceinfo/StorageItemPreference;->mContext:Landroid/content/Context;

    const v3, 0x7f0b04eb

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 72
    if-eqz v2, :cond_1

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageItemPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 79
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageItemPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "key":Ljava/lang/CharSequence;
    const-string/jumbo v2, "knox"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageItemPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 66
    :cond_2
    return-void
.end method

.method protected updateProgressBar()V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->progressBar:Landroid/widget/ProgressBar;

    if-nez v0, :cond_0

    .line 53
    return-void

    .line 55
    :cond_0
    iget v0, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->progress:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 56
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 57
    return-void

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 61
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 62
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->progressBar:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->progress:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 51
    return-void
.end method
