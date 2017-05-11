.class public abstract Lcom/android/systemui/qs/QSTile$Icon;
.super Ljava/lang/Object;
.source "QSTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Icon"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 605
    .local p0, "this":Lcom/android/systemui/qs/QSTile$Icon;, "Lcom/android/systemui/qs/QSTile<TTState;>.Icon;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
.end method

.method public getInvisibleDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 609
    .local p0, "this":Lcom/android/systemui/qs/QSTile$Icon;, "Lcom/android/systemui/qs/QSTile<TTState;>.Icon;"
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSTile$Icon;->getDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getPadding()I
    .locals 1

    .prologue
    .line 618
    .local p0, "this":Lcom/android/systemui/qs/QSTile$Icon;, "Lcom/android/systemui/qs/QSTile<TTState;>.Icon;"
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 614
    .local p0, "this":Lcom/android/systemui/qs/QSTile$Icon;, "Lcom/android/systemui/qs/QSTile<TTState;>.Icon;"
    const-class v0, Lcom/android/systemui/qs/QSTile$Icon;

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    return v0
.end method

.method public setColor(Landroid/content/Context;Lcom/android/systemui/qs/QSTile$State;Landroid/graphics/drawable/Drawable;)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "state"    # Lcom/android/systemui/qs/QSTile$State;
    .param p3, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .local p0, "this":Lcom/android/systemui/qs/QSTile$Icon;, "Lcom/android/systemui/qs/QSTile<TTState;>.Icon;"
    const v7, 0x7f0b00fa

    const v6, 0x7f0b00f9

    .line 623
    if-eqz p3, :cond_2

    instance-of v3, p2, Lcom/android/systemui/qs/QSTile$BooleanState;

    if-eqz v3, :cond_2

    move-object v1, p2

    .line 624
    check-cast v1, Lcom/android/systemui/qs/QSTile$BooleanState;

    .line 625
    .local v1, "booleanState":Lcom/android/systemui/qs/QSTile$BooleanState;
    const/high16 v0, 0x3f800000    # 1.0f

    .line 628
    .local v0, "alpha":F
    iget-boolean v3, v1, Lcom/android/systemui/qs/QSTile$BooleanState;->dim:Z

    if-eqz v3, :cond_0

    .line 629
    invoke-virtual {p1, v6}, Landroid/content/Context;->getColor(I)I

    move-result v3

    ushr-int/lit8 v3, v3, 0x18

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c007b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v4

    mul-float v0, v3, v4

    .line 630
    invoke-virtual {p1, v6}, Landroid/content/Context;->getColor(I)I

    move-result v2

    .line 639
    .local v2, "color":I
    :goto_0
    invoke-virtual {p3, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 640
    float-to-int v3, v0

    invoke-virtual {p3, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 642
    const/4 v3, 0x1

    return v3

    .line 631
    .end local v2    # "color":I
    :cond_0
    iget-boolean v3, v1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-eqz v3, :cond_1

    .line 632
    invoke-virtual {p1, v6}, Landroid/content/Context;->getColor(I)I

    move-result v3

    ushr-int/lit8 v3, v3, 0x18

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c007c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v4

    mul-float v0, v3, v4

    .line 633
    invoke-virtual {p1, v6}, Landroid/content/Context;->getColor(I)I

    move-result v2

    .restart local v2    # "color":I
    goto :goto_0

    .line 635
    .end local v2    # "color":I
    :cond_1
    invoke-virtual {p1, v7}, Landroid/content/Context;->getColor(I)I

    move-result v3

    ushr-int/lit8 v3, v3, 0x18

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c007d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v4

    mul-float v0, v3, v4

    .line 636
    invoke-virtual {p1, v7}, Landroid/content/Context;->getColor(I)I

    move-result v3

    const/high16 v4, -0x1000000

    or-int v2, v3, v4

    .restart local v2    # "color":I
    goto :goto_0

    .line 644
    .end local v0    # "alpha":F
    .end local v1    # "booleanState":Lcom/android/systemui/qs/QSTile$BooleanState;
    .end local v2    # "color":I
    :cond_2
    const/4 v3, 0x0

    return v3
.end method
