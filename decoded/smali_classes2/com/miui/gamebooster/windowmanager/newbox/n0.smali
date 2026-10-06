.class public Lcom/miui/gamebooster/windowmanager/newbox/n0;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/miui/gamebooster/widget/CheckBoxSettingItemView$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gamebooster/windowmanager/newbox/n0$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/content/Context;

.field private c:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

.field private d:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

.field private e:Lcom/miui/gamebooster/windowmanager/newbox/n0$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/miui/gamebooster/windowmanager/newbox/n0;->a:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/windowmanager/newbox/n0;->b(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/miui/gamebooster/windowmanager/newbox/n0;)Lcom/miui/gamebooster/windowmanager/newbox/n0$b;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/windowmanager/newbox/n0;->e:Lcom/miui/gamebooster/windowmanager/newbox/n0$b;

    return-object p0
.end method

.method private b(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/n0;->b:Landroid/content/Context;

    invoke-direct {p0}, Lcom/miui/gamebooster/windowmanager/newbox/n0;->c()V

    return-void
.end method

.method private c()V
    .locals 7

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/n0;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e01cf

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b0bfe

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/gamebooster/windowmanager/GBTopbarLayout;

    new-instance v2, Lcom/miui/gamebooster/windowmanager/newbox/n0$a;

    invoke-direct {v2, p0}, Lcom/miui/gamebooster/windowmanager/newbox/n0$a;-><init>(Lcom/miui/gamebooster/windowmanager/newbox/n0;)V

    invoke-virtual {v1, v2}, Lcom/miui/gamebooster/windowmanager/GBTopbarLayout;->setOnBackListener(Lcom/miui/gamebooster/windowmanager/GBTopbarLayout$a;)V

    const v1, 0x7f0b0091

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    iput-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/n0;->c:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    iget-object v2, p0, Lcom/miui/gamebooster/windowmanager/newbox/n0;->b:Landroid/content/Context;

    const v3, 0x7f120a28

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->setSubTitleText(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/n0;->c:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    invoke-virtual {v1, p0}, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->setOnCheckedChangeListener(Lcom/miui/gamebooster/widget/CheckBoxSettingItemView$a;)V

    const v1, 0x7f0b0749

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    iput-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/n0;->d:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    iget-object v2, p0, Lcom/miui/gamebooster/windowmanager/newbox/n0;->b:Landroid/content/Context;

    const v4, 0x7f120a2c

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    const/16 v4, 0x1e

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->setSubTitleText(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/n0;->d:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    invoke-virtual {v1, p0}, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->setOnCheckedChangeListener(Lcom/miui/gamebooster/widget/CheckBoxSettingItemView$a;)V

    const v1, 0x7f0b0c70

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    invoke-virtual {p0}, Lcom/miui/gamebooster/windowmanager/newbox/n0;->e()V

    return-void
.end method


# virtual methods
.method public d(Lcom/miui/gamebooster/windowmanager/newbox/n0$b;)Lcom/miui/gamebooster/windowmanager/newbox/n0;
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/n0;->e:Lcom/miui/gamebooster/windowmanager/newbox/n0$b;

    return-object p0
.end method

.method public e()V
    .locals 4

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/n0;->c:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/miui/gamebooster/windowmanager/newbox/n0;->a:Ljava/lang/String;

    const-string v3, "key_gb_record_ai"

    invoke-static {v3, v2}, La8/i2;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2, v1, v1}, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->e(ZZZ)V

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/n0;->d:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/miui/gamebooster/windowmanager/newbox/n0;->a:Ljava/lang/String;

    const-string v3, "key_gb_record_manual"

    invoke-static {v3, v2}, La8/i2;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2, v1, v1}, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->e(ZZZ)V

    :cond_1
    return-void
.end method

.method public onCheckedChanged(Landroid/view/View;Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/n0;->c:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/n0;->a:Ljava/lang/String;

    const-string v0, "key_gb_record_ai"

    invoke-static {v0, p1, p2}, La8/i2;->f(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/n0;->d:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/n0;->a:Ljava/lang/String;

    const-string v0, "key_gb_record_manual"

    invoke-static {v0, p1, p2}, La8/i2;->f(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/n0;->e:Lcom/miui/gamebooster/windowmanager/newbox/n0$b;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/miui/gamebooster/windowmanager/newbox/n0$b;->c()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0b0c70

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/n0;->e:Lcom/miui/gamebooster/windowmanager/newbox/n0$b;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/miui/gamebooster/windowmanager/newbox/n0$b;->b()V

    :cond_0
    return-void
.end method
