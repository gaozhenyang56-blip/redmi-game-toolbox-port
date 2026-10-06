.class public Li5/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg5/j;


# static fields
.field private static b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Li5/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Li5/c;->b:Ljava/util/List;

    const-string v1, "131"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Li5/c;->b:Ljava/util/List;

    const-string v1, "132"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Li5/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li5/c;->a:Li5/a;

    return-void
.end method

.method public static synthetic c(Li5/c;Landroidx/recyclerview/widget/RecyclerView$c0;)V
    .locals 0

    invoke-direct {p0, p1}, Li5/c;->k(Landroidx/recyclerview/widget/RecyclerView$c0;)V

    return-void
.end method

.method public static d(Li5/a;)Li5/c;
    .locals 2

    sget-object v0, Li5/c$a;->a:[I

    iget-object v1, p0, Li5/a;->i:Li5/a$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Li5/c;

    invoke-direct {v0, p0}, Li5/c;-><init>(Li5/a;)V

    return-object v0
.end method

.method private e(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x18000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Li5/c;->a:Li5/a;

    iget-object v1, v1, Li5/a;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    return-object v0
.end method

.method private g(Landroid/content/Context;)Landroid/content/Intent;
    .locals 6

    iget-object v0, p0, Li5/c;->a:Li5/a;

    iget-object v1, v0, Li5/a;->f:Ljava/lang/String;

    iget-object v2, v0, Li5/a;->g:Ljava/lang/String;

    iget-object v3, v0, Li5/a;->a:Ljava/lang/String;

    iget-object v0, v0, Li5/a;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, "QuickModel"

    if-nez v4, :cond_0

    const-string v4, "null"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startNativeActivity by uri, id: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", uri = "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Li5/c;->a:Li5/a;

    iget-object v3, p1, Li5/a;->e:Ljava/lang/String;

    iget-object p1, p1, Li5/a;->d:Ljava/lang/String;

    invoke-static {v1, v2, v3, p1}, Lm5/c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startFunction by packageName, id: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", package: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", class: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_2
    if-eqz p1, :cond_4

    const-string v0, "com.tencent.mm"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "com.eg.android.AlipayGphone"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/high16 v0, 0x8000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_4
    return-object p1
.end method

.method private i(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const-string v1, "com.mi.globalbrowser"

    const-string v2, "com.android.browser"

    if-eqz v0, :cond_0

    invoke-static {p1, v1}, Lx4/g1;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1, v2}, Lx4/g1;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    move-object v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method private synthetic k(Landroidx/recyclerview/widget/RecyclerView$c0;)V
    .locals 6

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$c0;->getAdapterPosition()I

    move-result p1

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lm5/f;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, -0x2

    :cond_0
    move v0, p1

    iget-object p1, p0, Li5/c;->a:Li5/a;

    iget-object v1, p1, Li5/a;->g:Ljava/lang/String;

    iget-object v2, p1, Li5/a;->c:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "function"

    invoke-static/range {v0 .. v5}, Ll5/b;->d(ILjava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V

    return-void
.end method

.method private l(Landroid/view/View;Landroid/content/Context;)V
    .locals 3

    :try_start_0
    invoke-direct {p0, p2}, Li5/c;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Li5/c;->e(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, p2}, Li5/c;->j(Landroid/content/Context;)I

    move-result v2

    invoke-static {p1, p2, v1, v0, v2}, La8/a0;->V(Landroid/view/View;Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "QuickModel"

    const-string v0, "start activity error"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private m(Landroid/view/View;Landroid/content/Context;)V
    .locals 4

    const-string v0, "QuickModel"

    :try_start_0
    invoke-direct {p0, p2}, Li5/c;->g(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getComponent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Li5/c;->a:Li5/a;

    iget-object v2, v2, Li5/a;->g:Ljava/lang/String;

    invoke-virtual {p0, p2}, Li5/c;->j(Landroid/content/Context;)I

    move-result v3

    invoke-static {p1, p2, v1, v2, v3}, La8/a0;->V(Landroid/view/View;Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const-string p1, "startActivityForShortcut, intent is null!"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "startActivityForShortcut error:"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/RecyclerView$c0;)V
    .locals 3

    instance-of v0, p1, Ld5/d$b;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Li5/c;->a:Li5/a;

    iget-object v0, v0, Li5/a;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Li5/c;->b:Ljava/util/List;

    iget-object v2, p0, Li5/c;->a:Li5/a;

    iget-object v2, v2, Li5/a;->a:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Li5/c;->a:Li5/a;

    iget-object v1, v1, Li5/a;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Lx4/g1;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lm5/d;->c()Lm5/d;

    move-result-object p1

    iget-object v1, p0, Li5/c;->a:Li5/a;

    iget-object v1, v1, Li5/a;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lm5/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-static {}, Lcom/miui/common/a;->d()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Li5/c;->a:Li5/a;

    iget-object v1, v1, Li5/a;->g:Ljava/lang/String;

    invoke-virtual {p0, v0}, Li5/c;->j(Landroid/content/Context;)I

    move-result v2

    invoke-static {v1, v2}, La8/a0;->D(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object p1, p0, Li5/c;->a:Li5/a;

    iget-object p1, p1, Li5/a;->g:Ljava/lang/String;

    invoke-virtual {p0, v0}, Li5/c;->j(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, p1, v1}, La8/a0;->K(Landroid/content/Context;Ljava/lang/String;I)V

    return-void

    :cond_3
    iget-object v1, p0, Li5/c;->a:Li5/a;

    iget-object v1, v1, Li5/a;->g:Ljava/lang/String;

    invoke-virtual {p0, v0}, Li5/c;->j(Landroid/content/Context;)I

    move-result v2

    invoke-static {v1, v2}, La8/a0;->A(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4

    return-void

    :cond_4
    iget-object v1, p0, Li5/c;->a:Li5/a;

    iget-object v1, v1, Li5/a;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Lx4/g1;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Li5/c;->n(Landroid/view/View;Landroid/content/Context;)V

    :cond_5
    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object v0

    new-instance v1, Li5/b;

    invoke-direct {v1, p0, p1}, Li5/b;-><init>(Li5/c;Landroidx/recyclerview/widget/RecyclerView$c0;)V

    invoke-virtual {v0, v1}, Lef/z;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView$c0;)V
    .locals 6

    instance-of v0, p1, Lcom/miui/dock/edit/c$b;

    const v1, 0x7f0806a8

    if-eqz v0, :cond_0

    check-cast p1, Lcom/miui/dock/edit/c$b;

    iget-object p1, p1, Lcom/miui/dock/edit/c$b;->b:Landroid/widget/ImageView;

    iget-object v0, p0, Li5/c;->a:Li5/a;

    iget-object v0, v0, Li5/a;->b:Ljava/lang/String;

    sget-object v2, Lx4/o0;->h:Lrh/c;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, p1, v2, v1}, Lx4/o0;->f(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lcom/miui/dock/edit/a$b;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/miui/dock/edit/a$b;

    iget-object v2, v0, Lcom/miui/dock/edit/a$b;->b:Landroid/widget/ImageView;

    iget-object v3, v0, Lcom/miui/dock/edit/a$b;->c:Landroid/widget/TextView;

    iget-object v4, p0, Li5/c;->a:Li5/a;

    iget-object v4, v4, Li5/a;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Li5/c;->a:Li5/a;

    iget-object v3, v3, Li5/a;->b:Ljava/lang/String;

    sget-object v4, Lx4/o0;->h:Lrh/c;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v3, v2, v4, v1}, Lx4/o0;->f(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;Landroid/graphics/drawable/Drawable;)V

    invoke-static {v2}, Ldb/a;->b(Landroid/view/View;)V

    iget-object v0, v0, Lcom/miui/dock/edit/a$b;->a:Landroid/view/View;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f080775

    goto :goto_0

    :cond_1
    const p1, 0x7f080776

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    :cond_2
    instance-of v0, p1, Ld5/d$b;

    if-eqz v0, :cond_3

    check-cast p1, Ld5/d$b;

    iget-object p1, p1, Ld5/d$b;->a:Landroid/widget/ImageView;

    iget-object v0, p0, Li5/c;->a:Li5/a;

    iget-object v0, v0, Li5/a;->b:Ljava/lang/String;

    sget-object v1, Lx4/o0;->h:Lrh/c;

    invoke-static {v0, p1, v1}, Lx4/o0;->d(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public f(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    sget-object v0, Li5/c$a;->a:[I

    iget-object v1, p0, Li5/c;->a:Li5/a;

    iget-object v1, v1, Li5/a;->i:Li5/a$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Li5/c;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Li5/c;->e(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Li5/c;->g(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public h()Li5/a;
    .locals 1

    iget-object v0, p0, Li5/c;->a:Li5/a;

    return-object v0
.end method

.method public j(Landroid/content/Context;)I
    .locals 2

    iget-object v0, p0, Li5/c;->a:Li5/a;

    iget-object v0, v0, Li5/a;->g:Ljava/lang/String;

    invoke-static {p1, v0}, Lx4/f1;->d(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getUid: uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickModel"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method protected n(Landroid/view/View;Landroid/content/Context;)V
    .locals 2

    sget-object v0, Li5/c$a;->a:[I

    iget-object v1, p0, Li5/c;->a:Li5/a;

    iget-object v1, v1, Li5/a;->i:Li5/a$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Li5/c;->l(Landroid/view/View;Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2}, Li5/c;->m(Landroid/view/View;Landroid/content/Context;)V

    :goto_0
    return-void
.end method
