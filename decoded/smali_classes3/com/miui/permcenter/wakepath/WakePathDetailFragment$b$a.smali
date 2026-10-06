.class final Lcom/miui/permcenter/wakepath/WakePathDetailFragment$b$a;
.super Lbk/n;
.source "SourceFile"

# interfaces
.implements Lak/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/permcenter/wakepath/WakePathDetailFragment$b;->g()Lyc/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbk/n;",
        "Lak/l<",
        "Lyc/r;",
        "Loj/t;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/permcenter/wakepath/WakePathDetailFragment;


# direct methods
.method constructor <init>(Lcom/miui/permcenter/wakepath/WakePathDetailFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/wakepath/WakePathDetailFragment$b$a;->a:Lcom/miui/permcenter/wakepath/WakePathDetailFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lbk/n;-><init>(I)V

    return-void
.end method

.method public static synthetic a(Lcom/miui/permcenter/wakepath/WakePathDetailFragment;Lyc/r;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/miui/permcenter/wakepath/WakePathDetailFragment$b$a;->f(Lcom/miui/permcenter/wakepath/WakePathDetailFragment;Lyc/r;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic c(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/permcenter/wakepath/WakePathDetailFragment$b$a;->e(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private static final e(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method private static final f(Lcom/miui/permcenter/wakepath/WakePathDetailFragment;Lyc/r;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$it"

    invoke-static {p1, p2}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/miui/permcenter/wakepath/WakePathDetailFragment;->g0(Lcom/miui/permcenter/wakepath/WakePathDetailFragment;)Lyc/s;

    move-result-object p0

    invoke-virtual {p0, p1}, Lyc/s;->i(Lyc/r;)V

    return-void
.end method


# virtual methods
.method public final d(Lyc/r;)V
    .locals 7
    .param p1    # Lyc/r;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/miui/permcenter/wakepath/WakePathDetailFragment$b$a;->a:Lcom/miui/permcenter/wakepath/WakePathDetailFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f121bc6

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lbk/b0;->a:Lbk/b0;

    iget-object v1, p0, Lcom/miui/permcenter/wakepath/WakePathDetailFragment$b$a;->a:Lcom/miui/permcenter/wakepath/WakePathDetailFragment;

    const v2, 0x7f121bca

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.wakep\u2026lete_app_start_other_app)"

    invoke-static {v1, v2}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/miui/permcenter/wakepath/WakePathDetailFragment$b$a;->a:Lcom/miui/permcenter/wakepath/WakePathDetailFragment;

    invoke-static {v4}, Lcom/miui/permcenter/wakepath/WakePathDetailFragment;->h0(Lcom/miui/permcenter/wakepath/WakePathDetailFragment;)Lyc/r;

    move-result-object v4

    invoke-static {v4}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lyc/r;->e()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {p1}, Lyc/r;->c()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "format(format, *args)"

    invoke-static {v1, v2}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/permcenter/wakepath/WakePathDetailFragment$b$a;->a:Lcom/miui/permcenter/wakepath/WakePathDetailFragment;

    const v2, 0x7f120499

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/miui/permcenter/wakepath/f;

    invoke-direct {v2}, Lcom/miui/permcenter/wakepath/f;-><init>()V

    invoke-virtual {v0, v1, v2, v5}, Lmiuix/appcompat/app/AlertDialog$Builder;->addNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/permcenter/wakepath/WakePathDetailFragment$b$a;->a:Lcom/miui/permcenter/wakepath/WakePathDetailFragment;

    const v2, 0x7f120f48

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/permcenter/wakepath/WakePathDetailFragment$b$a;->a:Lcom/miui/permcenter/wakepath/WakePathDetailFragment;

    new-instance v3, Lcom/miui/permcenter/wakepath/g;

    invoke-direct {v3, v2, p1}, Lcom/miui/permcenter/wakepath/g;-><init>(Lcom/miui/permcenter/wakepath/WakePathDetailFragment;Lyc/r;)V

    invoke-virtual {v0, v1, v3, v6}, Lmiuix/appcompat/app/AlertDialog$Builder;->addPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lyc/r;

    invoke-virtual {p0, p1}, Lcom/miui/permcenter/wakepath/WakePathDetailFragment$b$a;->d(Lyc/r;)V

    sget-object p1, Loj/t;->a:Loj/t;

    return-object p1
.end method
