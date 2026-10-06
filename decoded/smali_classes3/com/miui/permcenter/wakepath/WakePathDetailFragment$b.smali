.class final Lcom/miui/permcenter/wakepath/WakePathDetailFragment$b;
.super Lbk/n;
.source "SourceFile"

# interfaces
.implements Lak/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/permcenter/wakepath/WakePathDetailFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbk/n;",
        "Lak/a<",
        "Lyc/j;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/permcenter/wakepath/WakePathDetailFragment;


# direct methods
.method constructor <init>(Lcom/miui/permcenter/wakepath/WakePathDetailFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/wakepath/WakePathDetailFragment$b;->a:Lcom/miui/permcenter/wakepath/WakePathDetailFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lbk/n;-><init>(I)V

    return-void
.end method

.method public static synthetic a(ZLcom/miui/permcenter/wakepath/WakePathDetailFragment;Landroid/widget/CompoundButton;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/permcenter/wakepath/WakePathDetailFragment$b;->i(ZLcom/miui/permcenter/wakepath/WakePathDetailFragment;Landroid/widget/CompoundButton;)V

    return-void
.end method

.method public static synthetic c(Lcom/miui/permcenter/wakepath/WakePathDetailFragment;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/permcenter/wakepath/WakePathDetailFragment$b;->h(Lcom/miui/permcenter/wakepath/WakePathDetailFragment;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic d(Landroid/widget/CompoundButton;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/permcenter/wakepath/WakePathDetailFragment$b;->k(Landroid/widget/CompoundButton;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic e(Lcom/miui/permcenter/wakepath/WakePathDetailFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/permcenter/wakepath/WakePathDetailFragment$b;->l(Lcom/miui/permcenter/wakepath/WakePathDetailFragment;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic f(Landroid/widget/CompoundButton;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/permcenter/wakepath/WakePathDetailFragment$b;->j(Landroid/widget/CompoundButton;Landroid/content/DialogInterface;)V

    return-void
.end method

.method private static final h(Lcom/miui/permcenter/wakepath/WakePathDetailFragment;Landroid/widget/CompoundButton;Z)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/miui/permcenter/wakepath/b;

    invoke-direct {v0, p2, p0, p1}, Lcom/miui/permcenter/wakepath/b;-><init>(ZLcom/miui/permcenter/wakepath/WakePathDetailFragment;Landroid/widget/CompoundButton;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static final i(ZLcom/miui/permcenter/wakepath/WakePathDetailFragment;Landroid/widget/CompoundButton;)V
    .locals 5

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-nez p0, :cond_1

    invoke-static {p1}, Lcom/miui/permcenter/wakepath/WakePathDetailFragment;->e0(Lcom/miui/permcenter/wakepath/WakePathDetailFragment;)Z

    move-result p0

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    new-instance p0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f121bc7

    invoke-virtual {p0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    sget-object v2, Lbk/b0;->a:Lbk/b0;

    const v2, 0x7f121bc9

    invoke-virtual {p1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getString(R.string.wakepath_delete_app_start_all)"

    invoke-static {v2, v3}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/miui/permcenter/wakepath/WakePathDetailFragment;->h0(Lcom/miui/permcenter/wakepath/WakePathDetailFragment;)Lyc/r;

    move-result-object v4

    invoke-static {v4}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lyc/r;->e()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "format(format, *args)"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    new-instance v0, Lcom/miui/permcenter/wakepath/c;

    invoke-direct {v0, p2}, Lcom/miui/permcenter/wakepath/c;-><init>(Landroid/widget/CompoundButton;)V

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const v0, 0x7f120499

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/miui/permcenter/wakepath/d;

    invoke-direct {v1, p2}, Lcom/miui/permcenter/wakepath/d;-><init>(Landroid/widget/CompoundButton;)V

    invoke-virtual {p0, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const p2, 0x7f120f48

    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/miui/permcenter/wakepath/e;

    invoke-direct {v0, p1}, Lcom/miui/permcenter/wakepath/e;-><init>(Lcom/miui/permcenter/wakepath/WakePathDetailFragment;)V

    invoke-virtual {p0, p2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Lcom/miui/permcenter/wakepath/WakePathDetailFragment;->p0(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v0}, Lcom/miui/permcenter/wakepath/WakePathDetailFragment;->p0(Z)V

    :goto_0
    return-void
.end method

.method private static final j(Landroid/widget/CompoundButton;Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    return-void
.end method

.method private static final k(Landroid/widget/CompoundButton;Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    return-void
.end method

.method private static final l(Lcom/miui/permcenter/wakepath/WakePathDetailFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/permcenter/wakepath/WakePathDetailFragment;->p0(Z)V

    return-void
.end method


# virtual methods
.method public final g()Lyc/j;
    .locals 10
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v9, Lyc/j;

    iget-object v0, p0, Lcom/miui/permcenter/wakepath/WakePathDetailFragment$b;->a:Lcom/miui/permcenter/wakepath/WakePathDetailFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.miui.permcenter.wakepath.WakePathManagerActivity"

    invoke-static {v0, v1}, Lbk/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v0

    check-cast v1, Lcom/miui/permcenter/wakepath/WakePathManagerActivity;

    new-instance v5, Lcom/miui/permcenter/wakepath/WakePathDetailFragment$b$a;

    iget-object v0, p0, Lcom/miui/permcenter/wakepath/WakePathDetailFragment$b;->a:Lcom/miui/permcenter/wakepath/WakePathDetailFragment;

    invoke-direct {v5, v0}, Lcom/miui/permcenter/wakepath/WakePathDetailFragment$b$a;-><init>(Lcom/miui/permcenter/wakepath/WakePathDetailFragment;)V

    iget-object v0, p0, Lcom/miui/permcenter/wakepath/WakePathDetailFragment$b;->a:Lcom/miui/permcenter/wakepath/WakePathDetailFragment;

    new-instance v6, Lcom/miui/permcenter/wakepath/a;

    invoke-direct {v6, v0}, Lcom/miui/permcenter/wakepath/a;-><init>(Lcom/miui/permcenter/wakepath/WakePathDetailFragment;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v7, 0xa

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lyc/j;-><init>(Lcom/miui/permcenter/wakepath/WakePathManagerActivity;Ljava/util/ArrayList;ZLak/l;Lak/l;Landroid/widget/CompoundButton$OnCheckedChangeListener;ILbk/g;)V

    return-object v9
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/permcenter/wakepath/WakePathDetailFragment$b;->g()Lyc/j;

    move-result-object v0

    return-object v0
.end method
