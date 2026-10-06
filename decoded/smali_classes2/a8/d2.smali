.class public La8/d2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/widget/TextView;)V
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    invoke-static {p0, v0}, La8/d2;->b(Landroid/widget/TextView;F)V

    return-void
.end method

.method public static b(Landroid/widget/TextView;F)V
    .locals 2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bo"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0b0181

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const p1, 0x3f333333    # 0.7f

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    mul-float/2addr v1, p1

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_1
    return-void
.end method
