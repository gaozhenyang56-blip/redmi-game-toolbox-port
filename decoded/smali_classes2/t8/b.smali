.class public Lt8/b;
.super Lt8/a;
.source "SourceFile"

# interfaces
.implements Lcom/miui/gamebooster/widget/CheckBoxSettingItemView$a;


# instance fields
.field public d:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

.field public e:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

.field public f:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

.field private g:I

.field private h:Ljava/lang/String;

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lt8/a;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    const/4 v0, 0x1

    iput v0, p0, Lt8/b;->i:I

    const/4 v0, 0x2

    iput v0, p0, Lt8/b;->j:I

    const/4 v0, 0x4

    iput v0, p0, Lt8/b;->k:I

    const/4 v0, 0x0

    iput v0, p0, Lt8/b;->l:I

    iput v0, p0, Lt8/b;->m:I

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0e0201

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    iput p3, p0, Lt8/b;->g:I

    iput-object p2, p0, Lt8/b;->h:Ljava/lang/String;

    invoke-direct {p0}, Lt8/b;->g()V

    return-void
.end method

.method private g()V
    .locals 6

    const v0, 0x7f0b05d2

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    iput-object v0, p0, Lt8/b;->e:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    invoke-static {}, Lu6/f;->b()Z

    move-result v0

    invoke-static {}, Lm6/a;->n()Z

    move-result v1

    iget-object v2, p0, Lt8/b;->e:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    invoke-virtual {v2, v5, v4, v4}, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->e(ZZZ)V

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    iget v0, p0, Lt8/b;->m:I

    iget v1, p0, Lt8/b;->j:I

    or-int/2addr v0, v1

    iput v0, p0, Lt8/b;->m:I

    iput v0, p0, Lt8/b;->l:I

    :cond_1
    iget-object v0, p0, Lt8/b;->e:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    invoke-virtual {v0, p0}, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->setOnCheckedChangeListener(Lcom/miui/gamebooster/widget/CheckBoxSettingItemView$a;)V

    const v0, 0x7f0b05a5

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    iput-object v0, p0, Lt8/b;->d:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    iget v0, p0, Lt8/b;->g:I

    invoke-static {v0}, La8/g0;->o(I)Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_3

    iget-object v0, p0, Lt8/b;->d:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    invoke-virtual {v0, p0}, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->setOnCheckedChangeListener(Lcom/miui/gamebooster/widget/CheckBoxSettingItemView$a;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "linkturbo_ai_mode_enable"

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lt8/b;->d:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    if-ne v0, v3, :cond_2

    move v5, v3

    goto :goto_1

    :cond_2
    move v5, v4

    :goto_1
    invoke-virtual {v2, v5, v4, v4}, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->e(ZZZ)V

    if-ne v0, v3, :cond_4

    iget v0, p0, Lt8/b;->m:I

    iget v2, p0, Lt8/b;->i:I

    or-int/2addr v0, v2

    iput v0, p0, Lt8/b;->m:I

    iput v0, p0, Lt8/b;->l:I

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lt8/b;->d:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    :goto_2
    const v0, 0x7f0b05ae

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    iput-object v0, p0, Lt8/b;->f:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    invoke-static {}, La8/g0;->u()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lm6/b;->a:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lt8/b;->f:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    if-ne v0, v3, :cond_5

    move v2, v3

    goto :goto_3

    :cond_5
    move v2, v4

    :goto_3
    invoke-virtual {v1, v2, v4, v4}, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->e(ZZZ)V

    iget-object v1, p0, Lt8/b;->f:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    invoke-virtual {v1, p0}, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->setOnCheckedChangeListener(Lcom/miui/gamebooster/widget/CheckBoxSettingItemView$a;)V

    if-ne v0, v3, :cond_7

    iget v0, p0, Lt8/b;->m:I

    iget v1, p0, Lt8/b;->k:I

    or-int/2addr v0, v1

    iput v0, p0, Lt8/b;->m:I

    iput v0, p0, Lt8/b;->l:I

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lt8/b;->f:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initView Exception\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetAccelerateView"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_4
    return-void
.end method


# virtual methods
.method public getTitle()I
    .locals 1

    const v0, 0x7f120948

    return v0
.end method

.method public onCheckedChanged(Landroid/view/View;Z)V
    .locals 2

    iget-object v0, p0, Lt8/b;->d:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    const-string v1, "NetAccelerateView"

    if-ne p1, v0, :cond_1

    iget p1, p0, Lt8/b;->g:I

    invoke-static {p1, p2}, La8/g0;->h0(IZ)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ai_accelerate_status\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p0, Lt8/b;->m:I

    if-eqz p2, :cond_0

    iget p2, p0, Lt8/b;->i:I

    :goto_0
    or-int/2addr p1, p2

    goto :goto_2

    :cond_0
    iget p2, p0, Lt8/b;->i:I

    :goto_1
    not-int p2, p2

    and-int/2addr p1, p2

    :goto_2
    iput p1, p0, Lt8/b;->m:I

    goto :goto_3

    :cond_1
    iget-object v0, p0, Lt8/b;->e:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    if-ne p1, v0, :cond_3

    invoke-static {p2}, Lu6/f;->c(Z)V

    invoke-static {p2}, Lm6/a;->V(Z)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "wlan_opt_status\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p0, Lt8/b;->m:I

    if-eqz p2, :cond_2

    iget p2, p0, Lt8/b;->j:I

    goto :goto_0

    :cond_2
    iget p2, p0, Lt8/b;->j:I

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lt8/b;->f:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    if-ne p1, v0, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Lm6/b;->a:Ljava/lang/String;

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cellular_net_status\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p0, Lt8/b;->m:I

    if-eqz p2, :cond_4

    iget p2, p0, Lt8/b;->k:I

    goto :goto_0

    :cond_4
    iget p2, p0, Lt8/b;->k:I

    goto :goto_1

    :cond_5
    :goto_3
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    iget v0, p0, Lt8/b;->l:I

    iget v1, p0, Lt8/b;->m:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lt8/b;->h:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gamebooster/utils/a$g;->a(Ljava/lang/String;Landroid/content/Context;)V

    :cond_0
    return-void
.end method
