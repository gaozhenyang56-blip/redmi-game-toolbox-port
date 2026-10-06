.class public final Lcom/miui/permcenter/provision/PrivacyExtraProvisionActivity;
.super Lmiuix/provision/ProvisionBaseActivity;
.source "SourceFile"


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nPrivacyExtraProvisionActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PrivacyExtraProvisionActivity.kt\ncom/miui/permcenter/provision/PrivacyExtraProvisionActivity\n+ 2 ActivityViewModelLazy.kt\nandroidx/activity/ActivityViewModelLazyKt\n*L\n1#1,294:1\n41#2,7:295\n*S KotlinDebug\n*F\n+ 1 PrivacyExtraProvisionActivity.kt\ncom/miui/permcenter/provision/PrivacyExtraProvisionActivity\n*L\n41#1:295,7\n*E\n"
    }
.end annotation


# instance fields
.field private final B:Loj/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private C:Lcom/miui/permcenter/provision/PrivacyExtraProvisionFragment;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lmiuix/provision/ProvisionBaseActivity;-><init>()V

    new-instance v0, Lcom/miui/permcenter/provision/PrivacyExtraProvisionActivity$b;

    invoke-direct {v0, p0}, Lcom/miui/permcenter/provision/PrivacyExtraProvisionActivity$b;-><init>(Landroidx/activity/ComponentActivity;)V

    new-instance v1, Landroidx/lifecycle/t0;

    const-class v2, Lcom/miui/permcenter/provision/c;

    invoke-static {v2}, Lbk/z;->b(Ljava/lang/Class;)Lhk/b;

    move-result-object v2

    new-instance v3, Lcom/miui/permcenter/provision/PrivacyExtraProvisionActivity$c;

    invoke-direct {v3, p0}, Lcom/miui/permcenter/provision/PrivacyExtraProvisionActivity$c;-><init>(Landroidx/activity/ComponentActivity;)V

    invoke-direct {v1, v2, v3, v0}, Landroidx/lifecycle/t0;-><init>(Lhk/b;Lak/a;Lak/a;)V

    iput-object v1, p0, Lcom/miui/permcenter/provision/PrivacyExtraProvisionActivity;->B:Loj/f;

    return-void
.end method

.method public static final synthetic H0(Lcom/miui/permcenter/provision/PrivacyExtraProvisionActivity;)Lcom/miui/permcenter/provision/c;
    .locals 0

    invoke-direct {p0}, Lcom/miui/permcenter/provision/PrivacyExtraProvisionActivity;->I0()Lcom/miui/permcenter/provision/c;

    move-result-object p0

    return-object p0
.end method

.method private final I0()Lcom/miui/permcenter/provision/c;
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/provision/PrivacyExtraProvisionActivity;->B:Loj/f;

    invoke-interface {v0}, Loj/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/permcenter/provision/c;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lmiuix/provision/ProvisionBaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1}, Lxc/z;->b(Landroid/view/Window;)V

    new-instance p1, Lcom/miui/permcenter/provision/PrivacyExtraProvisionFragment;

    invoke-direct {p1}, Lcom/miui/permcenter/provision/PrivacyExtraProvisionFragment;-><init>()V

    iput-object p1, p0, Lcom/miui/permcenter/provision/PrivacyExtraProvisionActivity;->C:Lcom/miui/permcenter/provision/PrivacyExtraProvisionFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->m()Landroidx/fragment/app/s;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/permcenter/provision/PrivacyExtraProvisionActivity;->C:Lcom/miui/permcenter/provision/PrivacyExtraProvisionFragment;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "mFragment"

    invoke-static {v0}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    const v2, 0x7f0b0921

    invoke-virtual {p1, v2, v0}, Landroidx/fragment/app/s;->v(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/s;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/s;->k()I

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->d0()Z

    const p1, 0x7f12145c    # 1.94173E38f

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/provision/ProvisionBaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lmiuix/provision/ProvisionBaseActivity;->l:Landroid/widget/Button;

    const v0, 0x7f12145a

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object p1, p0, Lmiuix/provision/ProvisionBaseActivity;->j:Landroid/widget/TextView;

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    const p1, 0x7f080f48

    invoke-static {p0, p1}, Lf/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/provision/ProvisionBaseActivity;->C0(Landroid/graphics/drawable/Drawable;)V

    invoke-static {p0}, Landroidx/lifecycle/w;->a(Landroidx/lifecycle/v;)Landroidx/lifecycle/o;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v5, Lcom/miui/permcenter/provision/PrivacyExtraProvisionActivity$a;

    invoke-direct {v5, p0, v1}, Lcom/miui/permcenter/provision/PrivacyExtraProvisionActivity$a;-><init>(Lcom/miui/permcenter/provision/PrivacyExtraProvisionActivity;Ltj/d;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Llk/g;->b(Llk/i0;Ltj/g;Llk/k0;Lak/p;ILjava/lang/Object;)Llk/s1;

    return-void
.end method

.method protected t0()Z
    .locals 1

    sget-boolean v0, Lsl/a;->a:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lbm/d;->r(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected x0()V
    .locals 1

    invoke-super {p0}, Lmiuix/provision/ProvisionBaseActivity;->x0()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method

.method protected y0()V
    .locals 2

    invoke-super {p0}, Lmiuix/provision/ProvisionBaseActivity;->y0()V

    invoke-direct {p0}, Lcom/miui/permcenter/provision/PrivacyExtraProvisionActivity;->I0()Lcom/miui/permcenter/provision/c;

    move-result-object v0

    sget-object v1, Lcom/miui/permcenter/provision/d$b;->a:Lcom/miui/permcenter/provision/d$b;

    invoke-virtual {v0, v1}, Lcom/miui/permcenter/provision/c;->b(Lcom/miui/permcenter/provision/d;)V

    return-void
.end method
