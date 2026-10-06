.class public Lrd/c;
.super Ll4/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrd/c$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ll4/b;-><init>()V

    return-void
.end method

.method private d(Landroid/content/Context;)I
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {p1, v1, v0, v2}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "health"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method private e(Landroid/content/Context;)I
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {p1, v1, v0, v2}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "temperature"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    div-int/lit8 p1, p1, 0xa

    return p1
.end method

.method private f(Landroid/content/Context;)F
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {p1, v1, v0, v2}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "voltage"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr p1, v0

    return p1
.end method

.method private g(Landroid/content/Context;Lrd/c$b;Z)V
    .locals 3

    const v0, 0x7f060bec

    const v1, 0x7f060c37

    iget-object p3, p2, Lrd/c$b;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p2, p2, Lrd/c$b;->e:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private h(Lrd/c$b;Landroid/content/Context;)V
    .locals 7

    invoke-static {}, Lme/b;->h()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-eq v0, v5, :cond_3

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    iget-object v1, p1, Lrd/c$b;->e:Landroid/widget/TextView;

    const v2, 0x7f1203a7

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lrd/c$b;->e:Landroid/widget/TextView;

    const v2, 0x7f1203a8

    goto :goto_0

    :cond_1
    iget-object v1, p1, Lrd/c$b;->e:Landroid/widget/TextView;

    const v2, 0x7f1203a9

    goto :goto_0

    :cond_2
    iget-object v1, p1, Lrd/c$b;->e:Landroid/widget/TextView;

    const v2, 0x7f1203aa

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p1, Lrd/c$b;->a:Landroid/widget/TextView;

    const v2, 0x7f12038c

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    invoke-direct {p0, p2, p1, v4}, Lrd/c;->g(Landroid/content/Context;Lrd/c$b;Z)V

    invoke-static {}, Lhd/a;->x()V

    invoke-static {v0}, Lhd/a;->w(I)V

    goto :goto_2

    :cond_3
    invoke-direct {p0, p2}, Lrd/c;->d(Landroid/content/Context;)I

    move-result v0

    if-eq v0, v2, :cond_5

    if-eq v0, v1, :cond_4

    iget-object v0, p1, Lrd/c$b;->e:Landroid/widget/TextView;

    const v1, 0x7f1203ac

    goto :goto_1

    :cond_4
    iget-object v0, p1, Lrd/c$b;->e:Landroid/widget/TextView;

    const v1, 0x7f1203ab

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-direct {p0, p2, p1, v3}, Lrd/c;->g(Landroid/content/Context;Lrd/c$b;Z)V

    goto :goto_2

    :cond_5
    iget-object v0, p1, Lrd/c$b;->e:Landroid/widget/TextView;

    const v1, 0x7f1203a6

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-direct {p0, p2, p1, v4}, Lrd/c;->g(Landroid/content/Context;Lrd/c$b;Z)V

    :goto_2
    invoke-direct {p0, p2}, Lrd/c;->f(Landroid/content/Context;)F

    move-result v0

    const v1, 0x7f121236

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v6, v4

    const-string v0, "%.1f"

    invoke-static {v5, v0, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-virtual {p2, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lrd/c$b;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f121235

    new-array v1, v3, [Ljava/lang/Object;

    invoke-direct {p0, p2}, Lrd/c;->e(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lrd/c$b;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p2}, Lme/w;->g(Landroid/content/Context;)I

    move-result v0

    invoke-static {p2}, Lme/w;->j(Landroid/content/Context;)I

    move-result v1

    const/16 v2, 0x64

    if-ne v1, v2, :cond_6

    move v1, v0

    goto :goto_3

    :cond_6
    int-to-float v2, v0

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v2, v5

    int-to-float v1, v1

    mul-float/2addr v2, v1

    float-to-int v1, v2

    :goto_3
    iget-object p1, p1, Lrd/c$b;->h:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v4

    const v1, 0x7f121237

    invoke-virtual {p2, v1, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " / "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {p2, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public a(ILandroid/view/View;Landroid/content/Context;Ll4/f;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Ll4/b;->a(ILandroid/view/View;Landroid/content/Context;Ll4/f;)V

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Lrd/c$b;

    const/4 p4, 0x0

    invoke-direct {p1, p4}, Lrd/c$b;-><init>(Lrd/c$a;)V

    const p4, 0x7f0b0158

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    iput-object p4, p1, Lrd/c$b;->a:Landroid/widget/TextView;

    const p4, 0x7f0b0152

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    iput-object p4, p1, Lrd/c$b;->b:Landroid/widget/TextView;

    const p4, 0x7f0b0159

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    iput-object p4, p1, Lrd/c$b;->c:Landroid/widget/TextView;

    const p4, 0x7f0b014f

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    iput-object p4, p1, Lrd/c$b;->d:Landroid/widget/TextView;

    const p4, 0x7f0b0aff

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    iput-object p4, p1, Lrd/c$b;->e:Landroid/widget/TextView;

    const p4, 0x7f0b0dad

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    iput-object p4, p1, Lrd/c$b;->f:Landroid/widget/TextView;

    const p4, 0x7f0b0b7b

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    iput-object p4, p1, Lrd/c$b;->g:Landroid/widget/TextView;

    const p4, 0x7f0b0201

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    iput-object p4, p1, Lrd/c$b;->h:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lrd/c$b;

    :goto_0
    invoke-direct {p0, p1, p3}, Lrd/c;->h(Lrd/c$b;Landroid/content/Context;)V

    invoke-static {p2}, Lx4/h0;->b(Landroid/view/View;)Z

    return-void
.end method

.method public b()I
    .locals 1

    const v0, 0x7f0e03ed

    return v0
.end method
