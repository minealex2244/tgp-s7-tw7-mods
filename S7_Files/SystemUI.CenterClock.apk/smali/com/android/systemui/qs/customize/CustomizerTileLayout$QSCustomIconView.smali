.class Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;
.super Lcom/android/systemui/qs/QSIconView;
.source "CustomizerTileLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/customize/CustomizerTileLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QSCustomIconView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/customize/CustomizerTileLayout;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/customize/CustomizerTileLayout;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/customize/CustomizerTileLayout;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 613
    iput-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;->this$0:Lcom/android/systemui/qs/customize/CustomizerTileLayout;

    .line 614
    invoke-direct {p0, p2}, Lcom/android/systemui/qs/QSIconView;-><init>(Landroid/content/Context;)V

    .line 613
    return-void
.end method


# virtual methods
.method protected setIcon(Landroid/widget/ImageView;Lcom/android/systemui/qs/QSTile$State;)V
    .locals 3
    .param p1, "iv"    # Landroid/widget/ImageView;
    .param p2, "state"    # Lcom/android/systemui/qs/QSTile$State;

    .prologue
    const/4 v0, 0x0

    .line 619
    iget-object v1, p2, Lcom/android/systemui/qs/QSTile$State;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    if-eqz v1, :cond_0

    .line 620
    invoke-virtual {p1}, Landroid/widget/ImageView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p2, Lcom/android/systemui/qs/QSTile$State;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/QSTile$Icon;->getDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 623
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    instance-of v1, v0, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;

    if-eqz v1, :cond_1

    .line 624
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 627
    :cond_1
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 629
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b00af

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 617
    return-void

    .line 621
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_2
    iget-object v1, p2, Lcom/android/systemui/qs/QSTile$State;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/QSTile$Icon;->getInvisibleDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method
