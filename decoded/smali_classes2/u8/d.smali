.class public Lu8/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq6/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq6/b<",
        "Lcom/miui/gamebooster/model/n;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:Lrh/c;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lrh/c$b;

    invoke-direct {v0}, Lrh/c$b;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lrh/c$b;->x(Z)Lrh/c$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lrh/c$b;->y(Z)Lrh/c$b;

    move-result-object v0

    sget-object v2, Lsh/d;->d:Lsh/d;

    invoke-virtual {v0, v2}, Lrh/c$b;->C(Lsh/d;)Lrh/c$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lrh/c$b;->A(Z)Lrh/c$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lrh/c$b;->E(Z)Lrh/c$b;

    move-result-object v0

    invoke-virtual {v0}, Lrh/c$b;->w()Lrh/c;

    move-result-object v0

    sput-object v0, Lu8/d;->d:Lrh/c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lu8/d;->a:I

    iput-object p1, p0, Lu8/d;->b:Ljava/lang/String;

    iput p2, p0, Lu8/d;->c:I

    return-void
.end method

.method public static synthetic f(Lu8/d;ILq6/i;Lcom/miui/gamebooster/model/n;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lu8/d;->k(ILq6/i;Lcom/miui/gamebooster/model/n;Landroid/view/View;)V

    return-void
.end method

.method private h(Landroid/content/Context;)I
    .locals 2

    iget-object v0, p0, Lu8/d;->b:Ljava/lang/String;

    iget v1, p0, Lu8/d;->c:I

    invoke-static {p1, v0, v1}, La8/l0;->d(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iput p1, p0, Lu8/d;->a:I

    :cond_0
    iget p1, p0, Lu8/d;->a:I

    return p1
.end method

.method private synthetic k(ILq6/i;Lcom/miui/gamebooster/model/n;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lu8/d;->j(ILq6/i;Lcom/miui/gamebooster/model/n;)V

    const p1, 0x7f0b044a

    invoke-virtual {p2, p1}, Lq6/i;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-direct {p0, p1, p3}, Lu8/d;->l(Landroid/widget/TextView;Lcom/miui/gamebooster/model/n;)V

    return-void
.end method

.method private l(Landroid/widget/TextView;Lcom/miui/gamebooster/model/n;)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x8

    if-eqz p2, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/miui/gamebooster/model/n;->n(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070e03

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    const v4, 0x7f070e04

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    sget-object v5, Ln6/e;->c:Ln6/e;

    invoke-virtual {v5}, Ln6/e;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/miui/gamebooster/model/n;->g()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    const p2, 0x7f080f6f

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_1

    :cond_2
    sget-object v5, Ln6/e;->d:Ln6/e;

    invoke-virtual {v5}, Ln6/e;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/miui/gamebooster/model/n;->g()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    const v7, 0x7f080f6b

    if-eqz v5, :cond_3

    const p2, 0x7f070e08

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    const p2, 0x7f070e06

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    const p2, 0x7f070e07

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, v7}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f120ae2

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    sget-object v5, Ln6/e;->e:Ln6/e;

    invoke-virtual {v5}, Ln6/e;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/miui/gamebooster/model/n;->g()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p2}, Lcom/miui/gamebooster/model/n;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    const v0, 0x7f070e0c

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    const v0, 0x7f070e09

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    const v0, 0x7f070e0a

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, v7}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p2}, Lcom/miui/gamebooster/model/n;->a()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_4
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    iput v3, p2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput v2, p2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {p2, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_5
    :goto_2
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private m(Lcom/miui/gamebooster/model/n;Lq6/i;)V
    .locals 9

    const v0, 0x7f0b0447

    invoke-virtual {p2, v0}, Lq6/i;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0b044c

    invoke-virtual {p2, v1}, Lq6/i;->e(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz p1, :cond_1b

    if-eqz v0, :cond_1b

    if-nez v1, :cond_0

    goto/16 :goto_11

    :cond_0
    invoke-virtual {p2}, Lq6/i;->d()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lu8/d$b;->a:[I

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/n;->l()Ln6/c;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const v4, 0x7f0602f7

    const v5, 0x7f06030d

    const/4 v6, 0x0

    const/4 v7, 0x1

    packed-switch v3, :pswitch_data_0

    :goto_0
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    :goto_1
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_11

    :pswitch_0
    invoke-static {}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils$g;->a()Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils$g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils$g;->c()Z

    move-result p1

    goto :goto_2

    :pswitch_1
    invoke-static {}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils$g;->a()Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils$g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils$g;->b()Z

    move-result p1

    :goto_2
    invoke-direct {p0, v0, v1, v4, p1}, Lu8/d;->o(Landroid/widget/ImageView;Landroid/widget/TextView;IZ)V

    goto/16 :goto_11

    :pswitch_2
    sget-boolean p1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez p1, :cond_1b

    :try_start_0
    invoke-static {}, Lu6/f;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lm6/a;->n()Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, v7

    goto :goto_3

    :cond_1
    move p1, v6

    :goto_3
    iget p2, p0, Lu8/d;->c:I

    invoke-static {p2}, La8/g0;->o(I)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v3, "linkturbo_ai_mode_enable"

    invoke-static {p2, v3, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    if-ne p2, v7, :cond_2

    move p2, v7

    goto :goto_4

    :cond_2
    move p2, v6

    :goto_4
    invoke-static {}, La8/g0;->u()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v8, Lm6/b;->a:Ljava/lang/String;

    invoke-static {v3, v8, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v7, :cond_3

    move v3, v7

    goto :goto_5

    :cond_3
    move v3, v6

    :goto_5
    if-nez p1, :cond_5

    if-nez p2, :cond_5

    if-eqz v3, :cond_4

    goto :goto_7

    :cond_4
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setSelected(Z)V

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    :goto_6
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_11

    :cond_5
    :goto_7
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setSelected(Z)V

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "AI_NET_ACCELERATE error:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GbToolItemViewType"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    :pswitch_3
    invoke-static {}, La8/s0;->i()La8/s0;

    move-result-object p1

    iget-object p2, p0, Lu8/d;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, La8/s0;->r(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    if-eqz p1, :cond_6

    goto :goto_8

    :cond_6
    move v4, v5

    :goto_8
    invoke-static {v2, v4}, Landroidx/core/content/ContextCompat;->c(Landroid/content/Context;I)I

    move-result p1

    goto/16 :goto_1

    :pswitch_4
    invoke-static {}, La8/b;->d()La8/b;

    move-result-object p1

    const/high16 p2, 0x40600000    # 3.5f

    invoke-virtual {p1, p2}, La8/b;->t(F)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-static {}, Lt7/b;->d()Lt7/b;

    move-result-object p1

    invoke-virtual {p1}, Lt7/b;->n()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-static {}, Lt7/b;->d()Lt7/b;

    move-result-object p1

    iget-object p2, p0, Lu8/d;->b:Ljava/lang/String;

    iget v3, p0, Lu8/d;->c:I

    invoke-virtual {p1, p2, v3}, Lt7/b;->h(Ljava/lang/String;I)Z

    move-result p1

    goto :goto_9

    :cond_7
    move p1, v6

    :goto_9
    invoke-static {}, Lt7/b;->d()Lt7/b;

    move-result-object p2

    iget-object v3, p0, Lu8/d;->b:Ljava/lang/String;

    iget v8, p0, Lu8/d;->c:I

    invoke-virtual {p2, v3, v8}, Lt7/b;->f(Ljava/lang/String;I)Z

    move-result p2

    if-nez p2, :cond_8

    invoke-static {}, Lt7/b;->d()Lt7/b;

    move-result-object p2

    iget-object v3, p0, Lu8/d;->b:Ljava/lang/String;

    iget v8, p0, Lu8/d;->c:I

    invoke-virtual {p2, v3, v8}, Lt7/b;->g(Ljava/lang/String;I)Z

    move-result p2

    if-nez p2, :cond_8

    invoke-static {}, Lt7/b;->d()Lt7/b;

    move-result-object p2

    iget-object v3, p0, Lu8/d;->b:Ljava/lang/String;

    iget v8, p0, Lu8/d;->c:I

    invoke-virtual {p2, v3, v8}, Lt7/b;->i(Ljava/lang/String;I)Z

    move-result p2

    if-nez p2, :cond_8

    if-eqz p1, :cond_9

    :cond_8
    move v6, v7

    :cond_9
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setSelected(Z)V

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    if-eqz v6, :cond_a

    goto/16 :goto_f

    :cond_a
    move v4, v5

    goto/16 :goto_f

    :pswitch_5
    invoke-static {}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->w()Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->B()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    if-eqz p1, :cond_17

    goto/16 :goto_d

    :pswitch_6
    invoke-static {v2}, La8/j;->g(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_18

    goto/16 :goto_e

    :pswitch_7
    invoke-static {}, La8/o0;->h()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    if-eqz p1, :cond_17

    goto/16 :goto_d

    :pswitch_8
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, La8/g1;->n(Landroid/content/Context;)La8/g1;

    move-result-object p1

    invoke-virtual {p1}, La8/g1;->q()Z

    move-result p2

    new-instance v3, Lu8/d$a;

    invoke-direct {v3, p0, v0, v1, v2}, Lu8/d$a;-><init>(Lu8/d;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/content/Context;)V

    invoke-virtual {p1, v3}, La8/g1;->x(Ls5/b;)V

    invoke-virtual {v0, v7}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p2, :cond_b

    invoke-virtual {v0, v6}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p1}, La8/g1;->m()Z

    move-result p1

    if-eqz p1, :cond_18

    goto/16 :goto_e

    :pswitch_9
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object p1

    invoke-virtual {p1, v6}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoForSlot(I)Lmiui/telephony/SubscriptionInfo;

    move-result-object p1

    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object p2

    invoke-virtual {p2, v7}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoForSlot(I)Lmiui/telephony/SubscriptionInfo;

    move-result-object p2

    invoke-static {}, La8/c0;->a()Z

    move-result v1

    const v2, 0x7f080612

    if-eqz v1, :cond_d

    if-eqz p1, :cond_d

    if-eqz p2, :cond_d

    invoke-virtual {p1}, Lmiui/telephony/SubscriptionInfo;->isActivated()Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-virtual {p2}, Lmiui/telephony/SubscriptionInfo;->isActivated()Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object p1

    invoke-virtual {p1}, Lmiui/telephony/SubscriptionManager;->getDefaultDataSlotId()I

    move-result p1

    if-eqz p1, :cond_d

    if-eq p1, v7, :cond_c

    goto/16 :goto_11

    :cond_c
    const p1, 0x7f080613

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_11

    :cond_d
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_11

    :pswitch_a
    invoke-direct {p0, v2}, Lu8/d;->h(Landroid/content/Context;)I

    move-result p2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz p2, :cond_12

    if-eq p2, v7, :cond_11

    const/4 v2, 0x2

    if-eq p2, v2, :cond_10

    const/4 v2, 0x3

    if-eq p2, v2, :cond_f

    const/4 v2, 0x4

    if-eq p2, v2, :cond_e

    goto :goto_a

    :cond_e
    const v2, 0x7f080654

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    const v6, 0x7f120998

    goto :goto_a

    :cond_f
    const v2, 0x7f080658

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    const v6, 0x7f120997

    goto :goto_a

    :cond_10
    const v2, 0x7f080657

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    const v6, 0x7f120996

    goto :goto_a

    :cond_11
    const v2, 0x7f080665

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    const v6, 0x7f120995

    goto :goto_a

    :cond_12
    const v2, 0x7f080666

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    const v6, 0x7f120994

    :goto_a
    if-eqz v6, :cond_13

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(I)V

    :cond_13
    sget-object v0, La8/r;->a:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/miui/gamebooster/model/n;->v(Ljava/lang/String;)V

    goto/16 :goto_11

    :pswitch_b
    invoke-static {}, La8/o0;->k()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    if-eqz p1, :cond_17

    goto :goto_d

    :pswitch_c
    invoke-static {v2}, La8/k0;->e(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_18

    goto :goto_e

    :pswitch_d
    iget-object p1, p0, Lu8/d;->b:Ljava/lang/String;

    const-string p2, "key_gb_record_ai"

    invoke-static {p2, p1}, La8/i2;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    iget-object p2, p0, Lu8/d;->b:Ljava/lang/String;

    const-string v3, "key_gb_record_manual"

    invoke-static {v3, p2}, La8/i2;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-nez p1, :cond_15

    if-eqz p2, :cond_14

    goto :goto_b

    :cond_14
    move v7, v6

    :cond_15
    :goto_b
    invoke-static {v2}, La8/i2;->c(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_16

    goto :goto_c

    :cond_16
    move v6, v7

    :goto_c
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setSelected(Z)V

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    if-eqz v6, :cond_a

    goto :goto_f

    :pswitch_e
    invoke-static {}, Li6/a;->h()Li6/a;

    move-result-object p1

    invoke-virtual {p1}, Li6/a;->i()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    if-eqz p1, :cond_17

    goto :goto_d

    :cond_17
    move v4, v5

    :goto_d
    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    goto/16 :goto_1

    :pswitch_f
    invoke-static {v2}, La8/l0;->f(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_18

    :goto_e
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setSelected(Z)V

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    :goto_f
    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    goto/16 :goto_1

    :cond_18
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setSelected(Z)V

    goto/16 :goto_0

    :pswitch_10
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    if-nez p1, :cond_19

    move v6, v7

    :cond_19
    invoke-virtual {v0, v6}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    if-eqz v6, :cond_1a

    goto :goto_10

    :cond_1a
    const v5, 0x7f060e6e

    :goto_10
    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {p1, v6}, Landroid/view/View;->setEnabled(Z)V

    :cond_1b
    :goto_11
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private n(Landroid/content/Context;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateDisplayGameMode: Pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lu8/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tmode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lu8/d;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GbToolItemViewType"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lu8/d;->b:Ljava/lang/String;

    iget v1, p0, Lu8/d;->c:I

    iget v2, p0, Lu8/d;->a:I

    const-string v3, "settings_hdr"

    invoke-static {p1, v0, v1, v3, v2}, La8/j0;->s(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;I)V

    return-void
.end method

.method private o(Landroid/widget/ImageView;Landroid/widget/TextView;IZ)V
    .locals 0
    .param p3    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    invoke-virtual {p1, p4}, Landroid/widget/ImageView;->setSelected(Z)V

    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    const p3, 0x7f06030d

    :goto_0
    const/4 p4, 0x0

    invoke-virtual {p1, p3, p4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b()I
    .locals 1

    const v0, 0x7f0e01a7

    return v0
.end method

.method public bridge synthetic c(Lq6/i;Ljava/lang/Object;I)V
    .locals 0

    check-cast p2, Lcom/miui/gamebooster/model/n;

    invoke-virtual {p0, p1, p2, p3}, Lu8/d;->g(Lq6/i;Lcom/miui/gamebooster/model/n;I)V

    return-void
.end method

.method public bridge synthetic d(Ljava/lang/Object;I)Z
    .locals 0

    check-cast p1, Lcom/miui/gamebooster/model/n;

    invoke-virtual {p0, p1, p2}, Lu8/d;->i(Lcom/miui/gamebooster/model/n;I)Z

    move-result p1

    return p1
.end method

.method public synthetic e()Landroid/view/View;
    .locals 1

    invoke-static {p0}, Lq6/a;->c(Lq6/b;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public g(Lq6/i;Lcom/miui/gamebooster/model/n;I)V
    .locals 5

    const v0, 0x7f0b0447

    invoke-virtual {p1, v0}, Lq6/i;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0b044c

    invoke-virtual {p1, v1}, Lq6/i;->e(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/miui/gamebooster/model/n;->l()Ln6/c;

    move-result-object v2

    invoke-virtual {p2}, Lcom/miui/gamebooster/model/n;->j()Ln6/h;

    move-result-object v3

    sget-object v4, Ln6/h;->a:Ln6/h;

    if-ne v3, v4, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    sget-object v3, Ln6/c;->G:Ln6/c;

    if-ne v2, v3, :cond_2

    :goto_0
    invoke-virtual {p2}, Lcom/miui/gamebooster/model/n;->i()Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Lcom/miui/gamebooster/model/n;->e()I

    move-result v2

    invoke-static {v2}, Lt6/a;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :goto_1
    invoke-virtual {p2}, Lcom/miui/gamebooster/model/n;->e()I

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Lcom/miui/gamebooster/model/n;->k()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-direct {p0, p2, p1}, Lu8/d;->m(Lcom/miui/gamebooster/model/n;Lq6/i;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p2}, Lcom/miui/gamebooster/model/n;->f()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lu8/d;->d:Lrh/c;

    invoke-static {v1, v0, v2}, Lx4/o0;->d(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;)V

    :goto_2
    const v0, 0x7f0b044a

    invoke-virtual {p1, v0}, Lq6/i;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {p0, v0, p2}, Lu8/d;->l(Landroid/widget/TextView;Lcom/miui/gamebooster/model/n;)V

    :goto_3
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-static {v0}, Le8/a;->a(Landroid/view/View;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    new-instance v1, Lu8/c;

    invoke-direct {v1, p0, p3, p1, p2}, Lu8/c;-><init>(Lu8/d;ILq6/i;Lcom/miui/gamebooster/model/n;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public i(Lcom/miui/gamebooster/model/n;I)Z
    .locals 1

    sget-object p2, Ln6/h;->a:Ln6/h;

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/n;->j()Ln6/h;

    move-result-object v0

    if-eq p2, v0, :cond_1

    sget-object p2, Ln6/h;->b:Ln6/h;

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/n;->j()Ln6/h;

    move-result-object p1

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public j(ILq6/i;Lcom/miui/gamebooster/model/n;)V
    .locals 6

    invoke-virtual {p2}, Lq6/i;->d()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Ln6/c;->v:Ln6/c;

    invoke-virtual {p3}, Lcom/miui/gamebooster/model/n;->l()Ln6/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, La8/r;->b()Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget v3, p0, Lu8/d;->a:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lt v3, v0, :cond_1

    move v3, v5

    goto :goto_1

    :cond_1
    add-int/2addr v3, v4

    iput v3, p0, Lu8/d;->a:I

    :goto_1
    iput v3, p0, Lu8/d;->a:I

    const v0, 0x7f0b05bc

    invoke-virtual {p2, v0}, Lq6/i;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v3, 0x7f0b064d

    invoke-virtual {p2, v3}, Lq6/i;->e(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iget v3, p0, Lu8/d;->a:I

    if-eqz v3, :cond_6

    if-eq v3, v4, :cond_5

    const/4 v4, 0x2

    if-eq v3, v4, :cond_4

    if-eq v3, v2, :cond_3

    if-eq v3, v1, :cond_2

    move v0, v5

    goto :goto_2

    :cond_2
    const v1, 0x7f080654

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const v0, 0x7f120998

    goto :goto_2

    :cond_3
    const v1, 0x7f080658

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const v0, 0x7f120997

    goto :goto_2

    :cond_4
    const v1, 0x7f080657

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const v0, 0x7f120996

    goto :goto_2

    :cond_5
    const v1, 0x7f080665

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const v0, 0x7f120995

    goto :goto_2

    :cond_6
    const v1, 0x7f080666

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const v0, 0x7f120994

    :goto_2
    invoke-virtual {p2, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    invoke-direct {p0, p1}, Lu8/d;->n(Landroid/content/Context;)V

    sget-object p1, La8/r;->a:Ljava/util/Map;

    iget p2, p0, Lu8/d;->a:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p3, p1}, Lcom/miui/gamebooster/model/n;->v(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    sget-object p2, Ln6/c;->x:Ln6/c;

    invoke-virtual {p3}, Lcom/miui/gamebooster/model/n;->l()Ln6/c;

    move-result-object v0

    if-ne p2, v0, :cond_8

    invoke-virtual {p3, p1}, Lcom/miui/gamebooster/model/n;->n(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {p3, p1, p2}, Lcom/miui/gamebooster/model/n;->p(J)V

    invoke-static {p1, p2}, La8/o0;->C(J)V

    :cond_8
    :goto_3
    return-void
.end method
