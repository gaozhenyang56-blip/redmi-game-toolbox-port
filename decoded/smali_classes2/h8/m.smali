.class public Lh8/m;
.super Lh8/i;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lg8/b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lh8/i;-><init>(Ljava/lang/String;Lg8/b;)V

    return-void
.end method

.method public static synthetic t(Lh8/m;Lh8/b$a;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lh8/m;->u(Lh8/b$a;ILandroid/view/View;)V

    return-void
.end method

.method private synthetic u(Lh8/b$a;ILandroid/view/View;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1, p0, p3, p2}, Lh8/b$a;->b(Lh8/b;Landroid/view/View;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public k(ILandroid/view/View;Lh8/b$a;)V
    .locals 2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ld8/m$b;

    iget-object v0, p2, Ld8/m$b;->a:Landroid/view/View;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p2, Ld8/m$b;->g:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p2, Ld8/m$b;->f:Lcom/miui/gamebooster/windowmanager/newbox/NewToolBatteryView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p2, Ld8/m$b;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p2, Ld8/m$b;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p2, Ld8/m$b;->a:Landroid/view/View;

    new-instance v0, Lh8/l;

    invoke-direct {v0, p0, p3, p1}, Lh8/l;-><init>(Lh8/m;Lh8/b$a;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public n()I
    .locals 1

    const v0, 0x7f0e052c

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.gamebooster.action.VIDEOBOX_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
