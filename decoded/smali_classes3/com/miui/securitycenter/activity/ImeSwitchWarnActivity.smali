.class public Lcom/miui/securitycenter/activity/ImeSwitchWarnActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:[I

.field b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 4

    invoke-static {}, Lef/x;->n()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ldf/h;->J(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-static {p0}, Ldf/h;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-static {p0, v0}, Ldf/h;->r(Landroid/content/Context;Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v3, "default_input_method"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static {v0}, Lef/x;->e0(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private b()V
    .locals 4

    iget-object v0, p0, Lcom/miui/securitycenter/activity/ImeSwitchWarnActivity;->b:Ljava/lang/String;

    invoke-static {p0, v0}, Ldf/h;->p(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    const v1, 0x7f0b0c9b

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const v0, 0x7f120c4b

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    iget-object v0, p0, Lcom/miui/securitycenter/activity/ImeSwitchWarnActivity;->a:[I

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0b019c

    if-eq p1, v0, :cond_1

    const v0, 0x7f0b019f

    if-eq p1, v0, :cond_0

    const v0, 0x7f0b0847

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/securitycenter/activity/ImeSwitchWarnActivity;->b:Ljava/lang/String;

    invoke-static {p0, p1}, Ldf/h;->r(Landroid/content/Context;Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v1, "default_input_method"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object p1, p0, Lcom/miui/securitycenter/activity/ImeSwitchWarnActivity;->b:Ljava/lang/String;

    invoke-static {p1}, Lef/x;->e0(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/miui/securitycenter/activity/ImeSwitchWarnActivity;->finish()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p0}, Lkh/f;->b(Landroid/app/Activity;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securitycenter/activity/ImeSwitchWarnActivity;->a:[I

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0e0035

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    const p1, 0x7f0b019f

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0b019c

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0b0847

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Ldf/h;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/securitycenter/activity/ImeSwitchWarnActivity;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/miui/securitycenter/activity/ImeSwitchWarnActivity;->b()V

    invoke-direct {p0}, Lcom/miui/securitycenter/activity/ImeSwitchWarnActivity;->a()V

    return-void
.end method
