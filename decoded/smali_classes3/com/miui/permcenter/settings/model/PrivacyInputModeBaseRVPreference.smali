.class public Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference;
.super Landroidx/preference/Preference;
.source "SourceFile"

# interfaces
.implements Lmiuix/preference/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$c;,
        Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$e;,
        Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$g;,
        Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$f;,
        Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$h;,
        Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$d;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$e;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Landroidx/recyclerview/widget/RecyclerView$h;

.field protected d:Lmiuix/recyclerview/widget/RecyclerView;

.field private e:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference;->a:Ljava/util/List;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference;->b:Z

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference;->e:F

    invoke-direct {p0}, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference;->i()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference;->a:Ljava/util/List;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference;->b:Z

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference;->e:F

    invoke-direct {p0}, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference;->i()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference;->a:Ljava/util/List;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference;->b:Z

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference;->e:F

    invoke-direct {p0}, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference;->i()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference;->a:Ljava/util/List;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference;->b:Z

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference;->e:F

    invoke-direct {p0}, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference;->i()V

    return-void
.end method

.method static synthetic d(Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference;->a:Ljava/util/List;

    return-object p0
.end method

.method static synthetic e(Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference;Ljava/lang/String;Landroid/widget/TextView;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference;->k(Ljava/lang/String;Landroid/widget/TextView;Z)V

    return-void
.end method

.method static synthetic f(Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference;->b:Z

    return p0
.end method

.method private h()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$e;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$e;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f080eb3

    const v5, 0x7f080eb8

    const v6, 0x7f080ec2

    const v7, 0x7f080ec7

    const v8, 0x7f080ec7

    invoke-static/range {v3 .. v8}, Lx4/k1;->d(Landroid/content/Context;IIIII)I

    move-result v3

    const v4, 0x7f120614

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f120615

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$e;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$e;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f080eb4

    const v6, 0x7f080eba

    const v7, 0x7f080ec3

    const v8, 0x7f080ec9

    const v9, 0x7f080ec9

    invoke-static/range {v4 .. v9}, Lx4/k1;->d(Landroid/content/Context;IIIII)I

    move-result v4

    const v5, 0x7f12068f

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f120690

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$e;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$e;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f080eb5

    const v7, 0x7f080ebc

    const v8, 0x7f080ec4

    const v9, 0x7f080ecb

    const v10, 0x7f080ecb

    invoke-static/range {v5 .. v10}, Lx4/k1;->d(Landroid/content/Context;IIIII)I

    move-result v5

    const v6, 0x7f12181b

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f12181c

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$e;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$e;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f080eb6

    const v8, 0x7f080ebf

    const v9, 0x7f080ec5

    const v10, 0x7f080ece

    const v11, 0x7f080ece

    invoke-static/range {v6 .. v11}, Lx4/k1;->d(Landroid/content/Context;IIIII)I

    move-result v6

    const v7, 0x7f121534

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f121535

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$e;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v6, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$e;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f080eb7

    const v9, 0x7f080ec1

    const v10, 0x7f080ec6

    const v11, 0x7f080ed0

    const v12, 0x7f080ed0

    invoke-static/range {v7 .. v12}, Lx4/k1;->d(Landroid/content/Context;IIIII)I

    move-result v7

    const v8, 0x7f120f46

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f120f47

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v7, v8, v1}, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$e;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private i()V
    .locals 2

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/common/base/BaseActivity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/miui/common/base/BaseActivity;

    invoke-static {v0}, Lx4/t;->F(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference;->b:Z

    :cond_0
    return-void
.end method

.method private k(Ljava/lang/String;Landroid/widget/TextView;Z)V
    .locals 1

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2, p1, p3}, Lvc/a;->a(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/CharSequence;Z)V

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    if-eqz p3, :cond_0

    const p3, 0x7f121356

    goto :goto_0

    :cond_0
    const p3, 0x7f121357

    :goto_0
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public g()Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$c;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public j(F)V
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference;->d:Lmiuix/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    iput p1, p0, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference;->e:F

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/h;)V
    .locals 4

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/h;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    new-instance v1, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$a;

    invoke-direct {v1, p0}, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$a;-><init>(Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const v0, 0x7f0b0583

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference;->d:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference;->d:Lmiuix/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$b;

    invoke-direct {v1, p0, p1}, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$b;-><init>(Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$n;)V

    invoke-direct {p0}, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference;->h()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference;->a:Ljava/util/List;

    instance-of v0, p1, Lcom/miui/common/base/BaseActivity;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/miui/common/base/BaseActivity;

    invoke-static {v0}, Lx4/t;->F(Landroid/app/Activity;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-eq v3, v2, :cond_1

    :cond_0
    invoke-static {}, Lx4/t;->p()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p1}, Lx4/t;->s(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {p1}, Lx4/t;->t(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {v0}, Lx4/t;->F(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    move v2, v1

    :cond_2
    if-eqz v2, :cond_3

    new-instance p1, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$f;

    invoke-virtual {p0}, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference;->g()Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$c;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$f;-><init>(Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference;Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$c;)V

    goto :goto_0

    :cond_3
    new-instance p1, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$d;

    invoke-virtual {p0}, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference;->g()Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$c;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$d;-><init>(Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference;Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$c;)V

    :goto_0
    iput-object p1, p0, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference;->c:Landroidx/recyclerview/widget/RecyclerView$h;

    iget-object p1, p0, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference;->d:Lmiuix/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference;->c:Landroidx/recyclerview/widget/RecyclerView$h;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    iget p1, p0, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference;->e:F

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference;->d:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_4
    iget-object p1, p0, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference;->d:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusable(Z)V

    return-void
.end method
