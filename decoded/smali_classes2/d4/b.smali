.class public Ld4/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld4/b$a;
    }
.end annotation


# instance fields
.field private a:Lmiuix/appcompat/app/AlertDialog;

.field private b:Landroid/app/Activity;

.field private c:Landroid/os/Handler;

.field private d:Ld4/b$a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Ld4/b;->c:Landroid/os/Handler;

    iput-object p1, p0, Ld4/b;->b:Landroid/app/Activity;

    return-void
.end method

.method public static synthetic a(Ld4/b;)V
    .locals 0

    invoke-direct {p0}, Ld4/b;->c()V

    return-void
.end method

.method private synthetic c()V
    .locals 2

    iget-object v0, p0, Ld4/b;->b:Landroid/app/Activity;

    const v1, 0x7f120534

    invoke-static {v0, v1}, Lx4/y1;->j(Landroid/content/Context;I)V

    return-void
.end method

.method public static e(Landroid/content/Context;)Z
    .locals 10

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/miui/securityscan/shortcut/d$b;->d:Lcom/miui/securityscan/shortcut/d$b;

    invoke-static {p0, v0}, Lcom/miui/securityscan/shortcut/d;->q(Landroid/content/Context;Lcom/miui/securityscan/shortcut/d$b;)Z

    move-result v0

    invoke-static {p0}, Lc4/i;->a(Landroid/content/Context;)Lc4/i;

    move-result-object p0

    invoke-virtual {p0}, Lc4/i;->f()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    if-nez v2, :cond_1

    invoke-virtual {p0, v3}, Lc4/i;->g(Z)V

    :cond_1
    return v1

    :cond_2
    if-eqz v2, :cond_3

    return v1

    :cond_3
    invoke-virtual {p0}, Lc4/i;->b()I

    move-result v0

    invoke-virtual {p0}, Lc4/i;->e()I

    move-result v2

    if-lt v0, v2, :cond_4

    invoke-virtual {p0, v3}, Lc4/i;->g(Z)V

    return v1

    :cond_4
    invoke-virtual {p0}, Lc4/i;->c()J

    move-result-wide v4

    invoke-virtual {p0}, Lc4/i;->d()J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    cmp-long p0, v8, v6

    if-gez p0, :cond_5

    return v1

    :cond_5
    return v3
.end method


# virtual methods
.method public b()V
    .locals 1

    iget-object v0, p0, Ld4/b;->a:Lmiuix/appcompat/app/AlertDialog;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Ld4/b;->a:Lmiuix/appcompat/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public d(Ld4/b$a;)V
    .locals 0

    iput-object p1, p0, Ld4/b;->d:Ld4/b$a;

    return-void
.end method

.method public f()V
    .locals 6

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Ld4/b;->b:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Ld4/b;->a:Lmiuix/appcompat/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    :try_start_0
    iget-object v0, p0, Ld4/b;->b:Landroid/app/Activity;

    invoke-static {v0}, Lc4/i;->a(Landroid/content/Context;)Lc4/i;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lc4/i;->i(J)V

    invoke-virtual {v0}, Lc4/i;->b()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Lc4/i;->h(I)V

    invoke-static {}, Lc4/i$a;->e()V

    iget-object v0, p0, Ld4/b;->b:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0e0133

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0b08dc

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0b07f5

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f0b0506

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-static {}, Lc4/j;->b()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v5, Landroid/text/style/UnderlineSpan;

    invoke-direct {v5}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v4, v5, v1, v3, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Ld4/b;->a:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v1, v0}, Lmiuix/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    iget-object v0, p0, Ld4/b;->a:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ShowRecallDialog: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShortcutRecallDialog"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Ld4/b;->b:Landroid/app/Activity;

    invoke-static {v0}, Lc4/i;->a(Landroid/content/Context;)Lc4/i;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v1, 0x7f0b08dc

    if-ne v1, p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lc4/i;->g(Z)V

    iget-object p1, p0, Ld4/b;->b:Landroid/app/Activity;

    sget-object v0, Lcom/miui/securityscan/shortcut/d$b;->d:Lcom/miui/securityscan/shortcut/d$b;

    invoke-static {p1, v0}, Lcom/miui/securityscan/shortcut/d;->c(Landroid/content/Context;Lcom/miui/securityscan/shortcut/d$b;)V

    iget-object p1, p0, Ld4/b;->c:Landroid/os/Handler;

    new-instance v0, Ld4/a;

    invoke-direct {v0, p0}, Ld4/a;-><init>(Ld4/b;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {}, Lc4/i$a;->c()V

    iget-object p1, p0, Ld4/b;->d:Ld4/b$a;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ld4/b$a;->b()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lc4/i$a;->d()V

    iget-object p1, p0, Ld4/b;->d:Ld4/b$a;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ld4/b$a;->a()V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Ld4/b;->b()V

    return-void
.end method
