.class public final Lcom/miui/gamecenter/ui/GameCenterMainView$c;
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
        "Lb9/f;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamecenter/ui/GameCenterMainView;


# direct methods
.method constructor <init>(Lcom/miui/gamecenter/ui/GameCenterMainView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamecenter/ui/GameCenterMainView$c;->a:Lcom/miui/gamecenter/ui/GameCenterMainView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic d(Lcom/miui/gamecenter/ui/GameCenterMainView;Lb9/f;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/gamecenter/ui/GameCenterMainView$c;->f(Lcom/miui/gamecenter/ui/GameCenterMainView;Lb9/f;)V

    return-void
.end method

.method private static final f(Lcom/miui/gamecenter/ui/GameCenterMainView;Lb9/f;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$model"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/miui/gamecenter/ui/GameCenterMainView;->z(Lcom/miui/gamecenter/ui/GameCenterMainView;Z)V

    invoke-virtual {p1}, Lb9/f;->d()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Lcom/miui/gamecenter/ui/GameCenterMainView;->l(Lcom/miui/gamecenter/ui/GameCenterMainView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {p0}, Lcom/miui/gamecenter/ui/GameCenterMainView;->h(Lcom/miui/gamecenter/ui/GameCenterMainView;)Lrh/c;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lx4/o0;->h(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

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

    check-cast p1, Lb9/f;

    invoke-virtual {p0, p1}, Lcom/miui/gamecenter/ui/GameCenterMainView$c;->e(Lb9/f;)V

    return-void
.end method

.method public c(Z)V
    .locals 2

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/gamecenter/ui/GameCenterMainView$c;->a:Lcom/miui/gamecenter/ui/GameCenterMainView;

    invoke-static {p1}, Lcom/miui/gamecenter/ui/GameCenterMainView;->m(Lcom/miui/gamecenter/ui/GameCenterMainView;)Landroid/widget/TextView;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/gamecenter/ui/GameCenterMainView$c;->a:Lcom/miui/gamecenter/ui/GameCenterMainView;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120e96

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/miui/gamecenter/ui/GameCenterMainView$c;->a:Lcom/miui/gamecenter/ui/GameCenterMainView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/gamecenter/ui/GameCenterMainView;->z(Lcom/miui/gamecenter/ui/GameCenterMainView;Z)V

    return-void
.end method

.method public e(Lb9/f;)V
    .locals 13
    .param p1    # Lb9/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "model"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Le9/b;->a:Le9/b;

    invoke-virtual {p1}, Lb9/f;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Le9/b;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/gamecenter/ui/GameCenterMainView$c;->a:Lcom/miui/gamecenter/ui/GameCenterMainView;

    invoke-static {v0, p1}, Lcom/miui/gamecenter/ui/GameCenterMainView;->y(Lcom/miui/gamecenter/ui/GameCenterMainView;Lb9/f;)V

    invoke-virtual {p1}, Lb9/f;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, La9/a;->a:La9/a;

    invoke-virtual {v1, v0}, La9/a;->b(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1}, Lb9/f;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_9

    invoke-virtual {p1}, Lb9/f;->b()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb9/f$b;

    sget-object v3, Lb9/f$a;->a:Lb9/f$a$a;

    invoke-virtual {v2}, Lb9/f$b;->b()I

    move-result v4

    invoke-virtual {v3, v4}, Lb9/f$a$a;->a(I)Lb9/f$a;

    move-result-object v4

    sget-object v5, Lb9/f$a;->b:Lb9/f$a;

    const-string v6, "context"

    if-ne v4, v5, :cond_2

    iget-object v3, p0, Lcom/miui/gamecenter/ui/GameCenterMainView$c;->a:Lcom/miui/gamecenter/ui/GameCenterMainView;

    new-instance v4, Ld9/h;

    iget-object v5, p0, Lcom/miui/gamecenter/ui/GameCenterMainView$c;->a:Lcom/miui/gamecenter/ui/GameCenterMainView;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v6}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x6

    const/4 v12, 0x0

    move-object v7, v4

    invoke-direct/range {v7 .. v12}, Ld9/h;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILbk/g;)V

    invoke-static {v3, v4}, Lcom/miui/gamecenter/ui/GameCenterMainView;->s(Lcom/miui/gamecenter/ui/GameCenterMainView;Ld9/h;)V

    iget-object v3, p0, Lcom/miui/gamecenter/ui/GameCenterMainView$c;->a:Lcom/miui/gamecenter/ui/GameCenterMainView;

    invoke-static {v3}, Lcom/miui/gamecenter/ui/GameCenterMainView;->e(Lcom/miui/gamecenter/ui/GameCenterMainView;)Ld9/h;

    move-result-object v4

    invoke-virtual {v3, v0, v4, v2}, Lcom/miui/gamecenter/ui/GameCenterMainView;->A(ILandroid/view/View;Lb9/f$b;)V

    iget-object v3, p0, Lcom/miui/gamecenter/ui/GameCenterMainView$c;->a:Lcom/miui/gamecenter/ui/GameCenterMainView;

    invoke-static {v3}, Lcom/miui/gamecenter/ui/GameCenterMainView;->e(Lcom/miui/gamecenter/ui/GameCenterMainView;)Ld9/h;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {v3, v2, v0}, Ld9/h;->b(Lb9/f$b;I)V

    goto/16 :goto_2

    :cond_2
    invoke-virtual {v2}, Lb9/f$b;->b()I

    move-result v4

    invoke-virtual {v3, v4}, Lb9/f$a$a;->a(I)Lb9/f$a;

    move-result-object v4

    sget-object v5, Lb9/f$a;->c:Lb9/f$a;

    if-ne v4, v5, :cond_4

    iget-object v3, p0, Lcom/miui/gamecenter/ui/GameCenterMainView$c;->a:Lcom/miui/gamecenter/ui/GameCenterMainView;

    new-instance v4, Ld9/f;

    iget-object v5, p0, Lcom/miui/gamecenter/ui/GameCenterMainView$c;->a:Lcom/miui/gamecenter/ui/GameCenterMainView;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v6}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x6

    const/4 v12, 0x0

    move-object v7, v4

    invoke-direct/range {v7 .. v12}, Ld9/f;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILbk/g;)V

    invoke-static {v3, v4}, Lcom/miui/gamecenter/ui/GameCenterMainView;->r(Lcom/miui/gamecenter/ui/GameCenterMainView;Ld9/f;)V

    iget-object v3, p0, Lcom/miui/gamecenter/ui/GameCenterMainView$c;->a:Lcom/miui/gamecenter/ui/GameCenterMainView;

    invoke-static {v3}, Lcom/miui/gamecenter/ui/GameCenterMainView;->d(Lcom/miui/gamecenter/ui/GameCenterMainView;)Ld9/f;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3, v2, v0}, Ld9/f;->a(Lb9/f$b;I)V

    :cond_3
    iget-object v3, p0, Lcom/miui/gamecenter/ui/GameCenterMainView$c;->a:Lcom/miui/gamecenter/ui/GameCenterMainView;

    invoke-static {v3}, Lcom/miui/gamecenter/ui/GameCenterMainView;->d(Lcom/miui/gamecenter/ui/GameCenterMainView;)Ld9/f;

    move-result-object v4

    :goto_1
    invoke-virtual {v3, v0, v4, v2}, Lcom/miui/gamecenter/ui/GameCenterMainView;->A(ILandroid/view/View;Lb9/f$b;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Lb9/f$b;->b()I

    move-result v4

    invoke-virtual {v3, v4}, Lb9/f$a$a;->a(I)Lb9/f$a;

    move-result-object v4

    sget-object v5, Lb9/f$a;->e:Lb9/f$a;

    if-ne v4, v5, :cond_6

    iget-object v3, p0, Lcom/miui/gamecenter/ui/GameCenterMainView$c;->a:Lcom/miui/gamecenter/ui/GameCenterMainView;

    new-instance v4, Ld9/j;

    iget-object v5, p0, Lcom/miui/gamecenter/ui/GameCenterMainView$c;->a:Lcom/miui/gamecenter/ui/GameCenterMainView;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v6}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x6

    const/4 v12, 0x0

    move-object v7, v4

    invoke-direct/range {v7 .. v12}, Ld9/j;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILbk/g;)V

    invoke-static {v3, v4}, Lcom/miui/gamecenter/ui/GameCenterMainView;->t(Lcom/miui/gamecenter/ui/GameCenterMainView;Ld9/j;)V

    iget-object v3, p0, Lcom/miui/gamecenter/ui/GameCenterMainView$c;->a:Lcom/miui/gamecenter/ui/GameCenterMainView;

    invoke-static {v3}, Lcom/miui/gamecenter/ui/GameCenterMainView;->f(Lcom/miui/gamecenter/ui/GameCenterMainView;)Ld9/j;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3, v2, v0}, Ld9/j;->b(Lb9/f$b;I)V

    :cond_5
    iget-object v3, p0, Lcom/miui/gamecenter/ui/GameCenterMainView$c;->a:Lcom/miui/gamecenter/ui/GameCenterMainView;

    invoke-static {v3}, Lcom/miui/gamecenter/ui/GameCenterMainView;->f(Lcom/miui/gamecenter/ui/GameCenterMainView;)Ld9/j;

    move-result-object v4

    goto :goto_1

    :cond_6
    invoke-virtual {v2}, Lb9/f$b;->b()I

    move-result v4

    invoke-virtual {v3, v4}, Lb9/f$a$a;->a(I)Lb9/f$a;

    move-result-object v3

    sget-object v4, Lb9/f$a;->d:Lb9/f$a;

    if-ne v3, v4, :cond_8

    iget-object v3, p0, Lcom/miui/gamecenter/ui/GameCenterMainView$c;->a:Lcom/miui/gamecenter/ui/GameCenterMainView;

    new-instance v4, Ld9/e;

    iget-object v5, p0, Lcom/miui/gamecenter/ui/GameCenterMainView$c;->a:Lcom/miui/gamecenter/ui/GameCenterMainView;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v6}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x6

    const/4 v12, 0x0

    move-object v7, v4

    invoke-direct/range {v7 .. v12}, Ld9/e;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILbk/g;)V

    invoke-static {v3, v4}, Lcom/miui/gamecenter/ui/GameCenterMainView;->q(Lcom/miui/gamecenter/ui/GameCenterMainView;Ld9/e;)V

    iget-object v3, p0, Lcom/miui/gamecenter/ui/GameCenterMainView$c;->a:Lcom/miui/gamecenter/ui/GameCenterMainView;

    invoke-static {v3}, Lcom/miui/gamecenter/ui/GameCenterMainView;->c(Lcom/miui/gamecenter/ui/GameCenterMainView;)Ld9/e;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v3, v2, v0}, Ld9/e;->a(Lb9/f$b;I)V

    :cond_7
    iget-object v3, p0, Lcom/miui/gamecenter/ui/GameCenterMainView$c;->a:Lcom/miui/gamecenter/ui/GameCenterMainView;

    invoke-static {v3}, Lcom/miui/gamecenter/ui/GameCenterMainView;->c(Lcom/miui/gamecenter/ui/GameCenterMainView;)Ld9/e;

    move-result-object v4

    goto :goto_1

    :cond_8
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/miui/gamecenter/ui/GameCenterMainView$c;->a:Lcom/miui/gamecenter/ui/GameCenterMainView;

    new-instance v1, Ld9/d;

    invoke-direct {v1, v0, p1}, Ld9/d;-><init>(Lcom/miui/gamecenter/ui/GameCenterMainView;Lb9/f;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
