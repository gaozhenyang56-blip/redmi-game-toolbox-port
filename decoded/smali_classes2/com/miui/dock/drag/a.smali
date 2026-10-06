.class public Lcom/miui/dock/drag/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq6/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/dock/drag/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq6/b<",
        "Lg5/n;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/miui/dock/drag/a$a;


# direct methods
.method public constructor <init>(Lcom/miui/dock/drag/a$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/dock/drag/a;->a:Lcom/miui/dock/drag/a$a;

    return-void
.end method

.method public static synthetic f(Lcom/miui/dock/drag/a;Lg5/n;Lq6/i;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/dock/drag/a;->i(Lg5/n;Lq6/i;Landroid/view/View;)V

    return-void
.end method

.method private synthetic i(Lg5/n;Lq6/i;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1, p2}, Lg5/n;->a(Landroidx/recyclerview/widget/RecyclerView$c0;)V

    iget-object p1, p0, Lcom/miui/dock/drag/a;->a:Lcom/miui/dock/drag/a$a;

    if-eqz p1, :cond_0

    invoke-interface {p1, p3}, Lcom/miui/dock/drag/a$a;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b()I
    .locals 1

    const v0, 0x7f0e0293

    return v0
.end method

.method public bridge synthetic c(Lq6/i;Ljava/lang/Object;I)V
    .locals 0

    check-cast p2, Lg5/n;

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/dock/drag/a;->g(Lq6/i;Lg5/n;I)V

    return-void
.end method

.method public bridge synthetic d(Ljava/lang/Object;I)Z
    .locals 0

    check-cast p1, Lg5/n;

    invoke-virtual {p0, p1, p2}, Lcom/miui/dock/drag/a;->h(Lg5/n;I)Z

    move-result p1

    return p1
.end method

.method public synthetic e()Landroid/view/View;
    .locals 1

    invoke-static {p0}, Lq6/a;->c(Lq6/b;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public g(Lq6/i;Lg5/n;I)V
    .locals 1

    invoke-virtual {p2, p1}, Lg5/n;->b(Landroidx/recyclerview/widget/RecyclerView$c0;)V

    iget-object p3, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    new-instance v0, Le5/o;

    invoke-direct {v0, p0, p2, p1}, Le5/o;-><init>(Lcom/miui/dock/drag/a;Lg5/n;Lq6/i;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public h(Lg5/n;I)Z
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
