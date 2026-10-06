.class public Lcom/miui/permcenter/settings/model/PrivacyProtectionBottomPreference;
.super Landroidx/preference/Preference;
.source "SourceFile"

# interfaces
.implements Lmiuix/preference/b;


# instance fields
.field private a:Landroid/view/ViewStub;

.field private final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/permcenter/settings/model/PrivacyProtectionBottomPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/permcenter/settings/model/PrivacyProtectionBottomPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lcom/miui/permcenter/settings/model/PrivacyProtectionBottomPreference;->b:Landroid/content/Context;

    const p1, 0x7f0e045b

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method public static synthetic d(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/permcenter/settings/model/PrivacyProtectionBottomPreference;->g(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private static synthetic g(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()V
    .locals 4

    iget-object v0, p0, Lcom/miui/permcenter/settings/model/PrivacyProtectionBottomPreference;->a:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f0e0459

    iget-object v1, p0, Lcom/miui/permcenter/settings/model/PrivacyProtectionBottomPreference;->b:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lx4/t;->F(Landroid/app/Activity;)Z

    move-result v1

    const v2, 0x7f0e045a

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    sget-boolean v1, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/miui/permcenter/settings/model/PrivacyProtectionBottomPreference;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v3, :cond_4

    goto :goto_0

    :cond_1
    sget-boolean v1, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/miui/permcenter/settings/model/PrivacyProtectionBottomPreference;->f()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/miui/permcenter/settings/model/PrivacyProtectionBottomPreference;->b:Landroid/content/Context;

    invoke-static {v1}, Lx4/t;->t(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    :goto_0
    move v0, v2

    :cond_4
    iget-object v1, p0, Lcom/miui/permcenter/settings/model/PrivacyProtectionBottomPreference;->a:Landroid/view/ViewStub;

    invoke-virtual {v1, v0}, Landroid/view/ViewStub;->setLayoutResource(I)V

    iget-object v0, p0, Lcom/miui/permcenter/settings/model/PrivacyProtectionBottomPreference;->a:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b08e4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setFocusable(Z)V

    return-void
.end method

.method public f()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Landroidx/window/layout/a;->a(Landroid/app/Activity;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onBindViewHolder(Landroidx/preference/h;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/h;)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    new-instance v0, Luc/d;

    invoke-direct {v0}, Luc/d;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f0b041e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    iput-object p1, p0, Lcom/miui/permcenter/settings/model/PrivacyProtectionBottomPreference;->a:Landroid/view/ViewStub;

    invoke-virtual {p0}, Lcom/miui/permcenter/settings/model/PrivacyProtectionBottomPreference;->e()V

    return-void
.end method
