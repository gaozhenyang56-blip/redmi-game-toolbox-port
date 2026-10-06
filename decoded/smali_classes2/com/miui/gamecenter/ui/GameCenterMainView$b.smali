.class public final Lcom/miui/gamecenter/ui/GameCenterMainView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc9/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamecenter/ui/GameCenterMainView;->D()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc9/e<",
        "Lb9/e;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamecenter/ui/GameCenterMainView;


# direct methods
.method constructor <init>(Lcom/miui/gamecenter/ui/GameCenterMainView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamecenter/ui/GameCenterMainView$b;->a:Lcom/miui/gamecenter/ui/GameCenterMainView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic d(Lcom/miui/gamecenter/ui/GameCenterMainView;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/gamecenter/ui/GameCenterMainView$b;->f(Lcom/miui/gamecenter/ui/GameCenterMainView;)V

    return-void
.end method

.method private static final f(Lcom/miui/gamecenter/ui/GameCenterMainView;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/miui/gamecenter/ui/GameCenterMainView;->j(Lcom/miui/gamecenter/ui/GameCenterMainView;)Lq6/f;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/miui/gamecenter/ui/GameCenterMainView$b;->a:Lcom/miui/gamecenter/ui/GameCenterMainView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gamecenter/ui/GameCenterMainView;->v(Lcom/miui/gamecenter/ui/GameCenterMainView;Z)V

    iget-object v0, p0, Lcom/miui/gamecenter/ui/GameCenterMainView$b;->a:Lcom/miui/gamecenter/ui/GameCenterMainView;

    invoke-static {v0}, Lcom/miui/gamecenter/ui/GameCenterMainView;->k(Lcom/miui/gamecenter/ui/GameCenterMainView;)Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLoadFail: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GameCenterMainView"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lb9/e;

    invoke-virtual {p0, p1}, Lcom/miui/gamecenter/ui/GameCenterMainView$b;->e(Lb9/e;)V

    return-void
.end method

.method public c(Z)V
    .locals 2

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/gamecenter/ui/GameCenterMainView$b;->a:Lcom/miui/gamecenter/ui/GameCenterMainView;

    invoke-static {p1}, Lcom/miui/gamecenter/ui/GameCenterMainView;->m(Lcom/miui/gamecenter/ui/GameCenterMainView;)Landroid/widget/TextView;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/gamecenter/ui/GameCenterMainView$b;->a:Lcom/miui/gamecenter/ui/GameCenterMainView;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120e96

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/miui/gamecenter/ui/GameCenterMainView$b;->a:Lcom/miui/gamecenter/ui/GameCenterMainView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/gamecenter/ui/GameCenterMainView;->z(Lcom/miui/gamecenter/ui/GameCenterMainView;Z)V

    return-void
.end method

.method public e(Lb9/e;)V
    .locals 2
    .param p1    # Lb9/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "model"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/gamecenter/ui/GameCenterMainView$b;->a:Lcom/miui/gamecenter/ui/GameCenterMainView;

    invoke-static {v0}, Lcom/miui/gamecenter/ui/GameCenterMainView;->j(Lcom/miui/gamecenter/ui/GameCenterMainView;)Lq6/f;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lb9/e;->b()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lq6/f;->p(Ljava/util/List;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/gamecenter/ui/GameCenterMainView$b;->a:Lcom/miui/gamecenter/ui/GameCenterMainView;

    invoke-virtual {p1}, Lb9/e;->c()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/gamecenter/ui/GameCenterMainView;->u(Lcom/miui/gamecenter/ui/GameCenterMainView;Z)V

    iget-object v0, p0, Lcom/miui/gamecenter/ui/GameCenterMainView$b;->a:Lcom/miui/gamecenter/ui/GameCenterMainView;

    invoke-virtual {p1}, Lb9/e;->d()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/gamecenter/ui/GameCenterMainView;->w(Lcom/miui/gamecenter/ui/GameCenterMainView;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/gamecenter/ui/GameCenterMainView$b;->a:Lcom/miui/gamecenter/ui/GameCenterMainView;

    new-instance v0, Ld9/c;

    invoke-direct {v0, p1}, Ld9/c;-><init>(Lcom/miui/gamecenter/ui/GameCenterMainView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/miui/gamecenter/ui/GameCenterMainView$b;->a:Lcom/miui/gamecenter/ui/GameCenterMainView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/gamecenter/ui/GameCenterMainView;->v(Lcom/miui/gamecenter/ui/GameCenterMainView;Z)V

    return-void
.end method
