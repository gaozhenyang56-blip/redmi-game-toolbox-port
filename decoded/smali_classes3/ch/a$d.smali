.class Lch/a$d;
.super Lmiuix/appcompat/app/AlertDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lch/a;


# direct methods
.method public constructor <init>(Lch/a;Landroid/content/Context;)V
    .locals 3
    .param p1    # Lch/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lch/a$d;->a:Lch/a;

    const p1, 0x7f130455

    invoke-direct {p0, p2, p1}, Lmiuix/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x7d3

    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0e012b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    const v0, 0x7f120557

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/e;->setTitle(I)V

    const v0, 0x7f0b07c4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<a href=\'https://web.vip.miui.com/page/info/mio/mio/detail?postId=33345264\'>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f120556

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "</a>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lch/b;

    invoke-direct {v1, p0, p2}, Lch/b;-><init>(Lch/a$d;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f120476

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lch/c;

    invoke-direct {v0, p0}, Lch/c;-><init>(Lch/a$d;)V

    const/4 v1, -0x1

    invoke-virtual {p0, v1, p2, v0}, Lmiuix/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const p2, 0x7f0b022c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    new-instance p2, Lch/d;

    invoke-direct {p2, p0, p1}, Lch/d;-><init>(Lch/a$d;Landroid/widget/CheckBox;)V

    invoke-virtual {p0, p2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public static synthetic e(Lch/a$d;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lch/a$d;->i(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f(Lch/a$d;Landroid/widget/CheckBox;)V
    .locals 0

    invoke-direct {p0, p1}, Lch/a$d;->k(Landroid/widget/CheckBox;)V

    return-void
.end method

.method public static synthetic g(Lch/a$d;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lch/a$d;->j(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic h(Lch/a$d;Landroid/widget/CheckBox;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lch/a$d;->l(Landroid/widget/CheckBox;Landroid/content/DialogInterface;)V

    return-void
.end method

.method private synthetic i(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    :try_start_0
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10000000

    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "https://web.vip.miui.com/page/info/mio/mio/detail?postId=33345264"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object p1, p0, Lch/a$d;->a:Lch/a;

    invoke-static {p1}, Lch/a;->h(Lch/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string p2, "AbiCompatibilityMonitorService"

    const-string v0, "Something occurs: "

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private synthetic j(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lch/a$d;->a:Lch/a;

    invoke-static {p1}, Lch/a;->h(Lch/a;)V

    return-void
.end method

.method private synthetic k(Landroid/widget/CheckBox;)V
    .locals 2

    iget-object v0, p0, Lch/a$d;->a:Lch/a;

    invoke-static {v0}, Lch/a;->e(Lch/a;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lch/a;->j(Lch/a;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lch/a$d;->a:Lch/a;

    invoke-static {p1}, Lch/a;->k(Lch/a;)V

    iget-object p1, p0, Lch/a$d;->a:Lch/a;

    invoke-static {p1}, Lch/a;->l(Lch/a;)V

    :cond_0
    iget-object p1, p0, Lch/a$d;->a:Lch/a;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lch/a;->c(Lch/a;Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private synthetic l(Landroid/widget/CheckBox;Landroid/content/DialogInterface;)V
    .locals 1

    invoke-static {}, Lch/a;->i()Ljava/util/concurrent/Executor;

    move-result-object p2

    new-instance v0, Lch/e;

    invoke-direct {v0, p0, p1}, Lch/e;-><init>(Lch/a$d;Landroid/widget/CheckBox;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
